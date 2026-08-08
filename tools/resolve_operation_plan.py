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
    campaign_readiness_headings,
    entity_deferred_groups,
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

    # `player_briefing` is deliberately NOT a continue-plan read.
    #
    # The Runtime Profile splits the two audiences: a returning player gets a
    # recap of what changed, and a new or takeover player gets the full
    # spoiler-safe introduction. The briefing is the takeover document, written
    # at campaign creation and describing the protagonist as he was on day one.
    # Gatefall's still opens on an E-Rank with $4,000 and no crew, against a
    # Level 25 Bearer with six figures in the bank -- correct for what it is,
    # and actively misleading on a resume.
    #
    # It was pulled as a whole file on every `continue`, so each resume loaded a
    # briefing the session would not use and could not trust. It stays declared
    # in campaign startup for the paths that do want it; it is simply not part
    # of restoring a campaign that is already under way.

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

    # Per-entity deferred reads. The subject is not known until an NPC actually
    # enters a scene, so the plan names the file, the fields, and where the
    # identifier is listed, and the identifier binds at dispatch. Fields are named
    # rather than taking the whole block for the same reason the protagonist's
    # are: in the live prototype the largest entity record is 65 KB and the
    # largest relationship 52 KB, so a whole-object encounter read would cost more
    # than the entire readiness budget.
    declared_groups = entity_deferred_groups(config)
    if isinstance(declared_groups, dict):
        for dispatch in sorted(declared_groups):
            group = declared_groups[dispatch]
            if not isinstance(group, dict):
                failures.append(f"entity deferred group '{dispatch}' must be a mapping")
                continue
            file_value = group.get("file")
            object_source = group.get("object_source")
            if not isinstance(file_value, str) or not file_value.strip():
                failures.append(f"entity deferred group '{dispatch}' needs a file")
                continue
            normalized = normalize_repo_path(file_value)
            path = resolve_repo_path(root, normalized)
            if not path.is_file():
                failures.append(f"entity deferred group file does not exist: {normalized}")
                continue
            selector: dict[str, Any] = {"file": normalized}
            if isinstance(object_source, str) and object_source.strip():
                selector["object"] = (
                    f"any ENT- listed in {normalize_repo_path(object_source)}"
                )
            for key, plan_key in (
                ("entity_fields", "fields"),
                ("relationship_fields", "relationship_fields"),
            ):
                fields = group.get(key)
                if not isinstance(fields, list) or not fields:
                    continue
                resolved: list[str] = []
                for value in fields:
                    if not isinstance(value, str) or field_path_matches(path, value) < 1:
                        failures.append(
                            f"entity deferred field does not resolve in {normalized}: {value}"
                        )
                        continue
                    resolved.append(value)
                if resolved:
                    selector[plan_key] = resolved
            if "fields" not in selector and "relationship_fields" not in selector:
                failures.append(f"entity deferred group '{dispatch}' resolves no fields")
                continue
            selector["dispatch"] = dispatch
            reason = group.get("reason")
            selector["reason"] = (
                reason.strip()
                if isinstance(reason, str) and reason.strip()
                else "fetch when the named subject enters play"
            )
            plan["available_on_demand_selectors"].append(selector)
    elif declared_groups is not None:
        failures.append("source_loading.entity_deferred_groups must be a mapping")

    # A campaign ledger excluded from readiness as a whole file may still own a
    # small block readiness needs. The campaign declares the exact heading; the
    # runtime-configuration validator bounds it to this campaign's own
    # required_sources and proves it resolves exactly once.
    declared_headings = campaign_readiness_headings(config)
    if isinstance(declared_headings, list):
        for entry in declared_headings:
            if not isinstance(entry, dict):
                failures.append("campaign readiness heading entry must be a mapping")
                continue
            file_value = entry.get("file")
            heading_value = entry.get("heading")
            if (
                not isinstance(file_value, str)
                or not file_value.strip()
                or not isinstance(heading_value, str)
                or not heading_value.strip()
            ):
                failures.append("campaign readiness heading entry needs a file and a heading")
                continue
            reason = entry.get("reason")
            add_heading_selector(
                root,
                plan,
                file_value,
                heading_value.strip(),
                reason.strip()
                if isinstance(reason, str) and reason.strip()
                else "campaign readiness selector declared by campaign startup",
                failures,
            )
    elif declared_headings is not None:
        failures.append("source_loading.campaign_readiness_headings must be a list")

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
    # The one named checkpoint gate is Tier 2. It runs Tier 1 — repository
    # structure plus runtime configuration — and then the checkpoint form,
    # completeness, lineage, and index synchronization contract, so it replaces
    # naming `validate_repository.ps1` and `test_checkpoint_contract.ps1`
    # separately. Naming them separately handed the Save Algorithm a Tier 1
    # validator the README had already superseded and a Tier 3 development test
    # the README says explicitly is not a save gate.
    for tool in (
        "tools/generate_runtime_index.ps1",
        "tools/generate_campaign_cast.ps1",
        "tools/validate_checkpoint.ps1",
    ):
        if resolve_repo_path(root, tool).is_file():
            plan["tools"].append(tool)
        else:
            failures.append(f"save tool does not exist: {tool}")


