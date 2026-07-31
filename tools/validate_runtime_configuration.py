#!/usr/bin/env python3
"""Validate Chronicle Engine's non-canonical runtime configuration."""

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
        "Runtime configuration validation FAILED "
        "(PyYAML is unavailable; install tools/requirements.txt).",
        file=sys.stderr,
    )
    sys.exit(2)


FENCED_YAML = re.compile(r"^```ya?ml[ \t]*\r?\n(.*?)^```[ \t]*$", re.MULTILINE | re.DOTALL)
PROFILE_VERSION = re.compile(r"^\*\*Profile Version:\*\*[ \t]*(\S+)[ \t]*$", re.MULTILINE)
LATEST_CHECKPOINT = re.compile(
    r"^\s*-\s*\*\*Latest restorable checkpoint:\*\*\s*`saves/([^/`]+)/?`",
    re.MULTILINE,
)
WORLD_ROW = re.compile(r"^\|\s*`(worlds/[^`]+)`\s*\|([^|]*)\|([^|]*)\|([^|]*)\|", re.MULTILINE)
CAMPAIGN_ROW = re.compile(
    r"^\|\s*`(campaigns/[^`]+)`\s*\|\s*`(worlds/[^`]+)`\s*\|"
    r"\s*([^|]*)\|\s*([^|]*)\|\s*(?:`([^`]+)`|none)\s*\|\s*([^|]*)\|",
    re.MULTILINE,
)
KNOWN_VALIDATION_FLAGS = {
    "require_confirmation_before_mutation",
    "require_confirmation_before_scene",
    "block_on_contradiction",
    "first_session_requires_save",
    "require_temporal_settlement",
    "require_profile_trigger_audit",
}
INITIALIZATION_STATES = {"uninitialized", "initialized-no-save", "resumable", "terminal"}
PROTAGONIST_POLICIES = {"pre-authored", "custom", "either", "emergent"}
CUSTOMIZATION_VALUES = {"allowed", "new-instance-only", "prohibited"}
TRIGGER_TIMINGS = {"first_qualifying_yield", "declared_boundary"}
# Closed vocabulary, owned by the engine (Decision 084). `world_state_settlement`
# covers domains the world settles on its own behalf — a commitment coming due, a
# supply source behind its cadence — which present nothing to the player and write
# no progression audit. Adding a member is a foundational change, not a convenience.
TRIGGER_SETTLEMENTS = {
    "offer",
    "automatic_attachment",
    "progression_audit",
    "world_state_settlement",
}
SELECTOR_TOKEN = re.compile(r"^[a-z][a-z0-9_.-]*$")
MIGRATION_FILE = re.compile(r"^(\d+(?:\.\d+)*)_to_(\d+(?:\.\d+)*)\.md$")
MIGRATION_ROW = re.compile(
    r"^\|\s*(\d+(?:\.\d+)*)\s*→\s*(\d+(?:\.\d+)*)\s*\|[^|]*\|[^|]*\|[^|]*\|"
    r"\s*`([^`]+)`\s*\|",
    re.MULTILINE,
)
# Migration prose must not drift back into the active profile.
PROFILE_HISTORY = re.compile(
    r"^\*\*(?:Required\s+)?\d+(?:\.\d+)*\s*→\s*\d+(?:\.\d+)*\s+"
    r"(?:migration|compatibility treatment)\.\*\*",
    re.MULTILINE,
)
MIGRATION_CLASSES = {"required-migration", "compatibility-treatment"}


class UniqueKeyLoader(yaml.SafeLoader):
    pass


def construct_mapping(loader: UniqueKeyLoader, node: yaml.MappingNode, deep: bool = False) -> dict[str, Any]:
    mapping: dict[str, Any] = {}
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
    yaml.resolver.BaseResolver.DEFAULT_MAPPING_TAG,
    construct_mapping,
)


def normalize_repo_path(value: str) -> str:
    return value.replace("\\", "/").strip().strip("/").removesuffix("/")


def read_text(path: Path) -> str:
    return path.read_text(encoding="utf-8-sig")


def load_single_fenced_yaml(path: Path, failures: list[str]) -> dict[str, Any] | None:
    try:
        text = read_text(path)
    except OSError as exc:
        failures.append(f"{path.as_posix()}: cannot read file: {exc}")
        return None
    matches = FENCED_YAML.findall(text)
    if len(matches) != 1:
        failures.append(
            f"{path.as_posix()}: expected exactly one fenced YAML configuration block, found {len(matches)}"
        )
        return None
    try:
        value = yaml.load(matches[0], Loader=UniqueKeyLoader)
    except yaml.YAMLError as exc:
        failures.append(f"{path.as_posix()}: invalid YAML: {exc}")
        return None
    if not isinstance(value, dict):
        failures.append(f"{path.as_posix()}: startup configuration must be a YAML mapping")
        return None
    return value


