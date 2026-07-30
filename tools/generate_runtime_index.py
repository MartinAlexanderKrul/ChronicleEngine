#!/usr/bin/env python3
"""Generate Chronicle Engine's minimal worlds-and-campaigns runtime index."""

from __future__ import annotations

import argparse
import re
import sys
from dataclasses import dataclass
from pathlib import Path

sys.dont_write_bytecode = True

from validate_runtime_configuration import (
    find_character,
    load_single_fenced_yaml,
    manifest_real_date,
    normalize_repo_path,
    read_text,
    resolve_repo_path,
)


PROFILE_VERSION = re.compile(
    r"^\*\*Profile Version:\*\*[ \t]*(.+?)[ \t]*$", re.MULTILINE
)
WORLD_VERSION = re.compile(
    r"^\*\*World Version:\*\*[ \t]*(.+?)[ \t]*$", re.MULTILINE
)
STATUS = re.compile(r"^\*\*Status:\*\*[ \t]*(.+?)[ \t]*$", re.MULTILINE)
COMPATIBILITY_STATUS = re.compile(
    r"^\*\*Compatibility Status:\*\*[ \t]*(.+?)[ \t]*$", re.MULTILINE
)
CURRENT_LATEST = re.compile(
    r"^\s*-\s*\*\*Latest restorable checkpoint:\*\*\s*`saves/([^/`]+)/?`",
    re.MULTILINE,
)
SETTING_VERSION = re.compile(
    r"^## Canonical Setting Version[ \t]+(\S+)[ \t]+[—-][ \t]+(.+?)\s*$",
    re.MULTILINE,
)
STATUS_LABELS = {
    "uninitialized": "Not started",
    "initialized-no-save": "In progress",
    "resumable": "In progress",
    "terminal": "Closed — terminal",
}


@dataclass(frozen=True)
class WorldRow:
    path: str
    version: str
    status: str
    campaign_count: int


@dataclass(frozen=True)
class CampaignRow:
    path: str
    world: str
    protagonist: str
    status: str
    checkpoint: str
    captured: str
    caveat: str


def clean_metadata(value: str) -> str:
    return value.strip().rstrip(".")


def world_metadata(world_dir: Path) -> tuple[str, str]:
    profile = world_dir / "206_WORLD_RULE_PROFILE.md"
    bible = world_dir / "200_WORLD_BIBLE.md"
    if profile.is_file():
        text = read_text(profile)
        version_match = PROFILE_VERSION.search(text)
        status_match = STATUS.search(text)
        if not version_match or not status_match:
            raise ValueError(
                f"{profile.as_posix()} must declare Profile Version and Status"
            )
        version = f"World Rule Profile {clean_metadata(version_match.group(1))}"
        compatibility_match = COMPATIBILITY_STATUS.search(text)
        if compatibility_match and compatibility_match.group(1).strip().lower().startswith(
            "frozen"
        ):
            version += ", frozen"
        status = clean_metadata(status_match.group(1)).split("—", 1)[0].strip()
        return version, status
    if not bible.is_file():
        raise ValueError(f"{world_dir.as_posix()} has no World Bible")
    text = read_text(bible)
    version_match = WORLD_VERSION.search(text)
    status_match = STATUS.search(text)
    if version_match:
        version = clean_metadata(version_match.group(1))
        status = (
            clean_metadata(status_match.group(1)).split("—", 1)[0].strip()
            if status_match
            else "Active"
        )
        return version, status
    setting_match = SETTING_VERSION.search(text)
    if setting_match:
        return (
            clean_metadata(setting_match.group(1)),
            clean_metadata(setting_match.group(2)),
        )
    raise ValueError(f"{bible.as_posix()} has no derivable world version")


