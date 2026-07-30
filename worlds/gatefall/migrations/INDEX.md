# Gatefall — Profile Migration Index

**File:** `worlds/gatefall/migrations/INDEX.md`
**Class:** World rule content (Decision 062): authoritative on behavior in its declared scope; owns no Persistent Object.
**World:** Gatefall
**Active Profile:** 1.39
**Chain:** 1.1 → 1.39, contiguous, 38 edges

---

# 1. What This Is

The active World Rule Profile carries current mechanical law only. The version history that transforms an older capture into the active version lives here, one record per edge.

Restoring a checkpoint captured under Profile `V` runs every record from `V` forward to the active version, in order, and reads no other migration text. A current rule lookup reads none of them.

Each record is authoritative for its own edge. Where a record and the active profile disagree about present law, the active profile governs → a migration record describes a transformation, not a standing rule.

---

# 2. The Chain

| Edge | Class | Fictional time | Requires | Record |
|---|---|---|---|---|
| 1.1 → 1.2 | required | unstated | rolls, owner ruling | `1.1_to_1.2.md` |
| 1.2 → 1.3 | required | unstated | rolls, owner ruling | `1.2_to_1.3.md` |
| 1.3 → 1.4 | required | unstated | owner ruling | `1.3_to_1.4.md` |
| 1.4 → 1.5 | required | unstated | owner ruling | `1.4_to_1.5.md` |
| 1.5 → 1.6 | required | unstated | owner ruling | `1.5_to_1.6.md` |
| 1.6 → 1.7 | required | unstated | owner ruling | `1.6_to_1.7.md` |
| 1.7 → 1.8 | treatment | unstated | owner ruling | `1.7_to_1.8.md` |
| 1.8 → 1.9 | treatment | unstated | owner ruling | `1.8_to_1.9.md` |
| 1.9 → 1.10 | treatment | unstated | owner ruling | `1.9_to_1.10.md` |
| 1.10 → 1.11 | treatment | unstated | owner ruling | `1.10_to_1.11.md` |
| 1.11 → 1.12 | required | unstated | owner ruling | `1.11_to_1.12.md` |
| 1.12 → 1.13 | required | none | owner ruling | `1.12_to_1.13.md` |
| 1.13 → 1.14 | required | none | owner ruling | `1.13_to_1.14.md` |
| 1.14 → 1.15 | treatment | unstated | owner ruling | `1.14_to_1.15.md` |
| 1.15 → 1.16 | required | none | owner ruling | `1.15_to_1.16.md` |
| 1.16 → 1.17 | required | none | owner ruling | `1.16_to_1.17.md` |
| 1.17 → 1.18 | treatment | none | owner ruling | `1.17_to_1.18.md` |
| 1.18 → 1.19 | required | none | owner ruling | `1.18_to_1.19.md` |
| 1.19 → 1.20 | required | none | owner ruling | `1.19_to_1.20.md` |
| 1.20 → 1.21 | required | none | owner ruling | `1.20_to_1.21.md` |
| 1.21 → 1.22 | required | none | owner ruling | `1.21_to_1.22.md` |
| 1.22 → 1.23 | treatment | unstated | owner ruling | `1.22_to_1.23.md` |
| 1.23 → 1.24 | required | unstated | owner ruling | `1.23_to_1.24.md` |
| 1.24 → 1.25 | required | unstated | owner ruling | `1.24_to_1.25.md` |
| 1.25 → 1.26 | treatment | unstated | owner ruling | `1.25_to_1.26.md` |
| 1.26 → 1.27 | treatment | unstated | owner ruling | `1.26_to_1.27.md` |
| 1.27 → 1.28 | treatment | unstated | owner ruling | `1.27_to_1.28.md` |
| 1.28 → 1.29 | treatment | unstated | owner ruling | `1.28_to_1.29.md` |
| 1.29 → 1.30 | treatment | unstated | owner ruling | `1.29_to_1.30.md` |
| 1.30 → 1.31 | treatment | unstated | owner ruling | `1.30_to_1.31.md` |
| 1.31 → 1.32 | required | unstated | owner ruling | `1.31_to_1.32.md` |
| 1.32 → 1.33 | required | none | owner ruling | `1.32_to_1.33.md` |
| 1.33 → 1.34 | required | none | owner ruling | `1.33_to_1.34.md` |
| 1.34 → 1.35 | required | none | owner ruling | `1.34_to_1.35.md` |
| 1.35 → 1.36 | treatment | none | owner ruling | `1.35_to_1.36.md` |
| 1.36 → 1.37 | treatment | none | owner ruling | `1.36_to_1.37.md` |
| 1.37 → 1.38 | treatment | none | owner ruling | `1.37_to_1.38.md` |
| 1.38 → 1.39 | treatment | none | owner ruling | `1.38_to_1.39.md` |

`fictional time` reports what the record itself states. `unstated` means the source prose declares no cost and none may be inferred.

---

# 3. Chain Rules

1. The chain is directed and contiguous: every edge's target is the next edge's source, with no gap, branch, duplicate, or cycle.
2. Exactly one edge terminates at the active profile version.
3. A `required-migration` edge transforms stored state and must run. A `compatibility-treatment` edge requires no recomputation, but its prospective rules still apply from adoption forward.
4. Immutable checkpoints are never rewritten by a migration. Restoration applies the chain to mutable live state.
5. Adding a profile version adds exactly one record here and moves the active version pointer. Run `tools/extract_profile_migrations.py` after each adoption; migration prose is never left in the active profile.

---

# 4. Validation

`tools/validate_runtime_configuration.ps1` checks that this index and the record set agree: the chain is contiguous and acyclic, every declared record exists, every record file present is declared, each record's YAML source/target matches its filename and its row, and the chain terminates at the profile's active version. It also fails if migration prose reappears in the active profile.