def load_fenced_yaml_mappings(path: Path, failures: list[str]) -> list[dict[str, Any]]:
    try:
        text = read_text(path)
    except OSError as exc:
        failures.append(f"{path.as_posix()}: cannot read file: {exc}")
        return []
    mappings: list[dict[str, Any]] = []
    for number, block in enumerate(FENCED_YAML.findall(text), start=1):
        try:
            value = yaml.load(block, Loader=UniqueKeyLoader)
        except yaml.YAMLError as exc:
            failures.append(f"{path.as_posix()}: invalid YAML in block {number}: {exc}")
            continue
        if isinstance(value, dict):
            mappings.append(value)
    if not mappings:
        failures.append(f"{path.as_posix()}: manifest has no fenced YAML mapping")
    return mappings


def require_string(
    config: dict[str, Any],
    key: str,
    display_path: str,
    failures: list[str],
) -> str | None:
    value = config.get(key)
    if not isinstance(value, str) or not value.strip():
        failures.append(f"{display_path}: '{key}' must be a non-empty string")
        return None
    return value.strip()


def resolve_repo_path(root: Path, value: str) -> Path:
    return root.joinpath(*normalize_repo_path(value).split("/"))


def heading_count(path: Path, heading: str) -> int:
    pattern = re.compile(rf"^#{{1,6}}\s+{re.escape(heading)}\s*$", re.MULTILINE)
    return len(pattern.findall(read_text(path)))


def field_path_count(path: Path, field_path: str) -> int:
    parts = field_path.split(".")
    if not parts or any(not re.fullmatch(r"[a-z][a-z0-9_]*", part) for part in parts):
        return 0
    indent = " " * ((len(parts) - 1) * 2)
    pattern = re.compile(rf"^{re.escape(indent)}{re.escape(parts[-1])}:", re.MULTILINE)
    return len(pattern.findall(read_text(path)))


def load_trigger_manifest(
    profile_path: Path,
    display_path: str,
    failures: list[str],
) -> dict[str, Any] | None:
    text = read_text(profile_path)
    candidate_blocks = [
        block for block in FENCED_YAML.findall(text) if "trigger_manifest_version:" in block
    ]
    if len(candidate_blocks) != 1:
        failures.append(
            f"{display_path}: require_profile_trigger_audit needs exactly one trigger manifest; "
            f"found {len(candidate_blocks)}"
        )
        return None
    try:
        manifest = yaml.load(candidate_blocks[0], Loader=UniqueKeyLoader)
    except yaml.YAMLError as exc:
        failures.append(f"{display_path}: invalid trigger manifest YAML: {exc}")
        return None
    if not isinstance(manifest, dict):
        failures.append(f"{display_path}: trigger manifest must be a YAML mapping")
        return None
    return manifest


def validate_trigger_manifest(
    profile_path: Path,
    display_path: str,
    manifest: dict[str, Any],
    failures: list[str],
) -> None:
    version = manifest.get("trigger_manifest_version")
    if not isinstance(version, str) or not version.strip():
        failures.append(f"{display_path}: trigger_manifest_version must be a non-empty string")
    domains = manifest.get("trigger_domains")
    if not isinstance(domains, dict) or not domains:
        failures.append(f"{display_path}: trigger_domains must be a non-empty mapping")
        return
    for domain, contract in domains.items():
        prefix = f"{display_path}: trigger domain '{domain}'"
        if not isinstance(domain, str) or not SELECTOR_TOKEN.fullmatch(domain):
            failures.append(f"{prefix} has an invalid domain key")
        if not isinstance(contract, dict):
            failures.append(f"{prefix} must be a mapping")
            continue
        deltas = contract.get("candidate_deltas")
        if not isinstance(deltas, list) or not deltas:
            failures.append(f"{prefix} candidate_deltas must be a non-empty list")
        else:
            normalized_deltas = [
                delta for delta in deltas if isinstance(delta, str) and SELECTOR_TOKEN.fullmatch(delta)
            ]
            if len(normalized_deltas) != len(deltas):
                failures.append(f"{prefix} candidate_deltas contains an invalid selector")
            if len(set(normalized_deltas)) != len(normalized_deltas):
                failures.append(f"{prefix} candidate_deltas contains a duplicate selector")
        heading = contract.get("eligibility_heading")
        if not isinstance(heading, str) or not heading.strip():
            failures.append(f"{prefix} eligibility_heading must be a non-empty string")
        else:
            count = heading_count(profile_path, heading.strip())
            if count != 1:
                failures.append(
                    f"{prefix} eligibility_heading '{heading}' must resolve exactly once; found {count}"
                )
        if contract.get("timing") not in TRIGGER_TIMINGS:
            failures.append(f"{prefix} has unsupported timing '{contract.get('timing')}'")
        identity = contract.get("identity")
        if (
            not isinstance(identity, list)
            or not identity
            or any(not isinstance(item, str) or not SELECTOR_TOKEN.fullmatch(item) for item in identity)
        ):
            failures.append(f"{prefix} identity must be a non-empty selector list")
        statuses = contract.get("blocked_statuses")
        if (
            not isinstance(statuses, list)
            or not statuses
            or any(not isinstance(item, str) or not SELECTOR_TOKEN.fullmatch(item) for item in statuses)
        ):
            failures.append(f"{prefix} blocked_statuses must be a non-empty status list")
        elif len(set(statuses)) != len(statuses):
            failures.append(f"{prefix} blocked_statuses contains a duplicate status")
        if contract.get("settlement") not in TRIGGER_SETTLEMENTS:
            failures.append(f"{prefix} has unsupported settlement '{contract.get('settlement')}'")
        if contract.get("settlement") in {"offer", "automatic_attachment"}:
            if (
                contract.get("capacity_notice_repeat")
                != "first_blocked_audit_then_capacity_change"
            ):
                failures.append(f"{prefix} must declare the capacity-notice repeat policy")
        elif contract.get("settlement") == "world_state_settlement":
            # Decision 084: a world-state settlement has no player-facing surface to
            # be blocked, and settles where recovery, commitments, and supply already do.
            if "capacity_notice_repeat" in contract:
                failures.append(f"{prefix} must not declare a capacity-notice policy")
            if contract.get("timing") != "declared_boundary":
                failures.append(f"{prefix} must settle at the declared boundary")