def protagonist_name(
    root: Path, campaign: str, protagonist_id: str, failures: list[str]
) -> str:
    character, source = find_character(root, campaign, protagonist_id)
    if character is None:
        failures.append(
            f"{campaign}: default protagonist {protagonist_id} has no readable Character"
        )
        return protagonist_id
    aliases = character.get("aliases")
    for alias in aliases or []:
        if isinstance(alias, dict) and isinstance(alias.get("name"), str):
            name = alias["name"].strip()
            if name:
                return name
    if source:
        text = read_text(resolve_repo_path(root, source))
        object_start = re.search(
            rf"(?m)^id:[ \t]*{re.escape(protagonist_id)}[ \t]*$", text
        )
        if object_start:
            alias_match = re.search(
                r"(?ms)^aliases:[ \t]*\r?\n[ \t]+-[ \t]+name:[ \t]*"
                r"[\"']?([^\"'\r\n]+)",
                text[object_start.start() :],
            )
            if alias_match:
                return alias_match.group(1).strip()
    failures.append(
        f"{campaign}: default protagonist {protagonist_id} has no display alias ({source})"
    )
    return protagonist_id


def load_campaign_rows(root: Path) -> tuple[list[CampaignRow], list[str]]:
    failures: list[str] = []
    rows: list[CampaignRow] = []
    for startup in sorted((root / "campaigns").glob("*/090_CAMPAIGN_STARTUP.md")):
        config_failures: list[str] = []
        config = load_single_fenced_yaml(startup, config_failures)
        failures.extend(config_failures)
        if config is None:
            continue
        campaign = normalize_repo_path(str(config.get("campaign", "")))
        world = normalize_repo_path(str(config.get("world", "")))
        protagonist_id = config.get("default_protagonist")
        state = config.get("initialization_state")
        caveat = config.get("selection_caveat")
        if not campaign or not world:
            failures.append(f"{startup.as_posix()}: campaign and world are required")
            continue
        if not isinstance(protagonist_id, str):
            failures.append(f"{startup.as_posix()}: default_protagonist is required")
            continue
        if state not in STATUS_LABELS:
            failures.append(
                f"{startup.as_posix()}: unsupported initialization_state '{state}'"
            )
            continue
        if not isinstance(caveat, str) or not caveat.strip():
            failures.append(f"{startup.as_posix()}: selection_caveat is required")
            continue
        caveat = " ".join(caveat.split())
        if len(caveat) > 240:
            failures.append(
                f"{startup.as_posix()}: selection_caveat exceeds 240 characters"
            )
        checkpoint_value = config.get("latest_restorable_checkpoint")
        checkpoint = "none"
        captured = "—"
        if isinstance(checkpoint_value, str) and checkpoint_value.strip():
            checkpoint_path = resolve_repo_path(root, checkpoint_value)
            checkpoint = checkpoint_path.name
            current_state = resolve_repo_path(root, f"{campaign}/180_CURRENT_STATE.md")
            current_match = (
                CURRENT_LATEST.search(read_text(current_state))
                if current_state.is_file()
                else None
            )
            if current_match is None or current_match.group(1) != checkpoint:
                failures.append(
                    f"{startup.as_posix()}: latest checkpoint disagrees with "
                    f"{campaign}/180_CURRENT_STATE.md"
                )
            manifest = checkpoint_path / "900_SAVE_MANIFEST.md"
            if not manifest.is_file():
                failures.append(
                    f"{startup.as_posix()}: latest checkpoint manifest is missing"
                )
            else:
                captured_value = manifest_real_date(manifest, failures)
                if captured_value:
                    captured = captured_value
        rows.append(
            CampaignRow(
                path=f"{campaign}/",
                world=f"{world}/",
                protagonist=protagonist_name(root, campaign, protagonist_id, failures),
                status=STATUS_LABELS[state],
                checkpoint=checkpoint,
                captured=captured,
                caveat=caveat,
            )
        )
    return rows, failures


def load_world_rows(root: Path, campaigns: list[CampaignRow]) -> list[WorldRow]:
    counts: dict[str, int] = {}
    for campaign in campaigns:
        counts[campaign.world] = counts.get(campaign.world, 0) + 1
    rows: list[WorldRow] = []
    for world_dir in sorted((root / "worlds").iterdir()):
        if world_dir.is_dir():
            path = f"worlds/{world_dir.name}/"
            version, status = world_metadata(world_dir)
            rows.append(WorldRow(path, version, status, counts.get(path, 0)))
    return rows


