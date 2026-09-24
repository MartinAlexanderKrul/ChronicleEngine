#!/usr/bin/env python3
"""Seal a campaign's settled history into volumes, and rebase live records to what is true now.

Decision 094. A live ledger is read to answer "what is true now"; the history of
how it came to be true is read only when someone asks. Append-only authoring
mixes the two, so a record accretes dated narrative, a ledger header accretes a
note per save, and an "Active" section accretes things that closed weeks ago.
Every one of those is still correct history -- it is just in the wrong place,
and a reader pays for it on every load.

This tool moves such material, VERBATIM, into `sealed/<ledger-stem>.volNN.md`
inside the campaign. Nothing is deleted. A sealed volume is a canonical ledger
the campaign owns (Rules Section 13.1), captured by every checkpoint like any
other, and byte-frozen from the first checkpoint that captures it -- which
`tools/validate_repository.ps1` enforces by comparing the live volume against
each checkpoint's copy. So a volume may be written only while it is OPEN: no
checkpoint holds it yet. Once captured, the next pass opens the next number.

Subcommands:

  volume     Move a run of `## ` sections out of an append-only ledger
             (chronicle, changelog) into a volume, leaving a pointer.
  notes      Move a ledger Record block's per-save comment history into a
             volume, keeping the newest entry.
  sections   Move named `## `/bold-led sections (for example closed objectives)
             out of a prose ledger, leaving a one-line index row each.
  strip-metadata  Remove ruling-provenance asides ("owner ruling", "(Decision
             076)", "Corrected ..." notes) from live text, logging each in the
             volume and keeping every Event it cited.
  rewrite    Replace named prose sections with their current-truth text,
             sealing each old section verbatim.
  retire     Replace a record field with its current-truth text, sealing the
             old value. Every Event the old value cited and the new block no
             longer does is added to `moved_by_events`, so Decision 085's
             reference obligation survives the rewrite by construction.

Every subcommand re-parses each touched YAML block after writing and refuses
to write if a block stops parsing or an Event citation would be lost.

Usage:
    python tools/seal_campaign.py volume --campaign <dir> --ledger 160_CAMPAIGN_CHRONICLE.md \\
        --start '^## EVT-000056 ' --end '^## EVT-001001 ' --summary "..."
    python tools/seal_campaign.py notes --campaign <dir> --ledger 100_CHARACTER_SHEET.md
    python tools/seal_campaign.py sections --campaign <dir> --ledger 140_OBJECTIVES.md \\
        --ids OBJ-1 OBJ-5 --index-heading "Closed Objectives (sealed)"
    python tools/seal_campaign.py rewrite --campaign <dir> --ledger 140_OBJECTIVES.md --spec rewrite.yaml
    python tools/seal_campaign.py retire --campaign <dir> --spec retire.yaml

A `retire` spec is `retire: [{ledger, record, field, value, note}]`, where
`field` is dotted (`canonical_state.situation`) and a null `value` removes the
field. A `rewrite` spec is `rewrite: [{id, value, note}]`. The value is the
authored current truth; writing it is the owner's work or play's, never this
tool's.
"""

from __future__ import annotations

import argparse
import re
import sys
from datetime import date
from pathlib import Path

try:
    import yaml
except ModuleNotFoundError:
    print("Seal FAILED (PyYAML is unavailable; install tools/requirements.txt).", file=sys.stderr)
    sys.exit(2)

FENCE = re.compile(r"(?ms)^```yaml[ \t]*\n(.*?)^```[ \t]*$")
EVENT = re.compile(r"EVT-\d{6}")
VOLUME_NAME = re.compile(r"^(?P<stem>.+)\.vol(?P<number>\d{2})\.md$")
SEALED_DIR = "sealed"


class SealError(Exception):
    pass


# --------------------------------------------------------------------------- io