def parse_index(root: Path, failures: list[str]) -> tuple[dict[str, dict[str, str]], dict[str, dict[str, str]]]:
    index_path = root / "system" / "WORLDS_AND_CAMPAIGNS.md"
    if not index_path.is_file():
        failures.append("system/WORLDS_AND_CAMPAIGNS.md: missing runtime index")
        return {}, {}
    text = read_text(index_path)
    worlds: dict[str, dict[str, str]] = {}
    campaigns: dict[str, dict[str, str]] = {}
    for match in WORLD_ROW.finditer(text):
        path = normalize_repo_path(match.group(1))
        worlds[path] = {
            "version": match.group(2).strip(),
            "status": match.group(3).strip(),
            "campaign_count": match.group(4).strip(),
        }
    for match in CAMPAIGN_ROW.finditer(text):
        path = normalize_repo_path(match.group(1))
        campaigns[path] = {
            "world": normalize_repo_path(match.group(2)),
            "protagonist": match.group(3).strip(),
            "status": match.group(4).strip(),
            "checkpoint": (match.group(5) or "none").strip(),
            "captured": match.group(6).strip(),
        }
    return worlds, campaigns


def profile_metadata(root: Path, world: str, failures: list[str]) -> tuple[str, Path] | None:
    profile_path = resolve_repo_path(root, f"{world}/206_WORLD_RULE_PROFILE.md")
    if not profile_path.is_file():
        return None
    text = read_text(profile_path)
    version = PROFILE_VERSION.search(text)
    if not version:
        failures.append(
            f"{profile_path.relative_to(root).as_posix()}: active World Rule Profile has no Profile Version"
        )
        return None
    return version.group(1), profile_path


def manifest_real_date(manifest_path: Path, failures: list[str]) -> str | None:
    mappings = load_fenced_yaml_mappings(manifest_path, failures)
    for config in mappings:
        save_identity = config.get("save_identity")
        if isinstance(save_identity, dict):
            recorded = save_identity.get("real_date", save_identity.get("created"))
            if recorded is not None:
                return str(recorded)[:10]
        legacy = config.get("checkpoint_manifest")
        if isinstance(legacy, dict):
            recorded = legacy.get("real_date", legacy.get("record_time"))
            if recorded is not None:
                return str(recorded)[:10]
    failures.append(
        f"{manifest_path.as_posix()}: manifest has no supported real-date field "
        "(save_identity.real_date, save_identity.created, or checkpoint_manifest.record_time)"
    )
    return None


def find_character(root: Path, campaign: str, entity_id: str) -> tuple[dict[str, Any] | None, str | None]:
    campaign_path = resolve_repo_path(root, campaign)
    id_pattern = re.compile(rf"(?m)^[ \t]*id:[ \t]*{re.escape(entity_id)}[ \t]*(?:#.*)?$")
    for ledger in sorted(campaign_path.glob("*.md")):
        if ledger.name.startswith(("090_", "095_")):
            continue
        text = read_text(ledger)
        for block in FENCED_YAML.findall(text):
            if not id_pattern.search(block):
                continue
            try:
                value = yaml.load(block, Loader=UniqueKeyLoader)
            except yaml.YAMLError:
                type_match = re.search(r"(?m)^[ \t]*type:[ \t]*['\"]?([^'\"#\r\n]+)", block)
                names = re.findall(r"(?m)^[ \t]*name:[ \t]*['\"]?([^'\"#\r\n]+)", block)
                if type_match:
                    return {
                        "type": type_match.group(1).strip(),
                        "aliases": [{"name": name.strip()} for name in names],
                    }, ledger.relative_to(root).as_posix()
                return None, ledger.relative_to(root).as_posix()
            if isinstance(value, dict):
                return value, ledger.relative_to(root).as_posix()
    return None, None


