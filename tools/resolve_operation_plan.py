#!/usr/bin/env python3
"""Derive a bounded Chronicle Engine operation plan from existing startup metadata."""

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path
from typing import Any

import yaml

sys.dont_write_bytecode = True

from validate_runtime_configuration import (
    find_character,
    load_single_fenced_yaml,
    normalize_repo_path,
    read_text,
    resolve_repo_path,
)


def heading_matches(path: Path, heading: str) -> int:
    return len(
        re.findall(rf"^#{{1,6}}\s+{re.escape(heading)}\s*$", read_text(path), re.MULTILINE)
    )


def github_slug(heading: str) -> str:
    value = heading.strip().lower()
    value = re.sub(r"[^\w\s-]", "", value, flags=re.UNICODE)
    value = re.sub(r"[\s-]+", "-", value)
    return value.strip("-")


def anchor_matches(path: Path, anchor: str) -> int:
    headings = re.findall(r"^#{1,6}\s+(.+?)\s*$", read_text(path), re.MULTILINE)
    return sum(1 for heading in headings if github_slug(heading) == anchor)


def field_path_matches(path: Path, field_path: str) -> int:
    parts = field_path.split(".")
    if not parts or any(not re.fullmatch(r"[a-z][a-z0-9_]*", part) for part in parts):
        return 0
    indent = " " * ((len(parts) - 1) * 2)
    pattern = re.compile(rf"^{re.escape(indent)}{re.escape(parts[-1])}:", re.MULTILINE)
    return len(pattern.findall(read_text(path)))


def locate_startup(root: Path, campaign_arg: str) -> Path:
    normalized = normalize_repo_path(campaign_arg)
    if normalized.startswith("campaigns/"):
        campaign_path = resolve_repo_path(root, normalized)
    else:
        campaign_path = root / "campaigns" / normalized
    startup = campaign_path / "090_CAMPAIGN_STARTUP.md"
    if not startup.is_file():
        raise ValueError(f"campaign startup does not exist: {startup.relative_to(root).as_posix()}")
    return startup


def add_whole_file(
    root: Path,
    plan: dict[str, Any],
    value: str,
    reason: str,
    failures: list[str],
) -> None:
    normalized = normalize_repo_path(value)
    if not resolve_repo_path(root, normalized).is_file():
        failures.append(f"whole-file read does not exist: {normalized}")
        return
    entry = {"file": normalized, "reason": reason}
    if entry not in plan["whole_files"]:
        plan["whole_files"].append(entry)


def add_heading_selector(
    root: Path,
    plan: dict[str, Any],
    file: str,
    heading: str,
    reason: str,
    failures: list[str],
) -> None:
    normalized = normalize_repo_path(file)
    path = resolve_repo_path(root, normalized)
    if not path.is_file():
        failures.append(f"heading selector file does not exist: {normalized}")
        return
    count = heading_matches(path, heading)
    if count != 1:
        failures.append(
            f"heading selector '{heading}' in {normalized} must resolve exactly once; found {count}"
        )
        return
    plan["selectors"].append(
        {"file": normalized, "heading": heading, "reason": reason}
    )