def resolve_declared_command(
    commands: Any, operation: str, failures: list[str]
) -> tuple[str | None, dict[str, Any] | None]:
    """Find the declared command an operation names, directly or by alias.

    A world may retain an older command spelling as an alias — Gatefall's
    `/system equipment` and `/system inventory` both render `/system gear`. The
    profile requires an operation plan before a diegetic command, so an alias
    the planner cannot resolve leaves the one path a player is most likely to
    take with no plan at all, which is the render-from-memory failure the plan
    exists to prevent.
    """
    if not isinstance(commands, dict):
        return None, None
    command = commands.get(operation)
    if isinstance(command, dict):
        return operation, command
    matched: list[str] = []
    for name, declared in commands.items():
        if not isinstance(declared, dict):
            continue
        aliases = declared.get("aliases")
        if isinstance(aliases, list) and operation in aliases:
            matched.append(str(name))
    if not matched:
        return None, None
    if len(matched) > 1:
        failures.append(
            f"alias '{operation}' is declared by more than one command: {', '.join(sorted(matched))}"
        )
        return None, None
    return matched[0], commands[matched[0]]


def add_dispatch_selector(
    root: Path,
    plan: dict[str, Any],
    operation: str,
    dispatch: Any,
    failures: list[str],
) -> None:
    if not isinstance(dispatch, str) or "#" not in dispatch:
        failures.append(f"{operation} dispatch must be a file#anchor selector")
        return
    file, anchor = dispatch.split("#", 1)
    normalized = normalize_repo_path(file)
    path = resolve_repo_path(root, normalized)
    if not path.is_file():
        failures.append(f"{operation} dispatch file does not exist: {normalized}")
        return
    count = anchor_matches(path, anchor)
    if count != 1:
        failures.append(
            f"{operation} anchor '{anchor}' in {normalized} must resolve exactly once; "
            f"found {count}"
        )
        return
    entry = {
        "file": normalized,
        "anchor": anchor,
        "reason": "canonical diegetic render procedure",
    }
    if entry not in plan["selectors"]:
        plan["selectors"].append(entry)


def add_protagonist_selector(
    root: Path,
    plan: dict[str, Any],
    command: dict[str, Any],
    operation: str,
    sheet: str,
    protagonist: str,
    failures: list[str],
) -> None:
    selector: dict[str, Any] = {
        "file": sheet,
        "object": protagonist,
        "reason": f"{operation} protagonist state",
    }
    # A diegetic command may name the exact protagonist fields it renders.
    # Without this the plan is the whole object, which for a long-running
    # campaign is most of the context budget: a Gatefall protagonist block is
    # over 150 KB, and `/system` renders a small, well-defined part of it.
    fields = command.get("protagonist_fields")
    if isinstance(fields, list) and fields:
        selector["fields"] = []
        for value in fields:
            if not isinstance(value, str) or field_path_matches(
                resolve_repo_path(root, sheet), value
            ) != 1:
                failures.append(
                    f"{operation} protagonist field must resolve exactly once: {value}"
                )
                continue
            selector["fields"].append(value)
    plan["selectors"].append(selector)