def read(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def write(path: Path, text: str) -> None:
    # BOM-less UTF-8, LF: the repository's line-ending gate (test_line_endings)
    # and Windows PowerShell 5.1 both depend on it.
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8", newline="\n") as handle:
        handle.write(text)


def captured(campaign: Path, volume: Path) -> list[str]:
    """Checkpoints that already hold this volume. Any at all freezes it."""
    saves = campaign / "saves"
    if not saves.is_dir():
        return []
    relative = volume.relative_to(campaign)
    return sorted(
        child.name for child in saves.iterdir()
        if child.is_dir() and (child / relative).is_file()
    )


def open_volume(campaign: Path, ledger: str) -> Path:
    """The ledger's open volume: the highest-numbered one no checkpoint holds,
    or the next number when every existing volume is already frozen."""
    stem = Path(ledger).stem
    sealed = campaign / SEALED_DIR
    numbers = []
    if sealed.is_dir():
        for child in sealed.iterdir():
            match = VOLUME_NAME.match(child.name)
            if match and match.group("stem") == stem:
                numbers.append(int(match.group("number")))
    if numbers:
        latest = sealed / f"{stem}.vol{max(numbers):02d}.md"
        if not captured(campaign, latest):
            return latest
    return sealed / f"{stem}.vol{(max(numbers) + 1 if numbers else 1):02d}.md"


def record_id(ledger_text: str) -> str:
    match = re.search(r"(?ms)^## Record\s*\n+```yaml\n.*?^id: (REC-\d{6})", ledger_text)
    return match.group(1) if match else "no Record block"


def volume_header(campaign: Path, ledger: str, ledger_text: str, volume: Path) -> str:
    number = VOLUME_NAME.match(volume.name).group("number")
    title = ledger_text.splitlines()[0].lstrip("# ").strip() if ledger_text else ledger
    return (
        f"# Sealed Volume {number} - {title}\n\n"
        f"**Parent ledger:** `{ledger}` (`{record_id(ledger_text)}`)\n"
        f"**Opened:** {date.today().isoformat()}\n"
        f"**Rule:** Decision 094; Rules Section 13.1\n\n"
        "This volume is canonical history moved here verbatim from its parent ledger. It is not live "
        "state: nothing here is read at readiness, and a Runtime opens it only by identifier or heading "
        "when a question needs the past. It is byte-frozen from the first checkpoint that captures it, "
        "and `tools/validate_repository.ps1` fails any later edit. A correction to anything below is a "
        "new Event in the live ledger, never an edit here.\n\n"
        "Retired record fields are held in `text` fences, not `yaml`, so they define no object: the live "
        "record is the only definition of its identifier.\n"
    )


def append_to_volume(campaign: Path, ledger: str, ledger_text: str, body: str) -> Path:
    volume = open_volume(campaign, ledger)
    frozen = captured(campaign, volume)
    if frozen:
        raise SealError(f"{volume} is held by {frozen[0]} and is frozen")
    existing = read(volume) if volume.is_file() else volume_header(campaign, ledger, ledger_text, volume)
    write(volume, existing.rstrip("\n") + "\n\n---\n\n" + body.strip("\n") + "\n")
    return volume


def fenced(text: str) -> str:
    """A `text` fence longer than any backtick run inside, so sealed prose
    that itself quotes a fence cannot close this one early."""
    longest = max((len(run) for run in re.findall(r"`+", text)), default=0)
    fence = "`" * max(3, longest + 1)
    return f"{fence}text\n{text.rstrip()}\n{fence}"


def link(campaign: Path, volume: Path) -> str:
    relative = volume.relative_to(campaign).as_posix()
    return f"[`{relative}`]({relative})"


def broken_blocks(text: str) -> dict[str, int]:
    """Each unparseable block, keyed by the first line that identifies it (its
    `id:` or its first key), with its line number. Keyed by identity rather
    than by text, so a block that was already broken does not read as newly
    broken merely because a seal edited text inside it."""
    broken = {}
    for ordinal, match in enumerate(FENCE.finditer(text)):
        try:
            yaml.safe_load(match.group(1))
        except yaml.YAMLError:
            body = match.group(1)
            ident = re.search(r"(?m)^id:\s*(\S+)", body)
            key = ident.group(1) if ident else (body.strip().split("\n", 1)[0] or f"block {ordinal}")
            broken[key] = text.count("\n", 0, match.start()) + 1
    return broken


def check_blocks(before: str, after: str, label: str) -> None:
    """Refuse a rewrite that breaks a block that parsed before it. A block that
    was already broken is the live ledger's own defect and is left for its
    owner: this tool moves text, it does not repair it."""
    new = set(broken_blocks(after)) - set(broken_blocks(before))
    if new:
        key = sorted(new)[0]
        raise SealError(f"{label}:{broken_blocks(after)[key]} ({key}) no longer parses after the rewrite")


def events_everywhere(campaign: Path, ledger: str, text: str) -> set[str]:
    return set(EVENT.findall(text))


# ---------------------------------------------------------------------- volume

def cmd_volume(args: argparse.Namespace) -> None:
    campaign = Path(args.campaign)
    path = campaign / args.ledger
    text = read(path)
    start = re.search(args.start, text, re.M)
    if not start:
        raise SealError(f"--start {args.start!r} matches nothing in {args.ledger}")
    if not text[start.start():].startswith("## "):
        raise SealError("--start must match a '## ' heading line")
    end_index = len(text)
    if args.end:
        end = re.compile(args.end, re.M).search(text, start.end())
        if not end:
            raise SealError(f"--end {args.end!r} matches nothing after --start")
        end_index = end.start()
    span = text[start.start():end_index]
    headings = re.findall(r"(?m)^## (.+)$", span)
    if not headings:
        raise SealError("the span holds no sections")

    body = f"## Sealed sections\n\n{args.summary.strip()}\n\n---\n\n{span.strip()}"
    volume = open_volume(campaign, args.ledger)
    pointer = (
        f"> **Sealed (Decision 094).** {len(headings)} sections, *{headings[0].strip()}* through "
        f"*{headings[-1].strip()}*, moved verbatim to {link(campaign, volume)}. "
        "Read them there by the same heading or identifier.\n\n"
    )
    if not args.end:
        pointer = pointer.rstrip("\n") + "\n"
    rebuilt = text[:start.start()] + pointer + text[end_index:]
    check_blocks(text, rebuilt, args.ledger)
    append_to_volume(campaign, args.ledger, text, body)
    write(path, rebuilt)
    print(f"sealed {len(headings)} sections of {args.ledger} into {volume.name}")


# ----------------------------------------------------------------------- notes

def record_block(text: str) -> re.Match[str]:
    match = re.search(r"(?ms)^## Record\s*\n+```yaml\n(.*?)^```", text)
    if not match:
        raise SealError("no '## Record' YAML block")
    return match


def cmd_notes(args: argparse.Namespace) -> None:
    campaign = Path(args.campaign)
    path = campaign / args.ledger
    text = read(path)
    block = record_block(text)
    lines = block.group(1).split("\n")

    # A note is a comment line at column zero and its `#   ` continuations.
    # The first note is the newest save's and stays; every later one moves.
    notes: list[list[str]] = []
    kept: list[str] = []
    for line in lines:
        if line.startswith("#"):
            continuation = line.startswith("#  ") and notes
            if continuation:
                notes[-1].append(line)
            else:
                notes.append([line])
            continue
        kept.append(line)
    if len(notes) <= args.keep:
        print(f"{args.ledger}: {len(notes)} notes, nothing to seal")
        return

    keep_notes, move_notes = notes[: args.keep], notes[args.keep:]
    moved_text = "\n".join("\n".join(note) for note in move_notes)

    # Events whose participation audits name this ledger's Record as the moved
    # record are satisfied only by the block citing them (Decision 085), and
    # the notes are usually where that citation lives. Whatever the notes cited
    # and the rest of the block does not is kept as a bare citation index --
    # about 14 bytes an Event, the same trade `moved_by_events` makes.
    remaining = "\n".join(line for line in lines if not line.startswith("#")) + \
        "\n".join("\n".join(note) for note in keep_notes)
    orphaned = sorted(set(EVENT.findall(moved_text)) - set(EVENT.findall(remaining)))
    index_lines = []
    if orphaned:
        index_lines.append("# Citation index (Decision 085): Events whose sealed notes cited this record.")
        row = "#"
        for event in orphaned:
            if len(row) + len(event) + 1 > 110:
                index_lines.append(row)
                row = "#"
            row += " " + event
        index_lines.append(row)

    # Rebuild: the kept notes go back where the first note was.
    first_note_line = next(i for i, line in enumerate(lines) if line.startswith("#"))
    before = [line for line in lines[:first_note_line]]
    after = [line for line in lines[first_note_line:] if not line.startswith("#")]
    rebuilt_block = "\n".join(before + ["\n".join(note) for note in keep_notes] +
                              [f"# Earlier per-save notes: sealed (Decision 094), see `{SEALED_DIR}/`."] +
                              index_lines + after)
    rebuilt = text[:block.start(1)] + rebuilt_block + text[block.end(1):]

    lost = events_everywhere(campaign, args.ledger, text) - events_everywhere(campaign, args.ledger, rebuilt)
    if lost:
        raise SealError(f"{args.ledger}: {len(lost)} Event citations would be lost: {sorted(lost)[:5]}")
    body = (
        f"## Record block notes - `{record_id(text)}`\n\n"
        f"{len(move_notes)} per-save notes from the `## Record` block of `{args.ledger}`, oldest last, "
        "moved verbatim. They summarise saves `170_CHANGELOG.md` records in full.\n\n"
        f"{fenced(moved_text)}"
    )
    check_blocks(text, rebuilt, args.ledger)
    volume = append_to_volume(campaign, args.ledger, text, body)
    write(path, rebuilt)
    print(f"{args.ledger}: sealed {len(move_notes)} notes into {volume.name}; "
          f"{len(orphaned)} Event citations kept as an index")


# -------------------------------------------------------------------- sections

def section_spans(text: str, ids: list[str]) -> list[tuple[str, int, int]]:
    """Each id's span: from its `## ID` heading or `**ID` paragraph to the next
    such marker or `## ` heading."""
    marker = re.compile(r"(?m)^(?:## |\*\*)(?P<id>[A-Z]{3}-\d+)\b")
    boundary = re.compile(r"(?m)^(?:## |\*\*[A-Z]{3}-\d+\b)")
    spans = []
    for oid in ids:
        found = [m for m in marker.finditer(text) if m.group("id") == oid]
        if len(found) != 1:
            raise SealError(f"{oid}: expected one section marker, found {len(found)}")
        start = found[0].start()
        nxt = boundary.search(text, found[0].end())
        end = nxt.start() if nxt else len(text)
        # Leave a trailing `---` separator with the section that follows.
        spans.append((oid, start, end))
    return sorted(spans, key=lambda s: s[1])


def section_title(chunk: str) -> str:
    first = chunk.strip().splitlines()[0]
    first = re.sub(r"^(## |\*\*)", "", first).rstrip("*").strip()
    first = re.sub(r"^[A-Z]{3}-\d+\s*[-\u2013\u2014]\s*", "", first)
    return first.rstrip(".*").strip()


def cmd_sections(args: argparse.Namespace) -> None:
    campaign = Path(args.campaign)
    path = campaign / args.ledger
    text = read(path)
    spans = section_spans(text, args.ids)
    chunks = [(oid, text[s:e]) for oid, s, e in spans]

    rebuilt = text
    for oid, s, e in reversed(spans):
        rebuilt = rebuilt[:s] + rebuilt[e:]
    rebuilt = re.sub(r"\n(?:---\n\s*){2,}", "\n---\n\n", rebuilt)

    body = f"## Sealed sections\n\n{args.summary.strip()}\n\n" + "\n\n".join(
        c.strip() for _, c in chunks)
    volume = open_volume(campaign, args.ledger)

    rows = "\n".join(
        f"- `{oid}` - {section_title(chunk)[:160]}" for oid, chunk in chunks)
    heading = f"## {args.index_heading}"
    index = (f"{heading}\n\nSettled; each is held verbatim in {link(campaign, volume)} "
             "and read there by identifier (Decision 094).\n\n" + rows + "\n")
    if heading in rebuilt:
        rebuilt = rebuilt.replace(heading + "\n", heading + "\n", 1)
        position = rebuilt.index(heading)
        nxt = re.compile(r"(?m)^## ").search(rebuilt, position + len(heading))
        end = nxt.start() if nxt else len(rebuilt)
        rebuilt = rebuilt[:end].rstrip("\n") + "\n" + "\n" + index.split("\n\n", 2)[2] + "\n" + rebuilt[end:]
    else:
        rebuilt = rebuilt.rstrip("\n") + "\n\n---\n\n" + index
    check_blocks(text, rebuilt, args.ledger)
    append_to_volume(campaign, args.ledger, text, body)
    write(path, rebuilt)
    print(f"{args.ledger}: sealed {len(chunks)} sections into {volume.name}")


def cmd_rewrite(args: argparse.Namespace) -> None:
    """Replace named prose sections with their current-truth text, sealing
    each old section verbatim. The spec is YAML: `rewrite: [{id, value, note}]`."""
    campaign = Path(args.campaign)
    path = campaign / args.ledger
    text = read(path)
    original = text
    spec = yaml.safe_load(read(Path(args.spec)))["rewrite"]
    bodies = []
    for item in spec:
        (oid, start, end), = section_spans(text, [item["id"]])
        old = text[start:end]
        new = item["value"].rstrip("\n") + "\n\n"
        lost = sorted(set(EVENT.findall(old)) - set(EVENT.findall(new)))
        bodies.append(f"## {oid} - superseded text\n\n{item.get('note', '').strip()}\n\n{fenced(old)}")
        text = text[:start] + new + text[end:]
        print(f"{args.ledger} {oid}: {len(old.encode())} -> {len(new.encode())} bytes; "
              f"{len(lost)} Events now cited only in the sealed text")
    check_blocks(original, text, args.ledger)
    volume = append_to_volume(campaign, args.ledger, original, "\n\n".join(bodies))
    write(path, text)
    print(f"{args.ledger}: {len(spec)} sections rewritten; old text sealed into {volume.name}")


# ------------------------------------------------------------ strip-metadata

# Ruling provenance and record-keeping asides: text about how a fact came to be
# recorded, not the fact. The owner's rule (2026-09-24): notes and data are never
# trimmed; metadata such as "ratified at Event X" or "per the owner's ruling" is.
# Each pattern is narrow on purpose -- it names the aside's own wording -- so a
# sentence of play guidance or a channel constraint cannot match by accident.
METADATA_RULES = (
    ("ruling aside", r" ?\((?:ratified |ruled |confirmed )?(?:by |per |on |at )?(?:an? |the )?"
                     r"(?:owner|player|author)(?:'s)?[- ](?:ruling|ruled|confirmed|caught|flagged|instruction|direction)\b"
                     r"[^()\n]{0,120}\)"),
    ("ruled-at aside", r" ?\((?:ruled|ratified|re-ruled)(?: at| in| by)? `EVT-\d{6}`[^()\n]{0,40}\)"),
    ("decision tag", r" ?\((?:under )?Decisions? \d{3}(?:(?:, | and | ?/ ?)\d{3})*\)"),
    ("characterization label", r"Characteri[sz]ation (?:first|break)(?: under Decision \d{3})?(?: \(Decision \d{3}\))?"
                               r"(?:, and a real one)?:\s*"),
    ("authoring preamble", r"Authored \d{4}-\d\d-\d\d under Decision \d{3}(?: \([^()\n]{0,120}\))?,? ?"),
    ("correction note", r" ?(?<!\*)\*{1,2}Corrected \d{4}-\d\d-\d\d[^*\n]{0,600}\*{1,3}"),
    ("transcription aside", r" ?\((?:[Tt]ranscribed|[Dd]ischarged) (?:in|into) (?:Profile|`)[^()\n]{0,80}\)"),
    ("caught aside", r" ?\((?:player-caught|owner-flagged|caught by the player)[^()\n]{0,80}\)"),
)


def strip_metadata(text: str) -> tuple[str, list[tuple[str, str]]]:
    removed: list[tuple[str, str]] = []
    for name, pattern in METADATA_RULES:
        def replace(match: re.Match[str], name: str = name) -> str:
            removed.append((name, match.group(0).strip()))
            # The aside goes; any Event it cited stays, as a bare citation.
            cited = EVENT.findall(match.group(0))
            return f" ({' '.join(f'`{e}`' for e in cited)})" if cited else ""
        # Comment lines are the ledger's own record-keeping (Record notes,
        # citation indexes) and are never canon text; they are left alone.
        text = "\n".join(
            line if line.lstrip().startswith("#") else re.sub(pattern, replace, line)
            for line in text.split("\n")
        )
    return text, removed


def cmd_strip(args: argparse.Namespace) -> None:
    campaign = Path(args.campaign)
    for ledger in args.ledgers:
        path = campaign / ledger
        original = read(path)
        text, removed = strip_metadata(original)
        if not removed:
            print(f"{ledger}: no metadata asides")
            continue
        lost = set(EVENT.findall(original)) - set(EVENT.findall(text))
        if lost:
            raise SealError(f"{ledger}: stripping would lose Event citations {sorted(lost)[:5]}")
        check_blocks(original, text, ledger)
        rows = "\n".join(f"- *{name}:* {fragment}" for name, fragment in removed)
        body = (f"## Stripped metadata asides\n\n{len(removed)} ruling-provenance and record-keeping "
                "asides removed from the live ledger's text at the owner's direction, kept here "
                "verbatim. Every Event they cited is still cited in place.\n\n" + rows)
        volume = append_to_volume(campaign, ledger, original, body)
        write(path, text)
        print(f"{ledger}: {len(removed)} asides stripped; logged in {volume.name}")


# ---------------------------------------------------------------------- retire

def locate_record(text: str, rid: str) -> re.Match[str]:
    found = [m for m in FENCE.finditer(text) if re.search(rf"(?m)^id: {re.escape(rid)}\s*$", m.group(1))]
    if len(found) != 1:
        raise SealError(f"{rid}: expected one object block, found {len(found)}")
    return found[0]


def field_span(block: str, dotted: str) -> tuple[int, int, int]:
    """(start, end, indent) of a dotted field inside a block, from the parser's
    own node marks. A line scanner cannot do this: a double-quoted scalar may
    continue at the parent's indentation, which PyYAML accepts and which this
    corpus uses, so indentation does not mark where a value ends."""
    node = yaml.compose(block)
    for key in dotted.split("."):
        if not isinstance(node, yaml.MappingNode):
            raise SealError(f"field {dotted!r}: {key!r} is not under a mapping")
        found = [(k, v) for k, v in node.value if isinstance(k, yaml.ScalarNode) and k.value == key]
        if len(found) != 1:
            raise SealError(f"field {dotted!r} not found")
        key_node, node = found[0]
    start = block.rfind("\n", 0, key_node.start_mark.index) + 1
    end = node.end_mark.index
    # A block scalar's end mark sits at the start of the next line already; a
    # flow scalar's sits on its closing quote, so run to the end of that line.
    if end > 0 and block[end - 1] != "\n":
        newline = block.find("\n", end)
        end = len(block) if newline == -1 else newline + 1
    # Trailing blank lines belong to the gap, not the value.
    while end > start and block[start:end].endswith("\n\n"):
        end -= 1
    return start, end, key_node.start_mark.column


def render_value(key: str, indent: int, value: str) -> str:
    pad = " " * indent
    body = value.strip("\n")
    inner = "\n".join((pad + "  " + line) if line.strip() else "" for line in body.split("\n"))
    return f"{pad}{key}: |-\n{inner}\n"


def add_citations(block: str, missing: list[str]) -> str:
    """Append Event citations to the record's existing `moved_by_events`,
    wherever it lives (top level or under `canonical_state`), in the style it
    already uses; create a top-level one only when the record has none."""
    if not missing:
        return block
    cites = " ".join(f"`{e}`" for e in missing)
    for dotted in ("moved_by_events", "canonical_state.moved_by_events"):
        try:
            start, end, indent = field_span(block, dotted)
        except SealError:
            continue
        field = block[start:end]
        head, _, rest = field.partition(":")
        rest_first = rest.split("\n", 1)[0].strip()
        if rest_first[:1] in ('"', "'") and rest_first.endswith(rest_first[0]) and len(rest_first) > 1 \
                and field.rstrip("\n").count("\n") == 0:
            quote = rest_first[0]
            rebuilt = f"{head}: {rest_first[:-1].rstrip()} {cites}{quote}\n"
        elif rest_first[:1] == '"' and field.rstrip().endswith('"') and not field.rstrip().endswith('\\"'):
            # A multi-line double-quoted scalar: the citations go inside the
            # closing quote, which is where the index already ends.
            body = field.rstrip()
            rebuilt = body[:-1].rstrip() + " " + cites + '"\n'
        elif rest_first[:1] in (">", "|"):
            lines = field.rstrip("\n").split("\n")
            content = [line for line in lines[1:] if line.strip()]
            pad = content[0][: len(content[0]) - len(content[0].lstrip(" "))] if content else " " * (indent + 2)
            rebuilt = field.rstrip("\n") + "\n" + pad + cites + "\n"
        else:
            raise SealError(f"moved_by_events at {dotted} is in a style this tool does not extend")
        return block[:start] + rebuilt + block[end:]
    return block.rstrip("\n") + f'\nmoved_by_events: "{cites}"\n'


def cmd_retire(args: argparse.Namespace) -> None:
    campaign = Path(args.campaign)
    spec = yaml.safe_load(read(Path(args.spec)))
    by_ledger: dict[str, list[dict]] = {}
    for item in spec["retire"]:
        by_ledger.setdefault(item["ledger"], []).append(item)

    for ledger, items in by_ledger.items():
        path = campaign / ledger
        text = read(path)
        original = text
        sealed_bodies = []
        for item in items:
            rid, dotted = item["record"], item["field"]
            match = locate_record(text, rid)
            block = match.group(1)
            s, e, indent = field_span(block, dotted)
            old = block[s:e]
            key = dotted.split(".")[-1]
            new_field = render_value(key, indent, item["value"]) if item.get("value") is not None else ""
            new_block = block[:s] + new_field + block[e:]
            cited_before = set(EVENT.findall(block))
            cited_after = set(EVENT.findall(new_block))
            missing = sorted(cited_before - cited_after)
            new_block = add_citations(new_block, missing)
            try:
                yaml.safe_load(new_block)
            except yaml.YAMLError as error:
                raise SealError(f"{rid}.{dotted}: rewritten block does not parse: {error}") from error
            if cited_before - set(EVENT.findall(new_block)):
                raise SealError(f"{rid}.{dotted}: citations lost")
            text = text[:match.start(1)] + new_block + text[match.end(1):]
            sealed_bodies.append(
                f"## {rid} - `{dotted}`\n\n"
                f"{item.get('note', 'Superseded history retired; the live value holds what is true now.').strip()}\n\n"
                f"{fenced(old)}")
            print(f"{ledger} {rid}.{dotted}: {len(old.encode())} -> {len(new_field.encode())} bytes, "
                  f"{len(missing)} citations indexed")
        check_blocks(original, text, ledger)
        volume = append_to_volume(campaign, ledger, original, "\n\n".join(sealed_bodies))
        write(path, text)
        print(f"{ledger}: {len(items)} fields sealed into {volume.name}")


# ------------------------------------------------------------------------ main

def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = parser.add_subparsers(dest="command", required=True)

    p = sub.add_parser("volume")
    p.add_argument("--campaign", required=True)
    p.add_argument("--ledger", required=True)
    p.add_argument("--start", required=True)
    p.add_argument("--end")
    p.add_argument("--summary", required=True)
    p.set_defaults(func=cmd_volume)

    p = sub.add_parser("notes")
    p.add_argument("--campaign", required=True)
    p.add_argument("--ledger", required=True)
    p.add_argument("--keep", type=int, default=1)
    p.set_defaults(func=cmd_notes)

    p = sub.add_parser("sections")
    p.add_argument("--campaign", required=True)
    p.add_argument("--ledger", required=True)
    p.add_argument("--ids", nargs="+", required=True)
    p.add_argument("--index-heading", required=True)
    p.add_argument("--summary", required=True)
    p.set_defaults(func=cmd_sections)

    p = sub.add_parser("rewrite")
    p.add_argument("--campaign", required=True)
    p.add_argument("--ledger", required=True)
    p.add_argument("--spec", required=True)
    p.set_defaults(func=cmd_rewrite)

    p = sub.add_parser("strip-metadata")
    p.add_argument("--campaign", required=True)
    p.add_argument("--ledgers", nargs="+", required=True)
    p.set_defaults(func=cmd_strip)

    p = sub.add_parser("retire")
    p.add_argument("--campaign", required=True)
    p.add_argument("--spec", required=True)
    p.set_defaults(func=cmd_retire)

    args = parser.parse_args()
    try:
        args.func(args)
    except SealError as error:
        print(f"Seal FAILED: {error}", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