# The stored fields that identify one opportunity.
#
# Deliberately NOT the manifest's `identity:` list. That list is conceptual -
# it says an Urgent quest is identified by "crisis_event plus objective_key"
# and a Hidden one by "concealed_object_or_objective_key" - and those are
# descriptions of what makes an opportunity distinct, not names of keys the
# ledger writes. The live ledger identifies a quest by `quest_key` and anchors
# it with `anchor`. Reading the manifest names as field names made this check
# reject correct live state, twice.
#
# Mapping a domain's declared identity onto its stored fields would need the
# manifest to name real keys. That is a reasonable thing to add and is not done
# here; until it is, duplication is detected on the fields the ledger actually
# carries, which is weaker but true.
IDENTITY_FIELDS = ("quest_key", "anchor", "crisis_event", "objective_key")


def quest_identity(entry: dict[str, Any], identity_fields: tuple[str, ...]) -> tuple | None:
    """The identifying values one stored opportunity carries.

    Returns None when the entry carries none of them, so an entry that cannot be
    told apart from another is reported rather than silently deduplicated.
    """
    values = tuple(str(entry.get(field, "")).strip() for field in identity_fields)
    return values if any(values) else None


def validate_trigger_state(
    display: str,
    character: dict[str, Any],
    manifest: dict[str, Any],
    failures: list[str],
) -> None:
    """Check stored trigger state against the domains the profile declares.

    This is the mechanical half of "one trigger opportunity produces one state
    transition" (Recommendation R6, ratified as first-qualifying-yield by
    Decision 081). It cannot observe a narration decision, but it can prove the
    stored consequences of one: a crisis that produced two live offers, a
    concealed record attached twice, or an opportunity offered again after it
    was already settled, are all visible here.

    Domain names, identity fields, and blocked statuses all come from the
    profile's manifest; nothing about any particular world is assumed.
    """
    state = character.get("canonical_state")
    if not isinstance(state, dict):
        return
    system_state = state.get("system_state")
    if not isinstance(system_state, dict):
        return
    quests = system_state.get("non_daily_quests")
    if not isinstance(quests, dict):
        return

    active = quests.get("active") if isinstance(quests.get("active"), list) else []
    pending = quests.get("pending_offers") if isinstance(quests.get("pending_offers"), list) else []
    live = [("active", e) for e in active if isinstance(e, dict)]
    live += [("pending_offer", e) for e in pending if isinstance(e, dict)]

    # Capacity: the derived total must agree with its parts, and must hold.
    base = quests.get("base_capacity")
    total = quests.get("capacity_total")
    if isinstance(base, int) and isinstance(total, int):
        bonuses = sum(
            value for key, value in quests.items()
            if key.endswith("_bonus") and isinstance(value, int)
        )
        if base + bonuses != total:
            failures.append(
                f"{display}: non_daily_quests.capacity_total is {total} but "
                f"base {base} plus declared bonuses {bonuses} is {base + bonuses}"
            )
        if len(active) > total:
            failures.append(
                f"{display}: {len(active)} active non-daily quests exceed "
                f"capacity_total {total}"
            )

    domains = manifest.get("trigger_domains")
    if not isinstance(domains, dict):
        return
    settling = {
        name: spec for name, spec in domains.items()
        if isinstance(spec, dict) and spec.get("settlement") in ("offer", "automatic_attachment")
    }
    if not settling:
        return

    # Route each stored entry to exactly one domain, using the field the data
    # model already carries. Quest entries record `type: hidden` / `type: urgent`,
    # so a domain is matched by its trailing segment; an explicit `domain` is
    # honoured if a world ever writes one. Nothing here requires canon to adopt a
    # new field for the validator's convenience.
    by_suffix = {name.rsplit(".", 1)[-1]: name for name in settling}
    routed: dict[str, list[tuple[str, dict[str, Any]]]] = {name: [] for name in settling}
    for origin, entry in live:
        declared = entry.get("domain")
        if isinstance(declared, str) and declared.strip():
            resolved = declared.strip() if declared.strip() in settling else None
        else:
            kind = entry.get("type")
            resolved = by_suffix.get(str(kind).strip()) if kind is not None else None
        if resolved is None:
            named = entry.get("domain", entry.get("type", "<none>"))
            failures.append(
                f"{display}: a live non-daily quest {origin} declares trigger kind "
                f"'{named}', which matches no declared domain; expected one of "
                f"{sorted(settling)} or a type in {sorted(by_suffix)}"
            )
            continue
        routed[resolved].append((origin, entry))

    for domain, spec in settling.items():
        blocked = spec.get("blocked_statuses")
        blocked = set(blocked) if isinstance(blocked, list) else set()

        seen: dict[str, str] = {}
        for origin, entry in routed[domain]:
            identity = quest_identity(entry, IDENTITY_FIELDS)
            if identity is None:
                failures.append(
                    f"{display}: a live {domain} {origin} carries none of "
                    f"{list(IDENTITY_FIELDS)}, so two of them cannot be told apart"
                )
                continue
            key = str(identity)
            if key in seen:
                failures.append(
                    f"{display}: {domain} identity {identity} is held by both a "
                    f"{seen[key]} and a {origin}; one opportunity must produce "
                    "one live state transition"
                )
            else:
                seen[key] = origin
            status = entry.get("status")
            if origin == "pending_offer" and isinstance(status, str) and status in blocked:
                failures.append(
                    f"{display}: {domain} identity {identity} is offered again "
                    f"while already settled as '{status}'; the manifest blocks "
                    f"{sorted(blocked)}"
                )


