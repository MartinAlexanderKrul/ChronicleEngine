#!/usr/bin/env python3
"""Measure Chronicle Engine runtime context surfaces against declared budgets."""

from __future__ import annotations

import argparse
import math
import re
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Any

import yaml

sys.dont_write_bytecode = True

from resolve_operation_plan import build_plan, github_slug, locate_startup
from validate_runtime_configuration import (
    load_single_fenced_yaml,
    normalize_repo_path,
    read_text,
    resolve_repo_path,
)


@dataclass(frozen=True)
class Contribution:
    label: str
    reason: str
    text: str

    @property
    def byte_count(self) -> int:
        return len(self.text.encode("utf-8"))

    @property
    def word_count(self) -> int:
        return len(re.findall(r"\S+", self.text))


def load_yaml(path: Path) -> dict[str, Any]:
    try:
        value = yaml.safe_load(read_text(path))
    except (OSError, yaml.YAMLError) as exc:
        raise ValueError(f"cannot load {path.as_posix()}: {exc}") from exc
    if not isinstance(value, dict):
        raise ValueError(f"{path.as_posix()} must contain a YAML mapping")
    return value


def heading_blocks(text: str) -> list[tuple[int, str, int, int]]:
    matches = list(re.finditer(r"^(#{1,6})\s+(.+?)\s*$", text, re.MULTILINE))
    blocks: list[tuple[int, str, int, int]] = []
    for index, match in enumerate(matches):
        level = len(match.group(1))
        end = len(text)
        for following in matches[index + 1 :]:
            if len(following.group(1)) <= level:
                end = following.start()
                break
        blocks.append((level, match.group(2), match.start(), end))
    return blocks


def select_heading(text: str, heading: str) -> str:
    matches = [block for block in heading_blocks(text) if block[1] == heading]
    if len(matches) != 1:
        raise ValueError(f"heading '{heading}' must resolve exactly once; found {len(matches)}")
    return text[matches[0][2] : matches[0][3]].rstrip() + "\n"


def select_anchor(text: str, anchor: str) -> str:
    matches = [block for block in heading_blocks(text) if github_slug(block[1]) == anchor]
    if len(matches) != 1:
        raise ValueError(f"anchor '{anchor}' must resolve exactly once; found {len(matches)}")
    return text[matches[0][2] : matches[0][3]].rstrip() + "\n"


def select_markdown_table(text: str, heading: str) -> str:
    section = select_heading(text, heading)
    tables = re.findall(r"(?m)(?:^\|.*\|\s*\r?\n){2,}", section)
    if len(tables) < 1:
        raise ValueError(f"heading '{heading}' contains no Markdown table")
    return tables[0].rstrip() + "\n"


def select_metadata(text: str, metadata: str) -> str:
    pattern = re.compile(
        rf"^\*\*{re.escape(metadata)}:\*\*[ \t]*.*$", re.MULTILINE | re.IGNORECASE
    )
    matches = pattern.findall(text)
    if len(matches) != 1:
        raise ValueError(
            f"metadata '{metadata}' must resolve exactly once; found {len(matches)}"
        )
    return matches[0] + "\n"


def select_object(text: str, object_id: str) -> str:
    fenced = re.findall(r"(?ms)^```[^\r\n]*\r?\n.*?^```\s*$", text)
    exact_id = re.compile(
        rf"(?m)^(?:id|object_id):[ \t]*[\"']?{re.escape(object_id)}[\"']?[ \t]*$"
    )
    matches = [block for block in fenced if exact_id.search(block)]
    if len(matches) == 1:
        return matches[0].rstrip() + "\n"
    heading_matches = [
        text[start:end]
        for _, _, start, end in heading_blocks(text)
        if object_id in text[start:end]
    ]
    if len(heading_matches) == 1:
        return heading_matches[0].rstrip() + "\n"
    raise ValueError(
        f"object '{object_id}' must resolve to one fenced block or heading section; "
        f"found {len(matches)} fenced and {len(heading_matches)} heading matches"
    )


def select_indented_field(text: str, path: str) -> str:
    lines = text.splitlines(keepends=True)
    parts = path.split(".")
    indent = (len(parts) - 1) * 2
    pattern = re.compile(rf"^{' ' * indent}{re.escape(parts[-1])}:")
    matches = [index for index, line in enumerate(lines) if pattern.match(line)]
    if len(matches) != 1:
        raise ValueError(f"field '{path}' must resolve exactly once; found {len(matches)}")
    selected_start = matches[0]
    selected_end = len(lines)
    for index in range(selected_start + 1, len(lines)):
        line = lines[index]
        if not line.strip():
            continue
        current_indent = len(line) - len(line.lstrip(" "))
        if current_indent <= indent:
            selected_end = index
            break
    return "".join(lines[selected_start:selected_end]).rstrip() + "\n"


