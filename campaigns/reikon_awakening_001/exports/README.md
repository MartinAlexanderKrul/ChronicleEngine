# Session Exports — Reikon Awakening 001

**Authority:** Non-canonical derived artifacts (Decision 056). These files establish no canon, mint no identifiers, and run neither the Promotion Barrier nor the Repository Validation Gate. Authoritative state is owned by the live campaign ledgers (`100`–`180`).

This README carries the provenance and audit context. The export files themselves are preserved **verbatim** and are not annotated — they are evidence, and evidence is not edited.

---

# Contents

| File | Session | Contains |
|------|---------|----------|
| `play_export_0001.md` | Session 1 (2026-07-13) | The actual expedition: training, solo commitment, entry into Warehouse 7, both combats, both mana recoveries, pack-leader standoff |
| `play_export_0002.md` | A later resumption (2026-07-14) | Four turns only: repository load, `/system`, `/help`, `/export`. **No gameplay.** |
| `session_2_promotion_audit.md` | Recovered continuation (reviewed 2026-07-15) | Redacted evidence audit, original Profile-0.4 stopping point, and the superseding Profile-0.5 owner ruling that preserves the complete continuation; not a raw transcript |

Both files were authored before Decision 056's export register (`[NARRATOR]` / `[PLAYER]` / `[ROLL]` / …) was applied to this campaign. `play_export_0001.md` uses `[Player Action]` / `[Narrative]` headings instead. They are committed in their original form rather than reformatted to the current convention.

`session_2_promotion_audit.md` is a derived audit rather than a chat export. The public source exposed a live credential, so the repository deliberately retains neither the raw conversation nor the credential-bearing message.

## Naming caveat

Both source files were named `REIKON_SESSION_001_*`, implying both cover Session 1. Only `play_export_0001.md` does. `play_export_0002.md` is a later session that loaded the repository and inspected character state without advancing the simulation; its own metadata block claiming `Session: 1` is inaccurate. The filenames here reflect capture order, and this table is the authority on what each contains.

---

# Audit — Session 1 reconstruction verified (2026-07-14)

The 2026-07-14 Data Model conformance migration reconstructed Session 1 canon into standard Canonical Records (`REC-000038`–`REC-000045`) because the played canon existed only inside an immutable, malformed checkpoint. That reconstruction was structurally valid but **unverified against play** — the transcript was not in the repository.

`play_export_0001.md` closes that gap. The reconstruction was audited against it and is **materially faithful**:

| Fact | Transcript | Live canon |
|------|-----------|------------|
| XP | 36/100 | 36/100 |
| Kills | 2 Broodlings + 3 Swarmers | 2 + 3 |
| Resolution rolls | d100: 43, d100: 61 | 43, 61 |
| Health / Mana | 100/100, 13/13 | 100/100, 13/13 |
| Location | ~40 m from pack leader | "approximately 40–50 metres" |
| Inventory | 8/10; 3 potions and stone unused | 8/10; unused |
| Stats | 8 / 9 / 10 / 13 / 14 | 8 / 9 / 10 / 13 / 14 |

The XP arithmetic independently confirms Reikon's declared per-challenge model (`205_THE_LEDGER.md`): 12 XP for two Broodlings (6 each), 24 for three Swarmers (8 each).

The reconstruction also **correctly resolved a contradiction inside the transcript**. The narration at the close of Combat 2 states "Three Broodlings and three Swarmers are dead or dying," but Combat 1 establishes two Broodlings and the XP arithmetic (12 = 2 × 6) confirms two. Live canon records two.

Daedalus's observation that the Rift's luminescence intensifies with the pack leader's movement was promoted into `100_CHARACTER_SHEET.md` `canonical_state.knowledge` — a Knowledge State correctly carried from narration into canon.

## Discrepancies logged (not corrected)

Both are recorded here as evidence. Neither is corrected in canon: immutable history is not rewritten, and neither affects current state.

1. **Flame Shield cost narrated at roughly one tenth of its declared rate.** The transcript's training scene spends 4 mana holding Flame Shield for five seconds (13 → 11 → 5 → 1). The character sheet declares `Flame Shield (Lv 1) — 8 mana/sec`, which is 40 mana for that duration. The Runtime narrated a cost rather than reading the declared one. Current state is unaffected — mana returned to 13/13 before the expedition — but under Decisions 057 and 059 mana is tracked state that gates whether a cast may be attempted, so the declared cost is load-bearing going forward.

2. **The enemy's in-flight action never resolved.** Three Swarmers charge from 25 m to 10 m; one Fireball resolves; all three die; Daedalus takes zero damage and spends nothing but mana. This is the frictionless-win failure already recorded as finding #3 and closed by Gameplay Runtime Profile 1.22 ("The Roll Resolves the Action, Not the Encounter — and the Enemy Acts"). `play_export_0001.md` is the primary evidence for it.

3. **Modifier steps are not attested in the transcript.** `160_CAMPAIGN_CHRONICLE.md` records `EVT-000026` as "rolls 43 with +2 modifier steps" and `EVT-000028` as "rolls 61 with +1 modifier step." The transcript records only the bare results — `d100: 43 — success` and `d100: 61 — success` — with no modifier of any kind. The values therefore entered canon from the pre-migration chronicle rather than from play. Decision 058 already dispositioned this ("existing logged Reikon modifiers of `+1` and `+2` are interpreted as steps; immutable historical rolls and narrated outcomes are not rewritten"), and both outcomes stand as successes under either reading, so nothing is corrected. Recorded here because the audit found no tier-2 evidence for them.

## Narrated verification of mechanisms that do not exist

`play_export_0002.md` is retained specifically as evidence of a recurring failure shape, independent of the save layer:

- It claims "All files verified and **checksummed**." Chronicle Engine has no checksum mechanism; Rules Section 13.6 lists checksums as explicitly deferred.
- It claims "All 8 checkpoint ledger files present and verified" for `saves/900_CHECKPOINT_001/`, which is missing three required ledgers.
- Its `/help` output describes `/restart` as "Restart from latest checkpoint." `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` defines `/restart` as **Redo: reset the campaign to its baseline checkpoint** (Decision 053) — the opposite operation, and destructive. The Runtime improvised the command table instead of rendering it.

Together with `saves/900_CHECKPOINT_001/SAVE_MANIFEST_001.md`, which self-reports a deterministic validator PASS that never ran, these show the pattern is not confined to checkpoints: **where no mechanical gate exists, the Runtime narrates the gate's success.** This is the Decision 054 / Decision 055 lesson recurring at points those decisions do not yet cover.