def validate_campaign(
    root: Path,
    startup_path: Path,
    config: dict[str, Any],
    indexed_worlds: dict[str, dict[str, str]],
    indexed_campaigns: dict[str, dict[str, str]],
    failures: list[str],
) -> None:
    display = startup_path.relative_to(root).as_posix()
    campaign = require_string(config, "campaign", display, failures)
    world = require_string(config, "world", display, failures)
    caveat = require_string(config, "selection_caveat", display, failures)
    if caveat is not None and len(" ".join(caveat.split())) > 240:
        failures.append(f"{display}: selection_caveat exceeds 240 characters")
    state = require_string(config, "initialization_state", display, failures)
    policy = require_string(config, "protagonist_policy", display, failures)
    entry = require_string(config, "canonical_entry_point", display, failures)
    if not all((campaign, world, state, policy, entry)):
        return

    campaign = normalize_repo_path(campaign)
    world = normalize_repo_path(world)
    expected_campaign = normalize_repo_path(startup_path.parent.relative_to(root).as_posix())
    if campaign != expected_campaign:
        failures.append(f"{display}: campaign is '{campaign}', expected '{expected_campaign}'")
    if state not in INITIALIZATION_STATES:
        failures.append(f"{display}: unsupported initialization_state '{state}'")
    if policy not in PROTAGONIST_POLICIES:
        failures.append(f"{display}: unsupported protagonist_policy '{policy}'")

    campaign_dir = resolve_repo_path(root, campaign)
    world_dir = resolve_repo_path(root, world)
    if not campaign_dir.is_dir():
        failures.append(f"{display}: campaign path does not exist: {campaign}")
    if not world_dir.is_dir():
        failures.append(f"{display}: world path does not exist: {world}")

    entry_path = resolve_repo_path(root, entry)
    if not entry_path.is_file():
        failures.append(f"{display}: canonical_entry_point does not exist: {entry}")
        current_latest = None
    else:
        current_match = LATEST_CHECKPOINT.search(read_text(entry_path))
        current_latest = current_match.group(1) if current_match else None

    briefing = config.get("player_briefing")
    if briefing is not None:
        if not isinstance(briefing, str) or not briefing.strip():
            failures.append(f"{display}: player_briefing must be a non-empty path when present")
        elif not resolve_repo_path(root, briefing).is_file():
            failures.append(f"{display}: player_briefing does not exist: {briefing}")

    customization = config.get("customization")
    if not isinstance(customization, dict):
        failures.append(f"{display}: customization must be a mapping")
    else:
        for key in ("name_change", "background_change", "different_protagonist"):
            if customization.get(key) not in CUSTOMIZATION_VALUES:
                failures.append(f"{display}: customization.{key} has an unsupported value")
        if not isinstance(customization.get("preserve_baseline"), bool):
            failures.append(f"{display}: customization.preserve_baseline must be boolean")

    required_sources = config.get("required_sources")
    if not isinstance(required_sources, list) or not required_sources:
        failures.append(f"{display}: required_sources must be a non-empty list")
    else:
        seen_sources: set[str] = set()
        for source in required_sources:
            if not isinstance(source, str) or not source.strip():
                failures.append(f"{display}: every required_sources entry must be a non-empty path")
                continue
            normalized = normalize_repo_path(source)
            if normalized in seen_sources:
                failures.append(f"{display}: required_sources repeats '{normalized}'")
            seen_sources.add(normalized)
            if not resolve_repo_path(root, normalized).is_file():
                failures.append(f"{display}: required source does not exist: {normalized}")

    validation = config.get("validation")
    trigger_audit_required = False
    if not isinstance(validation, dict):
        failures.append(f"{display}: validation must be a mapping")
    else:
        for key, value in validation.items():
            if key not in KNOWN_VALIDATION_FLAGS:
                failures.append(f"{display}: unknown validation flag '{key}'")
            elif not isinstance(value, bool):
                failures.append(f"{display}: validation.{key} must be boolean")
        trigger_audit_required = validation.get("require_profile_trigger_audit") is True

    profile = profile_metadata(root, world, failures)
    declared_profile = config.get("world_rule_profile")
    if profile:
        active_version, profile_path = profile
        if not isinstance(declared_profile, str) or not declared_profile.strip():
            failures.append(f"{display}: world_rule_profile is required for {world}")
        else:
            if re.search(rf"(?<![0-9.]){re.escape(active_version)}(?![0-9.])", declared_profile) is None:
                failures.append(
                    f"{display}: world_rule_profile '{declared_profile}' does not bind active "
                    f"{profile_path.relative_to(root).as_posix()} version {active_version}"
                )
            world_name = world.split("/")[-1]
            if world_name.lower() not in declared_profile.lower():
                failures.append(f"{display}: world_rule_profile does not name world '{world_name}'")
        if profile_path.relative_to(root).as_posix() not in {
            normalize_repo_path(source) for source in required_sources or [] if isinstance(source, str)
        }:
            failures.append(f"{display}: active World Rule Profile is absent from required_sources")
        source_loading = config.get("source_loading")
        if source_loading is not None:
            profile_loading = (
                source_loading.get("world_rule_profile")
                if isinstance(source_loading, dict)
                else None
            )
            if not isinstance(profile_loading, dict):
                failures.append(f"{display}: source_loading.world_rule_profile must be a mapping")
            else:
                declared_index = profile_loading.get("migration_index")
                if declared_index is not None:
                    expected = f"{world}/migrations/INDEX.md"
                    if not isinstance(declared_index, str) or not declared_index.strip():
                        failures.append(
                            f"{display}: source_loading.world_rule_profile.migration_index "
                            "must be a non-empty string"
                        )
                    elif normalize_repo_path(declared_index.strip()) != expected:
                        failures.append(
                            f"{display}: migration_index '{declared_index}' does not name {expected}"
                        )
                    elif not resolve_repo_path(root, expected).is_file():
                        failures.append(f"{display}: migration_index {expected} does not exist")
                headings = profile_loading.get("readiness_headings")
                if headings is not None:
                    if not isinstance(headings, list) or not headings:
                        failures.append(
                            f"{display}: source_loading.world_rule_profile.readiness_headings "
                            "must be a non-empty list"
                        )
                    else:
                        for heading in headings:
                            if not isinstance(heading, str) or not heading.strip():
                                failures.append(f"{display}: readiness heading must be a non-empty string")
                                continue
                            count = heading_count(profile_path, heading.strip())
                            if count != 1:
                                failures.append(
                                    f"{display}: readiness heading '{heading}' must resolve exactly "
                                    f"once in {profile_path.relative_to(root).as_posix()}; found {count}"
                                )
        if trigger_audit_required:
            profile_display = profile_path.relative_to(root).as_posix()
            manifest = load_trigger_manifest(profile_path, profile_display, failures)
            if manifest is not None:
                validate_trigger_manifest(profile_path, profile_display, manifest, failures)
                # The manifest declares the contract; stored quest state is where
                # a violation of it actually shows up.
                protagonist = config.get("default_protagonist")
                if isinstance(protagonist, str) and protagonist.strip():
                    character, source = find_character(root, campaign, protagonist.strip())
                    if isinstance(character, dict):
                        validate_trigger_state(
                            source or display, character, manifest, failures
                        )
    elif declared_profile not in (None, "", "none"):
        failures.append(f"{display}: declares world_rule_profile but {world} has no profile file")
    elif trigger_audit_required:
        failures.append(f"{display}: require_profile_trigger_audit needs an active World Rule Profile")

    saves_root = campaign_dir / "saves"
    checkpoint_dirs = (
        sorted(
            child.name
            for child in saves_root.iterdir()
            if child.is_dir() and re.fullmatch(r"900_CHECKPOINT_\d{4}", child.name)
        )
        if saves_root.is_dir()
        else []
    )
    declared_latest_path = config.get("latest_restorable_checkpoint")
    declared_latest = None
    if isinstance(declared_latest_path, str) and declared_latest_path.strip():
        declared_latest = normalize_repo_path(declared_latest_path).split("/")[-1]

    if state in {"resumable", "terminal"}:
        if not declared_latest:
            failures.append(f"{display}: {state} campaign must declare latest_restorable_checkpoint")
        elif declared_latest not in checkpoint_dirs:
            failures.append(f"{display}: latest_restorable_checkpoint does not exist: {declared_latest}")
        if current_latest != declared_latest:
            failures.append(
                f"{display}: latest checkpoint '{declared_latest}' disagrees with Current State "
                f"'{current_latest or 'none'}'"
            )
    elif state == "initialized-no-save" and checkpoint_dirs:
        failures.append(
            f"{display}: initialized-no-save conflicts with {len(checkpoint_dirs)} conforming checkpoint(s)"
        )
    elif state == "uninitialized" and entry_path.is_file():
        failures.append(f"{display}: uninitialized campaign already has a canonical entry point")

    index_row = indexed_campaigns.get(campaign)
    if not index_row:
        failures.append(f"{display}: campaign has no row in system/WORLDS_AND_CAMPAIGNS.md")
    else:
        if index_row["world"] != world:
            failures.append(f"{display}: index world '{index_row['world']}' disagrees with '{world}'")
        if index_row["checkpoint"] != (declared_latest or "none"):
            failures.append(
                f"{display}: index checkpoint '{index_row['checkpoint']}' disagrees with "
                f"startup '{declared_latest or 'none'}'"
            )
        if state == "terminal" and not re.search(r"closed|terminal", index_row["status"], re.IGNORECASE):
            failures.append(f"{display}: terminal campaign index status is '{index_row['status']}'")
        if state == "resumable" and re.search(r"closed|terminal", index_row["status"], re.IGNORECASE):
            failures.append(f"{display}: resumable campaign index status is '{index_row['status']}'")
        if declared_latest:
            manifest_path = saves_root / declared_latest / "900_SAVE_MANIFEST.md"
            if not manifest_path.is_file():
                failures.append(f"{display}: latest checkpoint has no 900_SAVE_MANIFEST.md")
            else:
                captured = manifest_real_date(manifest_path, failures)
                if captured and index_row["captured"] != captured:
                    failures.append(
                        f"{display}: index Captured '{index_row['captured']}' disagrees with "
                        f"manifest real_date '{captured}'"
                    )

    if world not in indexed_worlds:
        failures.append(f"{display}: world has no row in system/WORLDS_AND_CAMPAIGNS.md")
    elif profile and profile[0] not in indexed_worlds[world]["version"]:
        failures.append(
            f"{display}: world index version does not advertise active profile {profile[0]}"
        )

    protagonist = config.get("default_protagonist")
    if protagonist is not None:
        if not isinstance(protagonist, str) or not re.fullmatch(r"ENT-\d{6}", protagonist):
            failures.append(f"{display}: default_protagonist must be an ENT identifier")
        else:
            character, character_source = find_character(root, campaign, protagonist)
            if not character:
                failures.append(
                    f"{display}: default_protagonist {protagonist} has no parseable live Character definition"
                )
            elif character.get("type") != "Character":
                failures.append(
                    f"{display}: default_protagonist {protagonist} is not a Character "
                    f"({character_source})"
                )
            elif index_row:
                aliases = character.get("aliases")
                names = {
                    str(alias.get("name")).strip()
                    for alias in aliases or []
                    if isinstance(alias, dict) and alias.get("name")
                }
                if names and index_row["protagonist"] not in names:
                    failures.append(
                        f"{display}: index protagonist '{index_row['protagonist']}' is not an alias "
                        f"of {protagonist}"
                    )
            if character_source:
                source_loading = config.get("source_loading")
                readiness_fields = (
                    source_loading.get("protagonist_readiness_fields")
                    if isinstance(source_loading, dict)
                    else None
                )
                readiness_set: set[str] = set()
                if readiness_fields is not None:
                    if not isinstance(readiness_fields, list) or not readiness_fields:
                        failures.append(
                            f"{display}: protagonist_readiness_fields must be a non-empty list"
                        )
                    else:
                        for field in readiness_fields:
                            if not isinstance(field, str):
                                failures.append(
                                    f"{display}: protagonist readiness field must be a string"
                                )
                                continue
                            if field in readiness_set:
                                failures.append(
                                    f"{display}: duplicate protagonist readiness field '{field}'"
                                )
                            readiness_set.add(field)
                            count = field_path_count(
                                resolve_repo_path(root, character_source), field
                            )
                            if count != 1:
                                failures.append(
                                    f"{display}: protagonist readiness field '{field}' must "
                                    f"resolve exactly once; found {count}"
                                )
                deferred_groups = (
                    source_loading.get("protagonist_deferred_field_groups")
                    if isinstance(source_loading, dict)
                    else None
                )
                if deferred_groups is not None:
                    if not isinstance(deferred_groups, dict) or not deferred_groups:
                        failures.append(
                            f"{display}: protagonist_deferred_field_groups must be a non-empty mapping"
                        )
                    else:
                        for dispatch, fields in deferred_groups.items():
                            prefix = (
                                f"{display}: protagonist deferred field group '{dispatch}'"
                            )
                            if not isinstance(dispatch, str) or not SELECTOR_TOKEN.fullmatch(dispatch):
                                failures.append(f"{prefix} has an invalid dispatch name")
                            if not isinstance(fields, list) or not fields:
                                failures.append(f"{prefix} must be a non-empty field list")
                                continue
                            seen: set[str] = set()
                            for field in fields:
                                if not isinstance(field, str):
                                    failures.append(f"{prefix} contains a non-string field")
                                    continue
                                if field in seen:
                                    failures.append(f"{prefix} repeats field '{field}'")
                                seen.add(field)
                                if field in readiness_set:
                                    failures.append(
                                        f"{prefix} repeats readiness field '{field}'"
                                    )
                                count = field_path_count(
                                    resolve_repo_path(root, character_source), field
                                )
                                if count != 1:
                                    failures.append(
                                        f"{prefix} field '{field}' must resolve exactly once; "
                                        f"found {count}"
                                    )


