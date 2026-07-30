"""Parse every live Persistent Object Block with a strict YAML parser.

R10 compatibility step 1: report what a real parser rejects that the regex
scanner tolerates, so the switch is made against evidence. Read-only.

Reports what a real YAML parser rejects that the regex scanner tolerates, so
the switch is made against evidence rather than optimism. Read-only.
"""
from __future__ import annotations

import re
import sys
from collections import Counter
from pathlib import Path

import yaml

REPO = Path(__file__).resolve().parents[1]
FENCE = re.compile(r"(?ms)^```ya?ml[ \t]*\r?\n(.*?)^```[ \t]*$")
# A Persistent Object Block is a fenced YAML block carrying an id: line.
ID_LINE = re.compile(r"(?m)^[ \t]*id:[ \t]*\S+")


class StrictLoader(yaml.SafeLoader):
    pass


def _no_duplicates(loader, node, deep=False):
    mapping = {}
    for key_node, value_node in node.value:
        key = loader.construct_object(key_node, deep=deep)
        if key in mapping:
            raise yaml.constructor.ConstructorError(
                "while constructing a mapping", node.start_mark,
                f"found duplicate key {key!r}", key_node.start_mark)
        mapping[key] = loader.construct_object(value_node, deep=deep)
    return mapping


StrictLoader.add_constructor(
    yaml.resolver.BaseResolver.DEFAULT_MAPPING_TAG, _no_duplicates)


def live_markdown() -> list[Path]:
    out = []
    for base in ("campaigns", "worlds", "system", "engine", "docs", "templates"):
        root = REPO / base
        if not root.is_dir():
            continue
        for path in root.rglob("*.md"):
            rel = path.relative_to(REPO).as_posix()
            if "/saves/" in rel or "/.saves/" in rel:
                continue
            out.append(path)
    return sorted(out)


def main() -> int:
    files = live_markdown()
    total_fences = 0
    object_blocks = 0
    failures: list[tuple[str, int, str]] = []
    reasons: Counter[str] = Counter()
    top_types: Counter[str] = Counter()
    multi_id = []

    for path in files:
        rel = path.relative_to(REPO).as_posix()
        text = path.read_text(encoding="utf-8")
        for match in FENCE.finditer(text):
            total_fences += 1
            body = match.group(1)
            line_no = text[: match.start()].count("\n") + 1
            is_object = bool(ID_LINE.search(body))
            if is_object:
                object_blocks += 1
                if len(ID_LINE.findall(body)) > 1:
                    multi_id.append((rel, line_no, len(ID_LINE.findall(body))))
            try:
                data = yaml.load(body, Loader=StrictLoader)
            except Exception as exc:  # noqa: BLE001 - surveying every failure kind
                kind = type(exc).__name__
                first = str(exc).strip().split("\n")[0]
                reasons[f"{kind}: {first[:70]}"] += 1
                failures.append((rel, line_no, f"{kind}: {first[:90]}"))
                continue
            top_types[type(data).__name__] += 1

    print(f"live markdown files : {len(files)}")
    print(f"fenced yaml blocks  : {total_fences}")
    print(f"  carrying id:      : {object_blocks}")
    print(f"top-level types     : {dict(top_types)}")
    print(f"parse failures      : {len(failures)}")
    print()
    if reasons:
        print("failure kinds:")
        for reason, count in reasons.most_common():
            print(f"  {count:>4}  {reason}")
        print()
        print("first 15 failing blocks:")
        for rel, line, why in failures[:15]:
            print(f"  {rel}:{line}  {why}")
        print()
    if multi_id:
        print(f"blocks with more than one id: ({len(multi_id)}):")
        for rel, line, count in multi_id[:10]:
            print(f"  {rel}:{line}  {count} ids")
    else:
        print("blocks with more than one id: none")
    return 0


if __name__ == "__main__":
    sys.exit(main())
