#!/usr/bin/env python3
"""Move a World Rule Profile's version history into its migrations/ directory.

Recommendation R7 keeps the active profile to current law and gives each version
edge its own record. Adopting a new profile version writes its migration prose
back into the profile header, so this has to be re-runnable rather than a
one-off: run it after each adoption and the header returns to a pointer.

Guarantees:

  * Prose is relocated verbatim. Every block extracted from the header must
    appear byte-identically in exactly one record, and the run aborts without
    writing if that does not hold.
  * Metadata already authored for an edge is preserved. Records carry judged
    fields - fictional-time cost, whether rolls or an owner ruling are needed,
    the stored paths the prose names - and a re-run must not silently replace a
    considered value with a derived guess.
  * Derived values are conservative. A new edge gets `unstated` for fictional
    time unless its own prose says otherwise, and its touched paths are left
    empty for an author to fill in.

Usage:
    python tools/extract_profile_migrations.py --world worlds/gatefall
    python tools/extract_profile_migrations.py --world worlds/gatefall --check
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
        "Migration extraction FAILED (PyYAML is unavailable; install tools/requirements.txt).",
        file=sys.stderr,
    )
    sys.exit(2)

ARROW = "→"
REQUIRED = re.compile(rf"^\*\*Required (\d+\.\d+) {ARROW} (\d+\.\d+) migration\.\*\*")
TREATMENT = re.compile(rf"^\*\*(\d+\.\d+) {ARROW} (\d+\.\d+) compatibility treatment\.\*\*")
SUMMARY = re.compile(r"^Version (\d+\.\d+) remains the ")
SUPERSEDE = re.compile(r"^Profile (\d+\.\d+) supersedes (\d+\.\d+)'s ")
POINTER = re.compile(r"^\*\*Version history and migrations\.\*\*")
PROFILE_VERSION = re.compile(r"^\*\*Profile Version:\*\*[ \t]*(\S+)[ \t]*$", re.MULTILINE)

NO_TIME = (
    "consumes no fictional time",
    "consume no fictional time",
    "This treatment consumes no fictional time",
)
OWNER = ("ask the owner", "owner ruling", "owner-adjudication", "obtain an owner ruling")

POINTER_TEXT = (
    "**Version history and migrations.** Every transformation from Profile {first} "
    "forward to the active version lives in `{world}/migrations/`, one authoritative "
    "record per edge, declared by `{world}/migrations/INDEX.md`. Restoring a capture "
    "taken under Profile *V* runs each record from *V* forward to the active version "
    "in order and reads no other migration text; a current rule lookup reads none of "
    "them. Immutable checkpoints are never rewritten by a migration — the chain "
    "applies to mutable live state. Where a migration record and this profile disagree "
    "about present law, this profile governs: a migration record describes a "
    "transformation, not a standing rule."
)


def version_key(value: str) -> list[int]:
    return [int(part) for part in value.split(".")]


def classify(line: str):
    for pattern, kind in ((REQUIRED, "migration"), (TREATMENT, "treatment")):
        match = pattern.match(line)
        if match:
            return kind, match.group(1), match.group(2)
    match = SUMMARY.match(line)
    if match:
        return "summary", match.group(1), None
    match = SUPERSEDE.match(line)
    if match:
        return "supersede", match.group(1), match.group(2)
    if POINTER.match(line):
        return "pointer", None, None
    return None


def partition(profile_text: str):
    """Split the header's history region into blocks, retaining anything else.

    The region is bounded on both sides rather than running to end of file: it
    starts at the first history opener (or the pointer paragraph, if the header
    has already been extracted) and ends at the first `---` rule. Everything
    from that rule onward is the profile's body and is never touched.

    Anything inside the region that is not positively identified as history is
    *retained* and written back. Worlds do not all use the same history wording,
    and a paragraph this tool does not recognise must survive, not vanish.
    """
    lines = profile_text.split("\n")

    first_index = None
    for index, line in enumerate(lines):
        kind = classify(line)
        if kind:
            first_index = index
            break
    if first_index is None:
        return [], [], None, None

    stop_index = None
    for index in range(first_index, len(lines)):
        if lines[index].rstrip() == "---":
            stop_index = index
            break
    if stop_index is None:
        return [], [], first_index, None

    blocks: list[dict[str, Any]] = []
    retained: list[str] = []
    current: dict[str, Any] | None = None

    for paragraph in "\n".join(lines[first_index:stop_index]).split("\n\n"):
        if not paragraph.strip():
            continue
        head = paragraph.strip().split("\n")[0]
        kind = classify(head)
        if kind and kind[0] == "pointer":
            current = None
            continue
        if kind:
            if current:
                blocks.append(current)
            current = {"kind": kind[0], "a": kind[1], "b": kind[2], "lines": [paragraph.rstrip()]}
            continue
        # A bold paragraph that opens nothing is body prose that happens to sit
        # inside the region, not a continuation of the migration above it.
        if head.startswith("**") or current is None:
            if current:
                blocks.append(current)
                current = None
            retained.append(paragraph.rstrip())
            continue
        current["lines"].append("")
        current["lines"].append(paragraph.rstrip())
    if current:
        blocks.append(current)
    for block in blocks:
        block["text"] = "\n".join(block["lines"]).strip()
    return blocks, retained, first_index, stop_index


def existing_metadata(directory: Path) -> dict[tuple[str, str], dict[str, Any]]:
    found: dict[tuple[str, str], dict[str, Any]] = {}
    if not directory.is_dir():
        return found
    for path in directory.glob("*.md"):
        if path.name == "INDEX.md":
            continue
        block = re.search(r"```yaml\n(.*?)```", path.read_text(encoding="utf-8"), re.DOTALL)
        if not block:
            continue
        try:
            data = yaml.safe_load(block.group(1)).get("migration")
        except Exception:  # noqa: BLE001
            continue
        if isinstance(data, dict):
            found[(str(data["source_version"]), str(data["target_version"]))] = data
    return found


def derive(kind: str, text: str) -> dict[str, Any]:
    return {
        "classification": "required-migration" if kind == "migration" else "compatibility-treatment",
        "fictional_time_cost": "none" if any(p in text for p in NO_TIME) else "unstated",
        "requires_rolls": False,
        "requires_owner_ruling": "conditional" if any(p in text for p in OWNER) else "false",
        "immutable_checkpoint_policy": "byte-unchanged",
        "touched_state_paths": [],
        "validation": ["tools/validate_repository.ps1", "tools/validate_runtime_configuration.ps1"],
    }


def render_record(world: str, src: str, tgt: str, meta: dict[str, Any],
                  summary: str | None, body: str, supersede: str | None) -> str:
    name = f"{src}_to_{tgt}.md"
    required = meta["classification"] == "required-migration"
    paths = meta.get("touched_state_paths") or []
    rendered_paths = "\n".join(f"    - {p}" for p in paths) if paths else "    []"
    parts = [
        f"# Gatefall — Profile Migration {src} {ARROW} {tgt}"
        if world.endswith("gatefall")
        else f"# Profile Migration {src} {ARROW} {tgt}",
        "",
        f"**File:** `{world}/migrations/{name}`",
        "**Class:** World rule content (Decision 062): authoritative on behavior in its "
        "declared scope; owns no Persistent Object.",
        f"**World:** {world.split('/')[-1].capitalize()}",
        f"**Migration:** Profile {src} {ARROW} Profile {tgt}",
        f"**Classification:** {meta['classification']}",
        "**Status:** Historical migration record. It governs restoring a capture taken "
        f"under Profile {src} forward to Profile {tgt}, and nothing else. Current "
        f"mechanical law lives in `{world}/206_WORLD_RULE_PROFILE.md`.",
        "",
        "```yaml",
        "migration:",
        f'  source_version: "{src}"',
        f'  target_version: "{tgt}"',
        f"  classification: {meta['classification']}",
        f"  fictional_time_cost: {meta['fictional_time_cost']}",
        f"  requires_rolls: {'true' if meta['requires_rolls'] else 'false'}",
        f"  requires_owner_ruling: {meta['requires_owner_ruling']}",
        f"  immutable_checkpoint_policy: {meta['immutable_checkpoint_policy']}",
        "  touched_state_paths:",
        rendered_paths,
        "  validation:",
        *(f"    - {v}" for v in meta["validation"]),
        "```",
        "",
        "Preserved state is declared by the procedure prose below, which is the "
        "authority. The block above is routing metadata only and adds no rule.",
        "",
        "---",
        "",
    ]
    if summary:
        parts += [f"## What {tgt} changed", "", summary, ""]
    parts += ["## " + ("Migration procedure" if required else "Compatibility treatment"), "", body, ""]
    if supersede:
        parts += ["## Later supersession", "", supersede, ""]
    return "\n".join(parts).rstrip() + "\n"


def render_index(world: str, records: list[tuple[str, str, dict[str, Any], str]], active: str) -> str:
    rows = []
    for src, tgt, meta, name in records:
        cls = "required" if meta["classification"] == "required-migration" else "treatment"
        extra = []
        if meta["requires_rolls"] is True:
            extra.append("rolls")
        if str(meta["requires_owner_ruling"]) != "false":
            extra.append("owner ruling")
        rows.append(
            f"| {src} {ARROW} {tgt} | {cls} | {meta['fictional_time_cost']} | "
            f"{', '.join(extra) if extra else '—'} | `{name}` |"
        )
    lines = [
        f"# {world.split('/')[-1].capitalize()} — Profile Migration Index",
        "",
        f"**File:** `{world}/migrations/INDEX.md`",
        "**Class:** World rule content (Decision 062): authoritative on behavior in its "
        "declared scope; owns no Persistent Object.",
        f"**World:** {world.split('/')[-1].capitalize()}",
        f"**Active Profile:** {active}",
        f"**Chain:** {records[0][0]} {ARROW} {records[-1][1]}, contiguous, {len(records)} edges",
        "",
        "---",
        "",
        "# 1. What This Is",
        "",
        "The active World Rule Profile carries current mechanical law only. The version "
        "history that transforms an older capture into the active version lives here, "
        "one record per edge.",
        "",
        "Restoring a checkpoint captured under Profile `V` runs every record from `V` "
        "forward to the active version, in order, and reads no other migration text. A "
        "current rule lookup reads none of them.",
        "",
        "Each record is authoritative for its own edge. Where a record and the active "
        f"profile disagree about present law, the active profile governs {ARROW} a migration "
        "record describes a transformation, not a standing rule.",
        "",
        "---",
        "",
        "# 2. The Chain",
        "",
        "| Edge | Class | Fictional time | Requires | Record |",
        "|---|---|---|---|---|",
        *rows,
        "",
        "`fictional time` reports what the record itself states. `unstated` means the "
        "source prose declares no cost and none may be inferred.",
        "",
        "---",
        "",
        "# 3. Chain Rules",
        "",
        "1. The chain is directed and contiguous: every edge's target is the next edge's "
        "source, with no gap, branch, duplicate, or cycle.",
        "2. Exactly one edge terminates at the active profile version.",
        "3. A `required-migration` edge transforms stored state and must run. A "
        "`compatibility-treatment` edge requires no recomputation, but its prospective "
        "rules still apply from adoption forward.",
        "4. Immutable checkpoints are never rewritten by a migration. Restoration applies "
        "the chain to mutable live state.",
        "5. Adding a profile version adds exactly one record here and moves the active "
        "version pointer. Run `tools/extract_profile_migrations.py` after each adoption; "
        "migration prose is never left in the active profile.",
        "",
        "---",
        "",
        "# 4. Validation",
        "",
        "`tools/validate_runtime_configuration.ps1` checks that this index and the record "
        "set agree: the chain is contiguous and acyclic, every declared record exists, "
        "every record file present is declared, each record's YAML source/target matches "
        "its filename and its row, and the chain terminates at the profile's active "
        "version. It also fails if migration prose reappears in the active profile.",
        "",
    ]
    return "\n".join(lines).rstrip() + "\n"


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--world", required=True, help="e.g. worlds/gatefall")
    parser.add_argument("--repository-root", default=Path(__file__).resolve().parents[1])
    parser.add_argument("--check", action="store_true",
                        help="report what would change and exit non-zero if anything would")
    args = parser.parse_args()

    root = Path(args.repository_root).resolve()
    world = args.world.replace("\\", "/").strip("/")
    profile_path = root / world / "206_WORLD_RULE_PROFILE.md"
    if not profile_path.is_file():
        print(f"Migration extraction FAILED: no profile at {world}/206_WORLD_RULE_PROFILE.md")
        return 2
    out = root / world / "migrations"

    text = profile_path.read_text(encoding="utf-8")
    active_match = PROFILE_VERSION.search(text)
    if not active_match:
        print("Migration extraction FAILED: profile declares no Profile Version")
        return 2
    active = active_match.group(1)

    blocks, retained, first_index, stop_index = partition(text)
    if first_index is None:
        print(f"No migration prose in {world}/206_WORLD_RULE_PROFILE.md; header is already a pointer.")
        return 0
    if stop_index is None:
        print("Migration extraction FAILED: no '---' rule closes the header, so the "
              "history region has no end and the profile was left untouched.")
        return 1
    edges = {(b["a"], b["b"]): b for b in blocks if b["kind"] in ("migration", "treatment")}
    summaries = {b["a"]: b["text"] for b in blocks if b["kind"] == "summary"}
    supersedes = {b["b"]: b["text"] for b in blocks if b["kind"] == "supersede"}

    if not edges:
        print(f"No migration prose in {world}/206_WORLD_RULE_PROFILE.md; header is already a pointer.")
        return 0

    known = existing_metadata(out)
    ordered = sorted(edges, key=lambda e: version_key(e[0]))

    # Merge with any records already on disk so previously extracted edges keep
    # their prose and metadata even when the header no longer carries them.
    all_edges = {e: known[e] for e in known}
    for edge in ordered:
        all_edges.setdefault(edge, derive(edges[edge]["kind"], edges[edge]["text"]))

    new_edges = [e for e in ordered if e not in known]
    if args.check:
        print(f"{world}: {len(edges)} edge(s) still in the profile header; "
              f"{len(new_edges)} without an existing record.")
        for src, tgt in new_edges:
            print(f"  new: {src} {ARROW} {tgt}")
        return 1

    out.mkdir(parents=True, exist_ok=True)
    written = []
    for src, tgt in ordered:
        meta = all_edges[(src, tgt)]
        body = edges[(src, tgt)]["text"]
        record = render_record(world, src, tgt, meta, summaries.get(tgt), body, supersedes.get(tgt))
        (out / f"{src}_to_{tgt}.md").write_bytes(record.replace("\r\n", "\n").encode("utf-8"))
        written.append(f"{src}{ARROW}{tgt}")

    # Verify relocation before touching the profile.
    corpus = {p.name: p.read_text(encoding="utf-8") for p in out.glob("*.md")}
    unplaced = []
    for block in blocks:
        if block["kind"] == "pointer":
            continue
        hits = [n for n, body in corpus.items() if block["text"] in body]
        if len(hits) != 1:
            unplaced.append((block["text"].split("\n")[0][:70], len(hits)))
    if unplaced:
        print("Migration extraction FAILED: prose not relocated exactly once; profile untouched.")
        for head, count in unplaced:
            print(f"  {count} copies: {head}")
        return 1

    # Rebuild the index from every record on disk, not only this run's edges.
    records = []
    for path in out.glob("*.md"):
        if path.name == "INDEX.md":
            continue
        block = re.search(r"```yaml\n(.*?)```", path.read_text(encoding="utf-8"), re.DOTALL)
        data = yaml.safe_load(block.group(1))["migration"]
        records.append((str(data["source_version"]), str(data["target_version"]), data, path.name))
    records.sort(key=lambda r: version_key(r[0]))
    (out / "INDEX.md").write_bytes(
        render_index(world, records, active).replace("\r\n", "\n").encode("utf-8"))

    lines = text.split("\n")
    pointer = POINTER_TEXT.format(first=records[0][0], world=world)
    tail: list[str] = [pointer]
    for paragraph in retained:
        tail += ["", paragraph]
    rebuilt_lines = lines[:first_index] + tail + [""] + lines[stop_index:]
    rebuilt = "\n".join(rebuilt_lines)

    # A guard, because this operation deletes prose from an authoritative file.
    # The body after the header is preserved by construction; if the result is
    # nonetheless a fraction of the original, something is wrong and the write
    # must not happen.
    if len(rebuilt.encode()) < len(text.encode()) * 0.5:
        print("Migration extraction FAILED: the rebuilt profile is less than half its "
              f"original size ({len(text.encode())} -> {len(rebuilt.encode())} bytes). "
              "Refusing to write; the profile is untouched.")
        return 1

    profile_path.write_bytes(rebuilt.replace("\r\n", "\n").encode("utf-8"))

    print(f"relocated {len(written)} edge(s): {', '.join(written)}")
    print(f"index rebuilt over {len(records)} record(s); active profile {active}")
    if retained:
        print(f"retained {len(retained)} unrecognised paragraph(s) in the profile header")
    print(f"profile {len(text.encode())} -> {len(rebuilt.encode())} bytes")
    return 0


if __name__ == "__main__":
    sys.exit(main())