def version_key(value: str) -> list[int]:
    return [int(part) for part in value.split(".")]


def validate_migration_chain(root: Path, world_dir: Path, failures: list[str]) -> None:
    """Check a world's profile-migration records form one contiguous chain.

    Rejects a missing, orphaned, duplicate, branching, or cyclic edge, a record
    whose declared versions disagree with its filename or index row, and a chain
    that does not terminate at the world's active profile version.
    """
    migrations = world_dir / "migrations"
    index_path = migrations / "INDEX.md"
    world = world_dir.relative_to(root).as_posix()
    if not migrations.is_dir():
        return
    if not index_path.is_file():
        failures.append(f"{world}/migrations: directory exists but declares no INDEX.md")
        return

    declared: dict[tuple[str, str], str] = {}
    for source, target, record in MIGRATION_ROW.findall(read_text(index_path)):
        edge = (source, target)
        if edge in declared:
            failures.append(f"{world}/migrations/INDEX.md: duplicate edge {source} -> {target}")
            continue
        declared[edge] = record.strip()

    if not declared:
        failures.append(f"{world}/migrations/INDEX.md: declares no migration edges")
        return

    present = {p.name for p in migrations.glob("*.md")} - {"INDEX.md"}
    for edge, record in declared.items():
        if record not in present:
            failures.append(
                f"{world}/migrations/INDEX.md: edge {edge[0]} -> {edge[1]} declares "
                f"missing record {record}"
            )
    for orphan in sorted(present - set(declared.values())):
        failures.append(f"{world}/migrations/{orphan}: record is not declared by INDEX.md")

    # Each record must agree with its own filename and its index row.
    for edge, record in sorted(declared.items(), key=lambda item: version_key(item[0][0])):
        path = migrations / record
        if not path.is_file():
            continue
        name_match = MIGRATION_FILE.match(record)
        if not name_match:
            failures.append(f"{world}/migrations/{record}: filename is not <source>_to_<target>.md")
            continue
        if (name_match.group(1), name_match.group(2)) != edge:
            failures.append(
                f"{world}/migrations/{record}: filename declares "
                f"{name_match.group(1)} -> {name_match.group(2)} but INDEX.md declares "
                f"{edge[0]} -> {edge[1]}"
            )
        block = load_single_fenced_yaml(path, failures)
        if block is None:
            continue
        migration = block.get("migration")
        if not isinstance(migration, dict):
            failures.append(f"{world}/migrations/{record}: has no migration mapping")
            continue
        source = str(migration.get("source_version", ""))
        target = str(migration.get("target_version", ""))
        if (source, target) != edge:
            failures.append(
                f"{world}/migrations/{record}: declares {source} -> {target} but is "
                f"indexed as {edge[0]} -> {edge[1]}"
            )
        classification = migration.get("classification")
        if classification not in MIGRATION_CLASSES:
            failures.append(
                f"{world}/migrations/{record}: classification {classification!r} is not one of "
                f"{sorted(MIGRATION_CLASSES)}"
            )

    # One contiguous, acyclic path: no version is the source or target twice.
    by_source: dict[str, str] = {}
    for source, target in declared:
        if source in by_source:
            failures.append(
                f"{world}/migrations/INDEX.md: version {source} branches to "
                f"{by_source[source]} and {target}"
            )
            continue
        by_source[source] = target
    targets = [target for _, target in declared]
    for target in sorted(set(targets), key=version_key):
        if targets.count(target) > 1:
            failures.append(f"{world}/migrations/INDEX.md: version {target} is reached by more than one edge")

    ordered = sorted(declared, key=lambda edge: version_key(edge[0]))
    for (_, target), (next_source, _) in zip(ordered, ordered[1:]):
        if target != next_source:
            failures.append(
                f"{world}/migrations/INDEX.md: chain is not contiguous — {target} is "
                f"followed by {next_source}"
            )
    for source, target in declared:
        if version_key(target) <= version_key(source):
            failures.append(
                f"{world}/migrations/INDEX.md: edge {source} -> {target} does not advance"
            )

    metadata = profile_metadata(root, world, failures)
    if metadata is None:
        return
    active, profile_path = metadata
    final = ordered[-1][1]
    if final != active:
        failures.append(
            f"{world}/migrations/INDEX.md: chain terminates at {final} but the active "
            f"World Rule Profile is {active}"
        )
    stray = PROFILE_HISTORY.search(read_text(profile_path))
    if stray:
        failures.append(
            f"{profile_path.relative_to(root).as_posix()}: active profile carries migration "
            f"history ({stray.group(0).strip()}); it belongs in {world}/migrations/"
        )