def render(worlds: list[WorldRow], campaigns: list[CampaignRow]) -> str:
    lines = [
        "# Chronicle Engine",
        "",
        "## Worlds and Campaigns",
        "",
        "**File:** `system/WORLDS_AND_CAMPAIGNS.md`",
        "**Status:** Active",
        "**Authority:** Non-canonical operational index",
        "**Generated by:** `tools/generate_runtime_index.ps1`",
        "",
        "---",
        "",
        "# Purpose",
        "",
        "This is the rendered source for the Engine Welcome Page, `/worlds`, `/campaigns`, "
        "and most-recent campaign resolution. Render every row; never reconstruct the "
        "inventory from memory. Campaign ledgers govern wherever this index disagrees.",
        "",
        "Generated rows are not edited directly. Update their owning startup, world/profile "
        "metadata, Character alias, Current State/checkpoint binding, or latest manifest, "
        "then regenerate the index.",
        "",
        "---",
        "",
        "# Worlds",
        "",
        "| World | Version | Status | Live campaigns |",
        "|---|---|---|---:|",
    ]
    lines.extend(
        f"| `{row.path}` | {row.version} | {row.status} | {row.campaign_count} |"
        for row in worlds
    )
    lines.extend(
        [
            "",
            "# Campaigns",
            "",
            "| Campaign | World | Protagonist | Status | Latest checkpoint | Captured |",
            "|---|---|---|---|---|---|",
        ]
    )
    lines.extend(
        f"| `{row.path}` | `{row.world}` | {row.protagonist} | {row.status} | "
        f"{f'`{row.checkpoint}`' if row.checkpoint != 'none' else 'none'} | "
        f"{row.captured} |"
        for row in campaigns
    )
    lines.extend(["", "# Selection Caveats", ""])
    lines.extend(f"- **`{row.path}`** — {row.caveat}" for row in campaigns)
    lines.extend(
        [
            "",
            "---",
            "",
            "# Maintenance",
            "",
            "- Generation schema: `1.0`.",
            "- Maximum selection caveat: 240 characters.",
            "- Run `tools/generate_runtime_index.ps1` after adding, forking, closing, or "
            "checkpointing a campaign, or after adding/changing a world.",
            "- Run `tools/generate_runtime_index.ps1 -Check` to verify byte-for-byte "
            "synchronization. Repository validation runs the same check.",
            "- Detailed checkpoint history belongs in `campaigns/<campaign>/saves/README.md`; "
            "live readiness belongs in `180_CURRENT_STATE.md`; canon and history belong in "
            "the campaign chronicle and changelog.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repository-root", default=Path(__file__).resolve().parents[1])
    parser.add_argument("--output", default="system/WORLDS_AND_CAMPAIGNS.md")
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()

    root = Path(args.repository_root).resolve()
    output = resolve_repo_path(root, args.output)
    try:
        campaigns, failures = load_campaign_rows(root)
        worlds = load_world_rows(root, campaigns)
        if failures:
            raise ValueError("; ".join(failures))
        expected = render(worlds, campaigns)
    except (OSError, ValueError) as exc:
        print(f"Runtime index generation FAILED: {exc}", file=sys.stderr)
        return 2

    if args.check:
        actual = read_text(output) if output.is_file() else ""
        if actual.replace("\r\n", "\n") != expected:
            print(
                "Runtime index generation FAILED: "
                "system/WORLDS_AND_CAMPAIGNS.md is not synchronized. "
                "Run tools/generate_runtime_index.ps1.",
                file=sys.stderr,
            )
            return 1
        print("Runtime index generation check PASSED")
        return 0

    output.write_text(expected, encoding="utf-8", newline="\n")
    print(
        f"Generated {output.relative_to(root).as_posix()} "
        f"({len(expected.encode('utf-8'))} bytes)"
    )
    return 0


if __name__ == "__main__":
    sys.exit(main())
