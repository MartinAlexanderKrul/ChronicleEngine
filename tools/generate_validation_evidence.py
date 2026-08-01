"""Generate the derivable half of the Version 0.3 validation evidence record.

Version 0.3 postmortem, Finding 4: operational metadata decays wherever nothing
reads it. The prototype log and capability matrix drifted twenty-eight
checkpoints and five decisions behind live state -- inside the documents the
postmortem itself depends on -- while the worlds-and-campaigns index and the
campaign cast roster, both generated and checked, never drifted at all.

So this applies that pattern to the validation record, and only to the half it
can honestly own. Checkpoint counts, ranges, schema partitions, freeze-status
partitions and the latest capture's own metadata are all derivable from the
save manifests. Verdicts, evidence classes and assessment prose are not: a
generator that emitted those would be authoritative and wrong, which is the
failure mode Decision 071 already recorded when the same question was asked of
the worlds-and-campaigns index.

The generated block is delimited by HTML comment markers and replaced in place.
Everything outside the markers is hand-written and never touched.
"""

from __future__ import annotations

import argparse
import pathlib
import re
import sys

BEGIN = "<!-- BEGIN GENERATED: evidence-state -->"
END = "<!-- END GENERATED: evidence-state -->"

GENERATOR = "tools/generate_validation_evidence.ps1"


def read(path: pathlib.Path) -> str:
    return path.read_text(encoding="utf-8")


def manifest_fields(text: str) -> dict[str, str]:
    """Pull the manifest fields this record reports.

    The manifest is fenced YAML with a known shape (Decision 072). A structured
    parse would be better, but the four fields below are unambiguous by key and
    this keeps the generator dependency-free.
    """
    out: dict[str, str] = {}

    schema = re.search(r"(?m)^\s*campaign_schema:\s*'?\"?([0-9.]+)", text)
    if schema:
        out["schema"] = schema.group(1)

    # `version` and `freeze_status` sit under `world_rule_profile`; take the
    # first of each, which is that block. A capture predating the freeze
    # contract has neither, and reports as none rather than being skipped.
    version = re.search(r"(?m)^\s{4}version:\s*'?\"?([0-9.]+)", text)
    if version:
        out["profile"] = version.group(1)

    freeze = re.search(r"(?m)^\s*freeze_status:\s*'?\"?([a-z-]+)", text)
    if freeze:
        out["freeze"] = freeze.group(1)

    parent = re.search(r"(?m)^\s*parent_save:\s*'?\"?([A-Za-z0-9_]+)", text)
    if parent:
        out["parent"] = parent.group(1)

    source = re.search(r"(?m)^\s*source:\s*'?\"?(EVT-\d{6})", text)
    if source:
        out["source"] = source.group(1)

    kind = re.search(r"(?m)^\s*checkpoint_type:\s*'?\"?([a-z-]+)", text)
    if kind:
        out["kind"] = kind.group(1)

    return out


def partition(pairs: list[tuple[str, str]]) -> list[tuple[str, str, str, int]]:
    """Collapse an ordered (checkpoint, value) list into contiguous runs.

    Runs rather than counts, because the interesting property of this record is
    that the captures partition *without gaps* -- a schema appearing, being
    superseded, then reappearing would be a migration defect, and a run-based
    view shows it where a tally would hide it.
    """
    runs: list[tuple[str, str, str, int]] = []
    for name, value in pairs:
        if runs and runs[-1][0] == value:
            label, first, _last, count = runs[-1]
            runs[-1] = (label, first, name, count + 1)
        else:
            runs.append((value, name, name, 1))
    return runs


def render(campaign: str, root: pathlib.Path) -> str:
    saves = root / "campaigns" / campaign / "saves"
    directories = sorted(d for d in saves.iterdir() if d.is_dir())

    rows: list[tuple[str, dict[str, str]]] = []
    for directory in directories:
        manifest = directory / "900_SAVE_MANIFEST.md"
        if not manifest.is_file():
            continue
        rows.append((directory.name, manifest_fields(read(manifest))))

    if not rows:
        raise SystemExit(f"No save manifests found under {saves}")

    short = [name.replace("900_CHECKPOINT_", "") for name, _ in rows]
    lines: list[str] = [
        BEGIN,
        "",
        f"*Derived by `{GENERATOR}` from the campaign's own save manifests. "
        "Do not edit inside the markers; edit the manifests and regenerate. "
        "Verdicts, evidence classes and assessment prose are deliberately not "
        "generated — they are judgment and live in the hand-written sections.*",
        "",
        f"**Checkpoints:** {len(rows)} "
        f"(`900_CHECKPOINT_{short[0]}`–`900_CHECKPOINT_{short[-1]}`)",
        "",
        "**Data Model schema by capture**",
        "",
        "| Schema | Checkpoints | Count |",
        "|---|---|---:|",
    ]

    for value, first, last, count in partition(
        [(s, f.get("schema", "none")) for s, f in zip(short, [r[1] for r in rows])]
    ):
        span = first if first == last else f"{first}–{last}"
        lines.append(f"| {value} | {span} | {count} |")

    lines += [
        "",
        "**World Rule Profile freeze status by capture**",
        "",
        "| Freeze status | Checkpoints | Count |",
        "|---|---|---:|",
    ]

    for value, first, last, count in partition(
        [(s, f.get("freeze", "none")) for s, f in zip(short, [r[1] for r in rows])]
    ):
        span = first if first == last else f"{first}–{last}"
        lines.append(f"| {value} | {span} | {count} |")

    latest_name, latest = rows[-1]
    lines += [
        "",
        f"**Latest capture:** `{latest_name}` — "
        f"kind `{latest.get('kind', 'none')}`, "
        f"profile {latest.get('profile', 'none')} "
        f"({latest.get('freeze', 'none')}), "
        f"schema {latest.get('schema', 'none')}, "
        f"parent `{latest.get('parent', 'none')}`, "
        f"source `{latest.get('source', 'none')}`.",
        "",
        END,
    ]
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repository-root", required=True)
    parser.add_argument("--campaign", default="gatefall_pendragon_001")
    parser.add_argument(
        "--target",
        default="docs/430_RUNTIME_PERSISTENCE_VALIDATION/432_GATEFALL_PROTOTYPE_LOG.md",
    )
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()

    root = pathlib.Path(args.repository_root).resolve()
    target = root / args.target
    if not target.is_file():
        print(f"Validation evidence target not found: {args.target}")
        return 2

    text = read(target)
    if BEGIN not in text or END not in text:
        print(
            f"{args.target} carries no generated evidence-state block. "
            f"Insert the {BEGIN} / {END} markers where it should appear."
        )
        return 2

    block = render(args.campaign, root)
    pattern = re.compile(
        re.escape(BEGIN) + r".*?" + re.escape(END), re.DOTALL
    )
    updated = pattern.sub(lambda _: block, text, count=1)

    if args.check:
        if updated != text:
            print(
                f"{args.target} evidence-state block is stale. "
                f"Run {GENERATOR} to regenerate it."
            )
            return 1
        print(f"Validation evidence block is synchronized ({args.campaign}).")
        return 0

    if updated != text:
        target.write_text(updated, encoding="utf-8", newline="\n")
        print(f"Regenerated the evidence-state block in {args.target}.")
    else:
        print(f"Evidence-state block already current in {args.target}.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
