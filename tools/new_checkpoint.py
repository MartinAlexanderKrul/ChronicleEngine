#!/usr/bin/env python3
"""Create a Chronicle Engine checkpoint from a verified live-mutation receipt."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import shutil
import signal
import subprocess
import sys
import uuid
from datetime import datetime
from pathlib import Path
from typing import Any

import yaml

sys.dont_write_bytecode = True

from validate_runtime_configuration import (
    UniqueKeyLoader,
    load_fenced_yaml_mappings,
    load_single_fenced_yaml,
    normalize_repo_path,
    read_text,
    resolve_repo_path,
)


REQUIRED_LEDGERS = (
    "100_CHARACTER_SHEET.md",
    "110_WORLD_LEDGER.md",
    "120_INVENTORY_AND_OWNERSHIP.md",
    "130_NPCS_AND_FACTIONS.md",
    "140_OBJECTIVES.md",
    "160_CAMPAIGN_CHRONICLE.md",
    "170_CHANGELOG.md",
    "180_CURRENT_STATE.md",
)
ALWAYS_PROMOTED = {
    "160_CAMPAIGN_CHRONICLE.md",
    "170_CHANGELOG.md",
    "180_CURRENT_STATE.md",
}
CHECKPOINT_NAME = re.compile(r"^900_CHECKPOINT_(\d{4})$")
CURRENT_LATEST = re.compile(
    r"^(?P<prefix>\s*-\s*\*\*Latest restorable checkpoint:\*\*\s*)"
    r"`saves/(?P<name>[^/`]+)/?`(?P<suffix>[^\r\n]*)$",
    re.MULTILINE,
)
STARTUP_LATEST = re.compile(
    r"^(?P<prefix>latest_restorable_checkpoint:\s*)"
    r"(?P<value>[^\s#]+)(?P<suffix>\s*(?:#.*)?)$",
    re.MULTILINE,
)
VERSION_FIELD = {
    "engine": re.compile(r"^\*\*Engine Version:\*\*\s*(\S+)", re.MULTILINE),
    "campaign_schema": re.compile(
        r"^\*\*Data Model Version:\*\*\s*(\S+)", re.MULTILINE
    ),
    "profile": re.compile(r"^\*\*Profile Version:\*\*\s*(\S+)", re.MULTILINE),
    "profile_status": re.compile(
        r"^\*\*Compatibility Status:\*\*\s*(frozen|workshop draft)",
        re.MULTILINE | re.IGNORECASE,
    ),
    "world": re.compile(r"^\*\*World Version:\*\*\s*(.+?)\s*$", re.MULTILINE),
}


class CheckpointFailure(RuntimeError):
    """A diagnosed checkpoint refusal or transaction failure."""


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def atomic_write_bytes(path: Path, content: bytes, token: str) -> None:
    temporary = path.with_name(f".{path.name}.checkpoint-tmp-{token}")
    temporary.write_bytes(content)
    os.replace(temporary, path)


def atomic_write_text(path: Path, content: str, token: str) -> None:
    atomic_write_bytes(path, content.encode("utf-8"), token)


def inside(path: Path, parent: Path) -> bool:
    try:
        path.relative_to(parent)
        return True
    except ValueError:
        return False


def single_line(value: Any, name: str, maximum: int = 500) -> str:
    if not isinstance(value, str) or not value.strip():
        raise CheckpointFailure(f"{name} must be a non-empty string")
    cleaned = value.strip()
    if "\r" in cleaned or "\n" in cleaned:
        raise CheckpointFailure(f"{name} must be one line")
    if len(cleaned) > maximum:
        raise CheckpointFailure(f"{name} exceeds {maximum} characters")
    return cleaned


def load_json_mapping(path: Path) -> dict[str, Any]:
    try:
        value = json.loads(path.read_text(encoding="utf-8-sig"))
    except (OSError, json.JSONDecodeError) as exc:
        raise CheckpointFailure(f"cannot read mutation receipt {path}: {exc}") from exc
    if not isinstance(value, dict):
        raise CheckpointFailure("mutation receipt must be a JSON object")
    return value


def fenced_yaml_mapping(path: Path) -> dict[str, Any]:
    failures: list[str] = []
    mappings = load_fenced_yaml_mappings(path, failures)
    if failures or not mappings:
        raise CheckpointFailure(
            f"cannot parse manifest {path}: {'; '.join(failures) or 'no YAML mapping'}"
        )
    return mappings[0]


def current_parent(startup: dict[str, Any], current_state: Path) -> str:
    configured = startup.get("latest_restorable_checkpoint")
    configured_name = (
        Path(normalize_repo_path(configured)).name
        if isinstance(configured, str) and configured.strip()
        else "none"
    )
    match = CURRENT_LATEST.search(read_text(current_state))
    declared_name = match.group("name") if match else "none"
    if configured_name != declared_name:
        raise CheckpointFailure(
            "startup and Current State disagree before checkpoint creation: "
            f"{configured_name!r} != {declared_name!r}"
        )
    return configured_name


def next_checkpoint_name(saves: Path) -> str:
    ordinals = [
        int(match.group(1))
        for child in saves.iterdir()
        if child.is_dir() and (match := CHECKPOINT_NAME.fullmatch(child.name))
    ]
    ordinal = (max(ordinals) + 1) if ordinals else 1
    if ordinal > 9999:
        raise CheckpointFailure("checkpoint ordinal exceeds the four-digit format")
    return f"900_CHECKPOINT_{ordinal:04d}"


def ledger_record_id(path: Path) -> str:
    failures: list[str] = []
    for block in load_fenced_yaml_mappings(path, failures):
        identifier = block.get("id")
        role = block.get("role")
        if (
            isinstance(identifier, str)
            and re.fullmatch(r"REC-\d{6}", identifier)
            and role == "canonical ledger"
        ):
            return identifier
    detail = "; ".join(failures)
    raise CheckpointFailure(
        f"{path.name} has no structured canonical-ledger REC identifier"
        + (f": {detail}" if detail else "")
    )


def extract_version(path: Path, field: str) -> str:
    match = VERSION_FIELD[field].search(read_text(path))
    if not match:
        raise CheckpointFailure(f"cannot derive {field} version from {path}")
    return match.group(1).strip().rstrip(".")


def previous_manifest_versions(parent_manifest: Path) -> dict[str, Any]:
    if not parent_manifest.is_file():
        return {}
    mapping = fenced_yaml_mapping(parent_manifest)
    versions = mapping.get("versions")
    return versions if isinstance(versions, dict) else {}


def derive_profile(root: Path, world: str) -> dict[str, str] | str:
    profile = resolve_repo_path(root, f"{world}/206_WORLD_RULE_PROFILE.md")
    if not profile.is_file():
        return "none"
    text = read_text(profile)
    version_match = VERSION_FIELD["profile"].search(text)
    status_match = VERSION_FIELD["profile_status"].search(text)
    if not version_match or not status_match:
        raise CheckpointFailure(
            f"{profile.relative_to(root).as_posix()} must declare Profile Version "
            "and Compatibility Status"
        )
    status = status_match.group(1).lower().replace(" ", "-")
    world_name = Path(world).name.replace("_", " ").title()
    return {
        "world": world_name,
        "version": version_match.group(1).strip(),
        "freeze_status": status,
    }


def derive_world_version(
    root: Path,
    world: str,
    prior_versions: dict[str, Any],
    manifest_input: dict[str, Any],
) -> str:
    prior = prior_versions.get("world")
    if isinstance(prior, (str, int, float)) and str(prior).strip():
        return str(prior).strip()
    supplied = manifest_input.get("world_version")
    if isinstance(supplied, (str, int, float)) and str(supplied).strip():
        return str(supplied).strip()
    bible = resolve_repo_path(root, f"{world}/200_WORLD_BIBLE.md")
    if bible.is_file():
        match = VERSION_FIELD["world"].search(read_text(bible))
        if match:
            return match.group(1).strip().rstrip(".")
    raise CheckpointFailure(
        "world version is not derivable from the parent manifest or World Bible; "
        "set mutation receipt manifest.world_version"
    )


def validate_mutation_receipt(
    root: Path,
    campaign: str,
    world: str,
    receipt_path: Path,
) -> tuple[dict[str, Any], list[dict[str, Any]]]:
    receipt = load_json_mapping(receipt_path)
    if receipt.get("receipt_version") != "1.0":
        raise CheckpointFailure("mutation receipt receipt_version must be '1.0'")
    if normalize_repo_path(str(receipt.get("campaign", ""))) != campaign:
        raise CheckpointFailure("mutation receipt campaign does not match -Campaign")
    if receipt.get("promotion_barrier_passed") is not True:
        raise CheckpointFailure("mutation receipt must affirm promotion_barrier_passed")

    entries = receipt.get("updated_live_files")
    if not isinstance(entries, list) or not entries:
        raise CheckpointFailure("mutation receipt updated_live_files must be non-empty")

    campaign_root = resolve_repo_path(root, campaign).resolve()
    world_root = resolve_repo_path(root, world).resolve()
    registry = (root / "system" / "ID_REGISTRY.md").resolve()
    seen: set[str] = set()
    verified: list[dict[str, Any]] = []
    for number, entry in enumerate(entries, start=1):
        if not isinstance(entry, dict):
            raise CheckpointFailure(f"updated_live_files[{number}] must be an object")
        relative = normalize_repo_path(
            single_line(entry.get("path"), f"updated_live_files[{number}].path")
        )
        if relative in seen:
            raise CheckpointFailure(f"mutation receipt repeats target {relative}")
        seen.add(relative)
        target = resolve_repo_path(root, relative).resolve()
        if not inside(target, root):
            raise CheckpointFailure(f"mutation target escapes the repository: {relative}")
        if "/saves/" in f"/{relative}/" or relative.startswith((".git/", ".tmp/")):
            raise CheckpointFailure(f"mutation target is not live state: {relative}")
        if target == (root / "system" / "WORLDS_AND_CAMPAIGNS.md").resolve():
            raise CheckpointFailure(
                "the generated worlds/campaigns index is not a mutation target"
            )
        is_campaign_ledger = (
            target.parent == campaign_root and target.name in REQUIRED_LEDGERS
        )
        is_world_record = inside(target, world_root) and target.suffix.lower() == ".md"
        if not (is_campaign_ledger or is_world_record or target == registry):
            raise CheckpointFailure(
                "mutation target is outside the canonical campaign-ledger, active-world, "
                f"or registry scope: {relative}"
            )
        if not target.is_file():
            raise CheckpointFailure(f"mutation target does not exist: {relative}")
        if entry.get("read_back_verified") is not True:
            raise CheckpointFailure(
                f"mutation target lacks read_back_verified=true: {relative}"
            )
        expected_hash = single_line(
            entry.get("sha256"), f"updated_live_files[{number}].sha256", 64
        ).lower()
        if not re.fullmatch(r"[0-9a-f]{64}", expected_hash):
            raise CheckpointFailure(f"mutation target has invalid SHA-256: {relative}")
        actual_hash = sha256(target)
        if actual_hash != expected_hash:
            raise CheckpointFailure(
                f"mutation target changed after read-back: {relative} "
                f"(expected {expected_hash}, found {actual_hash})"
            )
        verified.append(
            {"path": relative, "sha256": actual_hash, "bytes": target.stat().st_size}
        )

    missing_always = sorted(
        name
        for name in ALWAYS_PROMOTED
        if f"{campaign}/{name}" not in seen
    )
    if missing_always:
        raise CheckpointFailure(
            "mutation receipt omits played-session promotion targets: "
            + ", ".join(missing_always)
        )
    manifest_input = receipt.get("manifest")
    if not isinstance(manifest_input, dict):
        raise CheckpointFailure("mutation receipt manifest must be an object")
    return manifest_input, verified


def update_startup_pointer(
    path: Path, campaign: str, checkpoint: str, token: str
) -> None:
    text = read_text(path)
    matches = list(STARTUP_LATEST.finditer(text))
    if len(matches) != 1:
        raise CheckpointFailure(
            f"{path.relative_to(path.parents[2]).as_posix()} must contain exactly "
            "one latest_restorable_checkpoint field"
        )
    replacement = (
        f"{matches[0].group('prefix')}{campaign}/saves/{checkpoint}"
        f"{matches[0].group('suffix')}"
    )
    updated = text[: matches[0].start()] + replacement + text[matches[0].end() :]
    atomic_write_text(path, updated, token)


def update_current_pointer(path: Path, checkpoint: str, label: str, token: str) -> None:
    text = read_text(path)
    matches = list(CURRENT_LATEST.finditer(text))
    if len(matches) != 1:
        raise CheckpointFailure(
            f"{path.name} must contain exactly one Latest restorable checkpoint field"
        )
    replacement = (
        f"{matches[0].group('prefix')}`saves/{checkpoint}/` "
        f"— {label.rstrip('.')}."
    )
    updated = text[: matches[0].start()] + replacement + text[matches[0].end() :]
    atomic_write_text(path, updated, token)


def powershell_executable() -> str:
    for command in ("powershell", "pwsh"):
        resolved = shutil.which(command)
        if resolved:
            return resolved
    raise CheckpointFailure("PowerShell is unavailable")


def run_gate(
    root: Path,
    name: str,
    script: str,
    arguments: list[str] | None = None,
) -> dict[str, Any]:
    script_path = root / "tools" / script
    if not script_path.is_file():
        raise CheckpointFailure(f"required checkpoint tool is missing: tools/{script}")
    command = [
        powershell_executable(),
        "-NoProfile",
        "-ExecutionPolicy",
        "Bypass",
        "-File",
        str(script_path),
    ]
    command.extend(arguments or [])
    completed = subprocess.run(
        command,
        cwd=root,
        capture_output=True,
        text=True,
        errors="replace",
        check=False,
    )
    output = "\n".join(
        part.rstrip() for part in (completed.stdout, completed.stderr) if part.strip()
    )
    print(f"--- {name} ---")
    if output:
        print(output)
    print(f"--- {name}: exit {completed.returncode} ---")
    if completed.returncode != 0:
        raise CheckpointFailure(f"{name} failed with exit code {completed.returncode}")
    return {"name": name, "exit_code": completed.returncode}


def generate_manifest(
    root: Path,
    campaign: str,
    world: str,
    character: str,
    checkpoint: str,
    parent: str,
    checkpoint_type: str,
    label: str,
    manifest_input: dict[str, Any],
    ledger_ids: list[str],
) -> str:
    source = single_line(manifest_input.get("source"), "manifest.source")
    game_date = single_line(manifest_input.get("game_date"), "manifest.game_date")
    branch = single_line(manifest_input.get("branch"), "manifest.branch", 200)
    continuation = manifest_input.get("canonical_continuation")
    if not isinstance(continuation, bool):
        raise CheckpointFailure("manifest.canonical_continuation must be boolean")

    status = single_line(
        manifest_input.get("compatibility_status", "compatible"),
        "manifest.compatibility_status",
        50,
    )
    if status not in {"compatible", "mismatch"}:
        raise CheckpointFailure(
            "manifest.compatibility_status must be compatible or mismatch"
        )
    warnings = single_line(
        manifest_input.get("compatibility_warnings", "None."),
        "manifest.compatibility_warnings",
        1000,
    )

    parent_manifest = (
        resolve_repo_path(root, f"{campaign}/saves/{parent}/900_SAVE_MANIFEST.md")
        if parent != "none"
        else Path()
    )
    prior_versions = (
        previous_manifest_versions(parent_manifest) if parent != "none" else {}
    )
    save_format = str(prior_versions.get("save_format", "0.1.0"))
    profile = derive_profile(root, world)
    versions: dict[str, Any] = {
        "engine": extract_version(root / "engine" / "000_ENGINE_MANIFEST.md", "engine"),
        "world": derive_world_version(root, world, prior_versions, manifest_input),
        "world_rule_profile": profile,
        "campaign_schema": extract_version(
            root / "engine" / "011_ENGINE_DATA_MODEL.md", "campaign_schema"
        ),
        "save_format": save_format,
    }
    lineage: dict[str, Any] = {}
    if parent != "none":
        lineage["parent_save"] = parent
    lineage["canonical_continuation"] = continuation
    lineage["branch"] = branch
    manifest = {
        "save_identity": {
            "checkpoint_type": checkpoint_type,
            "real_date": datetime.now().astimezone().isoformat(timespec="seconds"),
            "source": source,
            "game_date": game_date,
        },
        "scope": {
            "world": world,
            "campaign": campaign,
            "character": character,
        },
        "versions": versions,
        "lineage": lineage,
        "included_ledgers": ledger_ids,
        "compatibility": {"status": status, "warnings": warnings},
        "restoration_entry_point": ledger_ids[-1],
    }
    yaml_text = yaml.safe_dump(
        manifest,
        sort_keys=False,
        allow_unicode=True,
        default_flow_style=False,
    ).rstrip()
    title = Path(campaign).name.replace("_", " ").title()
    return (
        f"# Save Manifest — {title} — {checkpoint}\n\n"
        f"**Campaign:** `{campaign}/` · **World:** `{world}/`\n"
        f"**Checkpoint:** `{checkpoint}` — {label}\n"
        f"**Kind:** {checkpoint_type}\n\n"
        "This manifest is checkpoint-local metadata only. It mints no registry "
        "identifier and does not duplicate ledger content (Rules Section 13.3; "
        "Decision 072).\n\n"
        "---\n\n"
        "## Manifest\n\n"
        f"```yaml\n{yaml_text}\n```\n"
    )


def acquire_lock(root: Path, token: str) -> tuple[int, Path]:
    lock_dir = root / ".tmp"
    lock_dir.mkdir(parents=True, exist_ok=True)
    lock_path = lock_dir / "checkpoint-writer.lock"
    try:
        descriptor = os.open(lock_path, os.O_CREAT | os.O_EXCL | os.O_WRONLY)
    except FileExistsError as exc:
        raise CheckpointFailure(
            "another checkpoint writer holds .tmp/checkpoint-writer.lock; "
            "refusing before ordinal allocation"
        ) from exc
    payload = {
        "token": token,
        "pid": os.getpid(),
        "started_at": datetime.now().astimezone().isoformat(timespec="seconds"),
    }
    os.write(descriptor, json.dumps(payload).encode("utf-8"))
    os.fsync(descriptor)
    return descriptor, lock_path


def emit_receipt(receipt: dict[str, Any]) -> None:
    print(
        "CHECKPOINT_RECEIPT_JSON="
        + json.dumps(receipt, ensure_ascii=False, separators=(",", ":"), sort_keys=True)
    )


def create_checkpoint(args: argparse.Namespace) -> int:
    root = Path(args.repository_root).resolve()
    campaign = normalize_repo_path(args.campaign)
    checkpoint_type = single_line(args.checkpoint_type, "CheckpointType", 100)
    label = single_line(args.label, "Label", 200)
    expected_parent = single_line(args.expected_parent, "ExpectedParent", 100)
    if expected_parent != "none" and not CHECKPOINT_NAME.fullmatch(expected_parent):
        raise CheckpointFailure(
            "ExpectedParent must be 'none' or 900_CHECKPOINT_<NNNN>"
        )

    campaign_root = resolve_repo_path(root, campaign).resolve()
    if not inside(campaign_root, (root / "campaigns").resolve()):
        raise CheckpointFailure("Campaign must resolve beneath campaigns/")
    startup_path = campaign_root / "090_CAMPAIGN_STARTUP.md"
    current_state = campaign_root / "180_CURRENT_STATE.md"
    saves = campaign_root / "saves"
    if not startup_path.is_file() or not current_state.is_file():
        raise CheckpointFailure("campaign lacks startup or Current State")
    saves.mkdir(parents=True, exist_ok=True)

    token = uuid.uuid4().hex
    descriptor: int | None = None
    lock_path: Path | None = None
    staging: Path | None = None
    final: Path | None = None
    originals: dict[Path, bytes] = {}
    phase = "lock"
    gates: list[dict[str, Any]] = []
    try:
        descriptor, lock_path = acquire_lock(root, token)
        phase = "receipt-validation"
        startup_failures: list[str] = []
        startup = load_single_fenced_yaml(startup_path, startup_failures)
        if startup is None or startup_failures:
            raise CheckpointFailure(
                "campaign startup is invalid: " + "; ".join(startup_failures)
            )
        if normalize_repo_path(str(startup.get("campaign", ""))) != campaign:
            raise CheckpointFailure("campaign startup binding does not match -Campaign")
        world = normalize_repo_path(single_line(startup.get("world"), "startup.world"))
        world_root = resolve_repo_path(root, world).resolve()
        if not inside(world_root, (root / "worlds").resolve()) or not world_root.is_dir():
            raise CheckpointFailure("campaign startup world must resolve beneath worlds/")
        receipt_path = Path(args.mutation_receipt)
        if not receipt_path.is_absolute():
            receipt_path = (root / receipt_path).resolve()
        else:
            receipt_path = receipt_path.resolve()
        manifest_input, verified_targets = validate_mutation_receipt(
            root, campaign, world, receipt_path
        )
        parent = current_parent(startup, current_state)
        if parent != expected_parent:
            raise CheckpointFailure(
                f"ExpectedParent {expected_parent!r} does not match live parent {parent!r}"
            )
        if parent != "none":
            parent_path = saves / parent
            if not parent_path.is_dir():
                raise CheckpointFailure(f"expected parent checkpoint is missing: {parent}")

        ledger_paths = [campaign_root / name for name in REQUIRED_LEDGERS]
        missing = [path.name for path in ledger_paths if not path.is_file()]
        if missing:
            raise CheckpointFailure(
                "campaign omits required live ledgers: " + ", ".join(missing)
            )

        phase = "preflight-validation"
        common_root = ["-RepositoryRoot", str(root)]
        gates.append(
            run_gate(
                root,
                "preflight repository validation",
                "validate_repository.ps1",
                common_root,
            )
        )
        gates.append(
            run_gate(
                root,
                "preflight runtime configuration validation",
                "validate_runtime_configuration.ps1",
                common_root,
            )
        )

        phase = "ordinal-allocation"
        checkpoint = next_checkpoint_name(saves)
        final = saves / checkpoint
        if final.exists():
            raise CheckpointFailure(f"checkpoint target already exists: {checkpoint}")
        staging = saves / f".{checkpoint}.staging-{token}"
        staging.mkdir()

        phase = "staging-copy"
        copied: list[dict[str, Any]] = []
        ledger_ids: list[str] = []
        for source in ledger_paths:
            target = staging / source.name
            shutil.copyfile(source, target)
            source_hash = sha256(source)
            target_hash = sha256(target)
            if source_hash != target_hash:
                raise CheckpointFailure(f"byte verification failed for {source.name}")
            copied.append(
                {
                    "file": source.name,
                    "sha256": target_hash,
                    "bytes": target.stat().st_size,
                }
            )
            ledger_ids.append(ledger_record_id(source))

        character = single_line(
            startup.get("default_protagonist"), "startup.default_protagonist"
        )
        manifest_text = generate_manifest(
            root,
            campaign,
            world,
            character,
            checkpoint,
            parent,
            checkpoint_type,
            label,
            manifest_input,
            ledger_ids,
        )
        manifest_path = staging / "900_SAVE_MANIFEST.md"
        manifest_path.write_text(manifest_text, encoding="utf-8")
        manifest_hash = sha256(manifest_path)

        phase = "pointer-promotion"
        index_path = root / "system" / "WORLDS_AND_CAMPAIGNS.md"
        for path in (startup_path, current_state, index_path):
            originals[path] = path.read_bytes()
        update_startup_pointer(startup_path, campaign, checkpoint, token)
        update_current_pointer(current_state, checkpoint, label, token)
        shutil.copyfile(current_state, staging / "180_CURRENT_STATE.md")
        copied[-1] = {
            "file": "180_CURRENT_STATE.md",
            "sha256": sha256(staging / "180_CURRENT_STATE.md"),
            "bytes": (staging / "180_CURRENT_STATE.md").stat().st_size,
        }
        os.replace(staging, final)
        staging = None

        phase = "index-generation"
        gates.append(
            run_gate(
                root,
                "runtime index generation",
                "generate_runtime_index.ps1",
                common_root,
            )
        )
        gates.append(
            run_gate(
                root,
                "runtime index synchronization",
                "generate_runtime_index.ps1",
                common_root + ["-Check"],
            )
        )

        phase = "checkpoint-validation"
        gates.append(
            run_gate(
                root,
                "repository validation",
                "validate_repository.ps1",
                common_root,
            )
        )
        gates.append(
            run_gate(
                root,
                "runtime configuration validation",
                "validate_runtime_configuration.ps1",
                common_root,
            )
        )
        gates.append(
            run_gate(
                root,
                "checkpoint contract",
                "test_checkpoint_contract.ps1",
            )
        )

        phase = "final-read-back"
        for ledger in copied:
            captured = final / ledger["file"]
            if sha256(captured) != ledger["sha256"]:
                raise CheckpointFailure(
                    f"final checkpoint read-back changed {ledger['file']}"
                )
        if sha256(final / "900_SAVE_MANIFEST.md") != manifest_hash:
            raise CheckpointFailure("final checkpoint read-back changed the manifest")

        emit_receipt(
            {
                "receipt_version": "1.0",
                "status": "created",
                "campaign": campaign,
                "checkpoint": checkpoint,
                "parent": parent,
                "path": final.relative_to(root).as_posix(),
                "mutation_targets": verified_targets,
                "copied_ledgers": copied,
                "manifest_sha256": manifest_hash,
                "updated_pointers": [
                    startup_path.relative_to(root).as_posix(),
                    current_state.relative_to(root).as_posix(),
                    index_path.relative_to(root).as_posix(),
                ],
                "gates": gates,
            }
        )
        return 0
    except BaseException as exc:
        rollback_errors: list[str] = []
        for path, content in originals.items():
            try:
                atomic_write_bytes(path, content, token)
            except OSError as rollback_exc:
                rollback_errors.append(f"{path}: {rollback_exc}")
        if final is not None and final.exists():
            recovery = final.with_name(f".{final.name}.staging-{token}")
            try:
                os.replace(final, recovery)
                staging = recovery
            except OSError as rollback_exc:
                rollback_errors.append(f"{final}: {rollback_exc}")
        error = str(exc) or exc.__class__.__name__
        emit_receipt(
            {
                "receipt_version": "1.0",
                "status": "failed",
                "phase": phase,
                "error": error,
                "staging_path": (
                    staging.relative_to(root).as_posix()
                    if staging is not None and staging.exists()
                    else None
                ),
                "rollback_errors": rollback_errors,
            }
        )
        print(f"Transactional checkpoint FAILED during {phase}: {error}", file=sys.stderr)
        if rollback_errors:
            print(
                "Rollback also reported: " + "; ".join(rollback_errors),
                file=sys.stderr,
            )
        return 1
    finally:
        if descriptor is not None:
            os.close(descriptor)
        if lock_path is not None and lock_path.exists():
            try:
                lock_path.unlink()
            except OSError:
                pass


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repository-root", required=True)
    parser.add_argument("--campaign", required=True)
    parser.add_argument("--checkpoint-type", required=True)
    parser.add_argument("--label", required=True)
    parser.add_argument("--expected-parent", required=True)
    parser.add_argument("--mutation-receipt", required=True)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    try:
        return create_checkpoint(args)
    except CheckpointFailure as exc:
        emit_receipt(
            {
                "receipt_version": "1.0",
                "status": "failed",
                "phase": "argument-validation",
                "error": str(exc),
                "staging_path": None,
                "rollback_errors": [],
            }
        )
        print(f"Transactional checkpoint FAILED: {exc}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    signal.signal(signal.SIGTERM, lambda _signum, _frame: (_ for _ in ()).throw(KeyboardInterrupt()))
    raise SystemExit(main())