def materialize(root: Path, selector: dict[str, Any]) -> Contribution:
    file_value = selector.get("file")
    if not isinstance(file_value, str):
        raise ValueError("context contributor has no file")
    normalized = normalize_repo_path(file_value)
    path = resolve_repo_path(root, normalized)
    if not path.is_file():
        raise ValueError(f"context contributor does not exist: {normalized}")
    text = read_text(path)
    label = normalized
    if selector.get("whole_file") is True or not any(
        key in selector
        for key in ("heading", "anchor", "markdown_table_under", "metadata", "object")
    ):
        selected = text
    elif isinstance(selector.get("heading"), str):
        value = selector["heading"]
        selected = select_heading(text, value)
        label += f"#{value}"
    elif isinstance(selector.get("anchor"), str):
        value = selector["anchor"]
        selected = select_anchor(text, value)
        label += f"#{value}"
    elif isinstance(selector.get("markdown_table_under"), str):
        value = selector["markdown_table_under"]
        selected = select_markdown_table(text, value)
        label += f"#{value}[table]"
    elif isinstance(selector.get("metadata"), str):
        value = selector["metadata"]
        selected = select_metadata(text, value)
        label += f"[metadata:{value}]"
    elif isinstance(selector.get("object"), str):
        value = selector["object"]
        selected = select_object(text, value)
        fields = selector.get("fields")
        if isinstance(fields, list) and fields:
            selected = "".join(
                select_indented_field(selected, field)
                for field in fields
                if isinstance(field, str)
            )
        label += f"[object:{value}]"
        if isinstance(fields, list) and fields:
            label += f"[fields:{len(fields)}]"
    else:
        raise ValueError(f"unsupported selector for {normalized}")
    return Contribution(label, str(selector.get("reason", "")), selected)


def estimate_tokens(byte_count: int, divisor: int) -> int:
    return math.ceil(byte_count / divisor)


def status(tokens: int, warning: int, failure: int) -> str:
    if tokens >= failure:
        return "FAIL"
    if tokens >= warning:
        return "WARN"
    return "PASS"


def ratchet_limit(baseline: int | None, allowance_percent: Any) -> int | None:
    """The growth ceiling a surface may reach before its baseline must be re-recorded.

    A fixed token ceiling cannot govern a surface whose cost legitimately grows:
    a Bearer with seventeen skills genuinely renders more than one with five, and
    every absolute number picked for today's character is overtaken by ordinary
    play. Twenty thousand was set for Gatefall readiness and passed within weeks.

    The ratchet governs the *rate* instead. Growth up to the allowance is
    accepted silently; beyond it the surface fails until someone re-records the
    baseline, which makes accepting the growth a deliberate act rather than a
    thing that happens quietly. Legitimate growth costs one line in the manifest;
    bloat costs a conversation.
    """
    if baseline is None or not isinstance(allowance_percent, (int, float)):
        return None
    if baseline <= 0:
        return None
    return int(baseline * (1 + float(allowance_percent) / 100.0))


def measure_group(
    name: str,
    contributors: list[Contribution],
    budget: dict[str, Any],
    divisor: int,
    baseline: int | None,
) -> dict[str, Any]:
    byte_count = sum(item.byte_count for item in contributors)
    word_count = sum(item.word_count for item in contributors)
    tokens = estimate_tokens(byte_count, divisor)
    warning = int(budget["warning_tokens"])
    failure = int(budget["failure_tokens"])
    outcome = status(tokens, warning, failure)

    limit = ratchet_limit(baseline, budget.get("growth_allowance_percent"))
    ratcheted = limit is not None and tokens > limit
    if ratcheted and outcome != "FAIL":
        outcome = "FAIL"

    return {
        "name": name,
        "bytes": byte_count,
        "words": word_count,
        "estimated_tokens": tokens,
        "warning_tokens": warning,
        "failure_tokens": failure,
        "status": outcome,
        "baseline_tokens": baseline,
        "delta_tokens": None if baseline is None else tokens - baseline,
        "ratchet_limit": limit,
        "ratcheted": ratcheted,
        "contributors": contributors,
    }


def static_group(
    root: Path, name: str, budget: dict[str, Any], divisor: int
) -> dict[str, Any]:
    raw = budget.get("contributors")
    if not isinstance(raw, list):
        raise ValueError(f"surface '{name}' contributors must be a list")
    contributors = [materialize(root, item) for item in raw if isinstance(item, dict)]
    baseline = budget.get("baseline_tokens")
    return measure_group(
        name,
        contributors,
        budget,
        divisor,
        int(baseline) if isinstance(baseline, int) else None,
    )