def build_continue_plan(
    root: Path,
    startup_path: Path,
    config: dict[str, Any],
    plan: dict[str, Any],
    failures: list[str],
) -> None:
    add_whole_file(
        root,
        plan,
        startup_path.relative_to(root).as_posix(),
        "campaign operational policy",
        failures,
    )
    checkpoint = config.get("latest_restorable_checkpoint")
    if isinstance(checkpoint, str) and checkpoint.strip():
        add_whole_file(
            root,
            plan,
            f"{normalize_repo_path(checkpoint)}/900_SAVE_MANIFEST.md",
            "checkpoint identity, versions, lineage, and restoration entry",
            failures,
        )
    entry = config.get("canonical_entry_point")
    if isinstance(entry, str):
        add_whole_file(root, plan, entry, "live readiness and current situation", failures)
    briefing = config.get("player_briefing")
    if isinstance(briefing, str):
        add_whole_file(root, plan, briefing, "spoiler-safe player briefing", failures)

    protagonist = config.get("default_protagonist")
    campaign = config.get("campaign")
    if isinstance(protagonist, str) and isinstance(campaign, str):
        character, source = find_character(root, normalize_repo_path(campaign), protagonist)
        if character is None or source is None:
            failures.append(f"default protagonist selector does not resolve: {protagonist}")
        else:
            selector = {
                "file": source,
                "object": protagonist,
                "reason": "live protagonist state",
            }
            source_loading = config.get("source_loading")
            readiness_fields = (
                source_loading.get("protagonist_readiness_fields")
                if isinstance(source_loading, dict)
                else None
            )
            if isinstance(readiness_fields, list) and readiness_fields:
                selector["fields"] = []
                for value in readiness_fields:
                    if not isinstance(value, str) or field_path_matches(
                        resolve_repo_path(root, source), value
                    ) != 1:
                        failures.append(
                            f"protagonist readiness field must resolve exactly once: {value}"
                        )
                        continue
                    selector["fields"].append(value)
            plan["selectors"].append(selector)
            deferred_groups = (
                source_loading.get("protagonist_deferred_field_groups")
                if isinstance(source_loading, dict)
                else None
            )
            if deferred_groups is not None and not isinstance(deferred_groups, dict):
                failures.append("protagonist_deferred_field_groups must be a mapping")
            elif isinstance(deferred_groups, dict):
                for dispatch, fields in deferred_groups.items():
                    if (
                        not isinstance(dispatch, str)
                        or not re.fullmatch(r"[a-z][a-z0-9_.-]*", dispatch)
                        or not isinstance(fields, list)
                        or not fields
                    ):
                        failures.append(
                            "each protagonist deferred field group needs a valid dispatch "
                            "and a non-empty field list"
                        )
                        continue
                    valid_fields: list[str] = []
                    for value in fields:
                        if not isinstance(value, str) or field_path_matches(
                            resolve_repo_path(root, source), value
                        ) != 1:
                            failures.append(
                                f"protagonist deferred field must resolve exactly once: {value}"
                            )
                            continue
                        valid_fields.append(value)
                    plan["available_on_demand_selectors"].append(
                        {
                            "file": source,
                            "object": protagonist,
                            "fields": valid_fields,
                            "dispatch": dispatch,
                            "reason": "fetch only when the named operation affects these fields",
                        }
                    )

    world = config.get("world")
    profile_file = (
        f"{normalize_repo_path(world)}/206_WORLD_RULE_PROFILE.md"
        if isinstance(world, str)
        else None
    )
    if profile_file and resolve_repo_path(root, profile_file).is_file():
        plan["selectors"].append(
            {
                "file": profile_file,
                "metadata": "Profile Version",
                "reason": "active profile compatibility binding",
            }
        )
        source_loading = config.get("source_loading")
        profile_loading = (
            source_loading.get("world_rule_profile")
            if isinstance(source_loading, dict)
            else None
        )
        headings = (
            profile_loading.get("readiness_headings")
            if isinstance(profile_loading, dict)
            else []
        )
        for heading in headings or []:
            if isinstance(heading, str):
                add_heading_selector(
                    root,
                    plan,
                    profile_file,
                    heading,
                    "readiness selector declared by campaign startup",
                    failures,
                )

    required_sources = config.get("required_sources")
    if isinstance(required_sources, list):
        plan["available_on_demand"] = [
            normalize_repo_path(source)
            for source in required_sources
            if isinstance(source, str)
        ]


def build_save_plan(
    root: Path,
    plan: dict[str, Any],
    failures: list[str],
) -> None:
    add_heading_selector(
        root,
        plan,
        "docs/AI_GAMEPLAY_RUNTIME_PROFILE.md",
        "Save Algorithm",
        "authoritative checkpoint procedure",
        failures,
    )
    for tool in (
        "tools/generate_runtime_index.ps1",
        "tools/validate_repository.ps1",
        "tools/test_checkpoint_contract.ps1",
    ):
        if resolve_repo_path(root, tool).is_file():
            plan["tools"].append(tool)
        else:
            failures.append(f"save tool does not exist: {tool}")