def validate(root: Path) -> list[str]:
    failures: list[str] = []
    indexed_worlds, indexed_campaigns = parse_index(root, failures)
    worlds_root = root / "worlds"
    if worlds_root.is_dir():
        for world_dir in sorted(p for p in worlds_root.iterdir() if p.is_dir()):
            validate_migration_chain(root, world_dir, failures)
    campaigns_root = root / "campaigns"
    if not campaigns_root.is_dir():
        return failures
    for startup_path in sorted(campaigns_root.glob("*/090_CAMPAIGN_STARTUP.md")):
        config = load_single_fenced_yaml(startup_path, failures)
        if config is not None:
            validate_campaign(
                root,
                startup_path,
                config,
                indexed_worlds,
                indexed_campaigns,
                failures,
            )
    return failures


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repository-root", default=Path(__file__).resolve().parents[1])
    parser.add_argument("--quiet", action="store_true")
    args = parser.parse_args()
    root = Path(args.repository_root).resolve()
    failures = validate(root)
    if failures:
        print(f"Runtime configuration validation FAILED ({len(failures)} error(s))")
        for failure in failures:
            print(f"  - {failure}")
        return 1
    if not args.quiet:
        count = len(list((root / "campaigns").glob("*/090_CAMPAIGN_STARTUP.md")))
        print("Runtime configuration validation PASSED")
        print(f"  Campaign startup files: {count}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