def plan_contributors(root: Path, plan: dict[str, Any]) -> list[Contribution]:
    result: list[Contribution] = []
    for item in plan.get("whole_files", []):
        if isinstance(item, dict):
            selector = dict(item)
            selector["whole_file"] = True
            result.append(materialize(root, selector))
    for item in plan.get("selectors", []):
        if isinstance(item, dict):
            result.append(materialize(root, item))
    return result


def campaign_plan(
    root: Path, campaign: str, operation: str
) -> tuple[dict[str, Any], list[str]]:
    startup = locate_startup(root, campaign)
    failures: list[str] = []
    config = load_single_fenced_yaml(startup, failures)
    if config is None:
        return {}, failures
    return build_plan(root, startup, config, operation)


def readiness_groups(
    root: Path,
    budget: dict[str, Any],
    divisor: int,
    campaigns: list[str],
    resident: Contribution,
) -> list[dict[str, Any]]:
    operation = str(budget.get("derive_operation", "continue"))
    baselines = budget.get("baseline_tokens_by_campaign", {})
    groups: list[dict[str, Any]] = []
    for campaign in campaigns:
        plan, failures = campaign_plan(root, campaign, operation)
        if failures:
            raise ValueError("; ".join(failures))
        contributors = plan_contributors(root, plan)
        if budget.get("include_resident") is True:
            contributors.insert(0, resident)
        baseline = baselines.get(campaign) if isinstance(baselines, dict) else None
        groups.append(
            measure_group(
                f"readiness:{campaign}",
                contributors,
                budget,
                divisor,
                int(baseline) if isinstance(baseline, int) else None,
            )
        )
    return groups


def fetched_groups(
    root: Path,
    budget: dict[str, Any],
    divisor: int,
    campaigns: list[str],
) -> list[dict[str, Any]]:
    baselines = budget.get("baseline_tokens_by_operation", {})
    requested: list[tuple[str, str]] = [("gatefall_pendragon_001", "save")]
    for campaign in campaigns:
        startup = locate_startup(root, campaign)
        failures: list[str] = []
        config = load_single_fenced_yaml(startup, failures)
        if config is None:
            raise ValueError("; ".join(failures))
        commands = config.get("diegetic_commands")
        if isinstance(commands, dict):
            requested.extend((campaign, operation) for operation in commands)
    groups: list[dict[str, Any]] = []
    for campaign, operation in requested:
        plan, failures = campaign_plan(root, campaign, operation)
        if failures:
            raise ValueError("; ".join(failures))
        key = f"{campaign}:{operation}"
        baseline = baselines.get(key) if isinstance(baselines, dict) else None
        exempt = budget.get("exempt_from_failure_ceiling")
        operation_budget = budget
        if isinstance(exempt, list) and key in exempt:
            # An operation the manifest exempts is governed by its baseline and
            # the ratchet instead of the shared ceiling. It is not unbudgeted:
            # growth past the allowance still fails.
            operation_budget = dict(budget)
            operation_budget["warning_tokens"] = int(budget["warning_tokens"])
            operation_budget["failure_tokens"] = sys.maxsize
        groups.append(
            measure_group(
                f"operation:{key}",
                plan_contributors(root, plan),
                operation_budget,
                divisor,
                int(baseline) if isinstance(baseline, int) else None,
            )
        )
    return groups


def measure_per_unit(root: Path, config: dict[str, Any]) -> list[dict[str, Any]]:
    """Cost per entry in a collection that legitimately grows in length.

    A total says nothing about whether growth is earned. `skills_known` holding
    seventeen skills should cost seventeen skills' worth of render data; when it
    also carried a per-use log it cost four times that, and no total could tell
    the two apart. Dividing by the entry count can: the per-entry figure is flat
    if the field holds only what it should, and climbs the moment narrative
    starts accumulating inside it, at any entry count.
    """
    checks = config.get("per_unit_budgets")
    results: list[dict[str, Any]] = []
    if not isinstance(checks, list):
        return results
    for check in checks:
        if not isinstance(check, dict):
            continue
        name = str(check.get("name", "unnamed"))
        path = resolve_repo_path(root, normalize_repo_path(str(check.get("file", ""))))
        field = str(check.get("field", ""))
        maximum = check.get("max_bytes_per_entry")
        if not path.is_file() or not field or not isinstance(maximum, int):
            results.append({"name": name, "status": "FAIL",
                            "detail": "per-unit budget is not fully declared"})
            continue
        section = select_indented_field(read_text(path), field)
        entries = [line for line in section.split("\n") if line.strip().startswith("- ")]
        if not entries:
            results.append({"name": name, "status": "FAIL",
                            "detail": f"no list entries found under '{field}'"})
            continue
        total = sum(len(line.encode("utf-8")) for line in entries)
        per_entry = total // len(entries)
        results.append({
            "name": name,
            "status": "FAIL" if per_entry > maximum else "PASS",
            "entries": len(entries),
            "bytes": total,
            "per_entry": per_entry,
            "max_bytes_per_entry": maximum,
            "reason": str(check.get("reason", "")),
        })
    return results