def build_diegetic_plan(
    root: Path,
    config: dict[str, Any],
    operation: str,
    plan: dict[str, Any],
    failures: list[str],
) -> bool:
    canonical, command = resolve_declared_command(
        config.get("diegetic_commands"), operation, failures
    )
    if not isinstance(command, dict) or canonical is None:
        return False
    if canonical != operation:
        plan["alias_of"] = canonical

    # `dispatch` may name more than one section. A panel's own template is not
    # always the whole of its render procedure: a world may hold the frame
    # grammar in one section and compose several templates in another, and a
    # command that dispatches only its own heading loads every value it renders
    # and none of the layout it renders them into.
    dispatch = command.get("dispatch")
    entries = dispatch if isinstance(dispatch, list) else [dispatch]
    if not entries:
        failures.append(f"{operation} dispatch must name at least one file#anchor selector")
    for entry in entries:
        add_dispatch_selector(root, plan, canonical, entry, failures)

    live_reads = command.get("required_live_reads")
    protagonist = config.get("default_protagonist")
    campaign = config.get("campaign")
    sheet = (
        f"{normalize_repo_path(campaign)}/100_CHARACTER_SHEET.md"
        if isinstance(campaign, str)
        else None
    )
    protagonist_selected = False
    if not isinstance(live_reads, list) or not live_reads:
        failures.append(f"{operation} required_live_reads must be a non-empty list")
    else:
        for source in live_reads:
            # A live read is a whole file by default, or a named heading where
            # the ledger holds the rendered block in one place. The narrowed
            # form is only correct where the heading carries the current value:
            # a ledger whose current figure is derived across dated history is
            # read whole, and trimming it there would render a stale number.
            if isinstance(source, dict):
                file_value = source.get("file")
                heading_value = source.get("heading")
                if not isinstance(file_value, str) or not file_value.strip():
                    failures.append(f"{operation} required_live_reads entry needs a file")
                    continue
                if heading_value is not None and (
                    not isinstance(heading_value, str) or not heading_value.strip()
                ):
                    failures.append(
                        f"{operation} required_live_reads heading must be a non-empty string"
                    )
                    continue
                normalized = normalize_repo_path(file_value)
                if isinstance(heading_value, str):
                    add_heading_selector(
                        root,
                        plan,
                        normalized,
                        heading_value.strip(),
                        f"{operation} required live state",
                        failures,
                    )
                    continue
            elif isinstance(source, str):
                normalized = normalize_repo_path(source)
            else:
                failures.append(f"{operation} required_live_reads contains a non-path")
                continue
            if normalized.endswith("/100_CHARACTER_SHEET.md") and isinstance(protagonist, str):
                add_protagonist_selector(
                    root, plan, command, operation, normalized, protagonist, failures
                )
                protagonist_selected = True
            else:
                add_whole_file(root, plan, normalized, f"{operation} required live state", failures)

    # Declared protagonist fields bind to the protagonist's own record whether
    # or not the character sheet is also listed as a live read. Silently
    # dropping them left `/system log` declaring the quest fields it renders and
    # loading none of them.
    if (
        not protagonist_selected
        and isinstance(command.get("protagonist_fields"), list)
        and command.get("protagonist_fields")
    ):
        if isinstance(protagonist, str) and isinstance(sheet, str):
            add_protagonist_selector(
                root, plan, command, operation, sheet, protagonist, failures
            )
        else:
            failures.append(
                f"{operation} declares protagonist_fields but the campaign names no protagonist"
            )

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
    if "alias_of" in plan:
        # Read next to the operation it resolved to, not at the foot of the plan.
        ordered = {}
        for key, value in plan.items():
            if key == "alias_of":
                continue
            ordered[key] = value
            if key == "operation":
                ordered["alias_of"] = plan["alias_of"]
        plan = ordered
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