def build_diegetic_plan(
    root: Path,
    config: dict[str, Any],
    operation: str,
    plan: dict[str, Any],
    failures: list[str],
) -> bool:
    commands = config.get("diegetic_commands")
    command = commands.get(operation) if isinstance(commands, dict) else None
    if not isinstance(command, dict):
        return False
    dispatch = command.get("dispatch")
    if not isinstance(dispatch, str) or "#" not in dispatch:
        failures.append(f"{operation} dispatch must be a file#anchor selector")
    else:
        file, anchor = dispatch.split("#", 1)
        normalized = normalize_repo_path(file)
        path = resolve_repo_path(root, normalized)
        if not path.is_file():
            failures.append(f"{operation} dispatch file does not exist: {normalized}")
        else:
            count = anchor_matches(path, anchor)
            if count != 1:
                failures.append(
                    f"{operation} anchor '{anchor}' in {normalized} must resolve exactly once; "
                    f"found {count}"
                )
            else:
                plan["selectors"].append(
                    {
                        "file": normalized,
                        "anchor": anchor,
                        "reason": "canonical diegetic render procedure",
                    }
                )
    live_reads = command.get("required_live_reads")
    if not isinstance(live_reads, list) or not live_reads:
        failures.append(f"{operation} required_live_reads must be a non-empty list")
    else:
        protagonist = config.get("default_protagonist")
        for source in live_reads:
            if not isinstance(source, str):
                failures.append(f"{operation} required_live_reads contains a non-path")
                continue
            normalized = normalize_repo_path(source)
            if normalized.endswith("/100_CHARACTER_SHEET.md") and isinstance(protagonist, str):
                selector: dict[str, Any] = {
                    "file": normalized,
                    "object": protagonist,
                    "reason": f"{operation} protagonist state",
                }
                # A diegetic command may name the exact protagonist fields it
                # renders. Without this the plan is the whole object, which for
                # a long-running campaign is most of the context budget: a
                # Gatefall protagonist block is over 150 KB, and `/system`
                # renders a small, well-defined part of it.
                fields = command.get("protagonist_fields")
                if isinstance(fields, list) and fields:
                    selector["fields"] = []
                    for value in fields:
                        if not isinstance(value, str) or field_path_matches(
                            resolve_repo_path(root, normalized), value
                        ) != 1:
                            failures.append(
                                f"{operation} protagonist field must resolve exactly once: {value}"
                            )
                            continue
                        selector["fields"].append(value)
                plan["selectors"].append(selector)
            else:
                add_whole_file(root, plan, normalized, f"{operation} required live state", failures)
    plan["render_policy"] = command.get("render_policy")
    return True


def build_plan(root: Path, startup_path: Path, config: dict[str, Any], operation: str) -> tuple[dict[str, Any], list[str]]:
    failures: list[str] = []
    plan: dict[str, Any] = {
        "operation_plan_version": "1.0",
        "campaign": normalize_repo_path(str(config.get("campaign", ""))),
        "world": normalize_repo_path(str(config.get("world", ""))),
        "operation": operation,
        "generated_from": startup_path.relative_to(root).as_posix(),
        "whole_files": [],
        "selectors": [],
        "available_on_demand": [],
        "available_on_demand_selectors": [],
        "tools": [],
    }
    if operation in {"continue", "readiness"}:
        build_continue_plan(root, startup_path, config, plan, failures)
    elif operation == "save":
        build_save_plan(root, plan, failures)
    elif not build_diegetic_plan(root, config, operation, plan, failures):
        failures.append(f"operation is not declared for this campaign: {operation}")
    return plan, failures


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repository-root", default=Path(__file__).resolve().parents[1])
    parser.add_argument("--campaign", required=True)
    parser.add_argument("--operation", default="continue")
    args = parser.parse_args()

    root = Path(args.repository_root).resolve()
    try:
        startup_path = locate_startup(root, args.campaign)
    except ValueError as exc:
        print(f"Operation plan FAILED: {exc}", file=sys.stderr)
        return 1
    failures: list[str] = []
    config = load_single_fenced_yaml(startup_path, failures)
    if config is None:
        for failure in failures:
            print(f"Operation plan FAILED: {failure}", file=sys.stderr)
        return 1
    plan, plan_failures = build_plan(root, startup_path, config, args.operation)
    if plan_failures:
        print(f"Operation plan FAILED ({len(plan_failures)} error(s))", file=sys.stderr)
        for failure in plan_failures:
            print(f"  - {failure}", file=sys.stderr)
        return 1
    print(yaml.safe_dump(plan, sort_keys=False, allow_unicode=True).rstrip())
    return 0


if __name__ == "__main__":
    sys.exit(main())