def render_per_unit(results: list[dict[str, Any]]) -> None:
    for item in results:
        if "per_entry" not in item:
            print(f"{item['status']:4} per-unit {item['name']}: {item.get('detail', '')}")
            continue
        print(
            f"{item['status']:4} per-unit {item['name']}: "
            f"{item['per_entry']} bytes/entry across {item['entries']} entries "
            f"({item['bytes']} bytes; max={item['max_bytes_per_entry']}/entry)"
        )
        if item["status"] == "FAIL" and item["reason"]:
            print(f"       {item['reason']}")


def render(groups: list[dict[str, Any]]) -> None:
    for group in groups:
        baseline = group["baseline_tokens"]
        delta = group["delta_tokens"]
        comparison = "baseline=n/a" if baseline is None else f"baseline={baseline} delta={delta:+d}"
        ceiling = group["failure_tokens"]
        limit = group.get("ratchet_limit")
        if ceiling >= sys.maxsize:
            fail_text = "fail=ratchet-only" + (f" at {limit}" if limit else "")
        else:
            fail_text = f"fail={ceiling}"
        print(
            f"{group['status']:4} {group['name']}: "
            f"{group['estimated_tokens']} tokens, {group['bytes']} bytes, "
            f"{group['words']} words ({comparison}; "
            f"warn={group['warning_tokens']}, {fail_text})"
        )
        if group.get("ratcheted"):
            print(
                f"       growth ratchet: {group['estimated_tokens']} tokens exceeds "
                f"{group['ratchet_limit']} (baseline {baseline} plus its allowance). "
                "If this growth is legitimate, re-record the baseline in "
                "system/RUNTIME_CONTEXT_BUDGETS.yaml; if it is not, find what grew."
            )
        for item in sorted(
            group["contributors"], key=lambda value: value.byte_count, reverse=True
        ):
            print(
                f"  - {estimate_tokens(item.byte_count, 4):5} tokens "
                f"{item.byte_count:7} bytes  {item.label}"
                + (f" — {item.reason}" if item.reason else "")
            )


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repository-root", default=Path(__file__).resolve().parents[1])
    parser.add_argument(
        "--budget-file", default="system/RUNTIME_CONTEXT_BUDGETS.yaml"
    )
    parser.add_argument("--campaign", action="append", dest="campaigns")
    parser.add_argument("--static-only", action="store_true")
    args = parser.parse_args()

    root = Path(args.repository_root).resolve()
    try:
        config = load_yaml(resolve_repo_path(root, args.budget_file))
        estimator = config["estimator"]
        divisor = int(estimator["divisor"])
        surfaces = config["surfaces"]
        resident_group = static_group(root, "resident", surfaces["resident"], divisor)
        groups = [
            resident_group,
            static_group(root, "bootstrap", surfaces["bootstrap"], divisor),
        ]
        if not args.static_only:
            campaigns = args.campaigns or sorted(
                path.parent.name
                for path in (root / "campaigns").glob("*/090_CAMPAIGN_STARTUP.md")
            )
            resident = resident_group["contributors"][0]
            groups.extend(
                readiness_groups(
                    root, surfaces["readiness"], divisor, campaigns, resident
                )
            )
            groups.extend(
                fetched_groups(
                    root, surfaces["fetched_operation"], divisor, campaigns
                )
            )
        render(groups)
        per_unit = measure_per_unit(root, config)
        render_per_unit(per_unit)
    except (KeyError, TypeError, ValueError, OSError) as exc:
        print(f"Runtime context measurement FAILED: {exc}", file=sys.stderr)
        return 2

    failed = [group for group in groups if group["status"] == "FAIL"]
    per_unit_failed = [item for item in per_unit if item["status"] == "FAIL"]
    if failed or per_unit_failed:
        parts = []
        if failed:
            parts.append(f"{len(failed)} surface(s) over budget")
        if per_unit_failed:
            parts.append(f"{len(per_unit_failed)} per-unit budget(s) exceeded")
        print(
            f"Runtime context measurement FAILED ({', '.join(parts)}).",
            file=sys.stderr,
        )
        return 1
    print("Runtime context measurement PASSED")
    return 0


if __name__ == "__main__":
    sys.exit(main())
