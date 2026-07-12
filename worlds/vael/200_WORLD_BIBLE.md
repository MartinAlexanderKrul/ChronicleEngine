# Chronicle Engine

## World Bible — Vael (Working Draft)

**World Version:** 0.1 (Workshop Draft — litRPG demonstration world)
**Status:** Draft — not instantiated; identifiers to be allocated on instantiation
**Engine Compatibility:** 0.1.5 (Foundation Release); Data Model 0.1.1
**Progression:** Emergent (Rules Sections 4–5), surfaced diegetically through the Ledger (Decision 051)
**Calendar:** After the Ledger (AL); the present is **Year 523 AL**

---

# Purpose and Status

Vael is a **demonstration world** for Decision 051's world-diegetic System layer: a setting where a litRPG "System" is real *within the fiction*, yet every action still resolves through Chronicle Engine's ordinary emergent simulation (Rules Sections 4–5). It exists to show that an aggressive litRPG experience can be delivered **entirely at the world layer**, through the Supernatural Phenomena Contract (Rules Section 11), with no engine change.

This is a **draft**. The names, tone, and history below are a starting point to react to and reskin. The load-bearing content is the Ledger's Section 11 contract and the engine-compliance boundary; the flavor can become cultivation, dungeon-crawl, or post-apocalyptic without changing that boundary.

Vael is **not canonical world content** until instantiated with real identifiers from `system/ID_REGISTRY.md`. The official world remains Asterra; Verra remains the Prototype Alpha validation world.

---

# The World

Vael is five centuries into the age of the Ledger. No one alive remembers a world without it. Society is organized, top to bottom, around **Standing** — the rank the Ledger assigns each soul — and around the **Breaches**, wounds in the world that disgorge monsters and, to those who close them, the fastest advancement a person can earn.

Guilds certify who may walk which path. Temples preach what the Ledger *is*. Academies dissect how it *works*. Crowns conscript those who rise highest. The result is a world that looks, to its inhabitants, exactly like a game with levels — and behaves, underneath, exactly like history.

---

# The Ledger (the System)

Every person born in Vael is **Inscribed**. Each can see, for themselves alone, their own page: a **Standing** (overall level), a spread of **Aspects** (Might, Reflex, Wit, Presence, and the like), **Marks** (learned skills and techniques), and a **Progression** track — the diegetic "experience" that fills as they grow. When a bearer has genuinely advanced, the Ledger announces it: a felt, luminous **Ascension** — the "level-up."

## The Ledger — Supernatural Phenomena Contract (Rules Section 11.2)

**Source / origin.** The Ledger appeared at the **Advent**, some 523 years ago. Its origin is genuinely unknown and actively disputed: a divine covenant (the Temples), the residue of a fallen elder civilization's working (the Academies), or an indifferent law of nature no one authored (the skeptics). No account is proven; the Advent left no manual.

**Access.** Everyone is Inscribed at birth — the readout is universal. **Advancement is not.** It requires genuine ordeal, practice, study, and deeds, never mere wishing. **Classes** — recognized progression paths — may require apprenticeship, institutional recognition, or rite to formally "open," and the desirable ones are gatekept.

**Costs and limitations.** The Ledger **measures; it does not gift.** No Standing lets a bearer exceed what they can actually do — the impossible stays impossible (Rules Section 4.2). Advancement demands real cost: time, risk, hardship, tutelage. "Grinding" without genuine growth yields nothing; the Ledger cannot be farmed by rote. Marks must be learned and practiced (Rules Sections 5.3, 8); they are not bought with Progression.

**Risk.** Proportional and real. Breaches disgorge monsters that kill; there is no plot armor (Rules Section 6). Rapid ascent draws danger — deeper Breaches, envious rivals, a Crown's conscriptors. Forbidden Classes and corrupted Marks inflict lasting harm (Character State, Rules Section 5.8).

**Discovery, teaching, transmission.** How the Ledger truly works is itself a **Knowledge Subject** (Rules Section 8): studied empirically by the Academies, certified into practice by the Guilds, fixed into doctrine by the Temples, and mythologized by everyone else. Understanding is uneven, contested, and often simply wrong.

**Social and institutional consequences.** Vael is stratified by Standing. Guilds certify Classes and license Marks; Crowns conscript high-Standing bearers and tax Breach-spoils; Temples interpret the Advent and police heresy; and a black market trades in forbidden Marks, illicit tutelage, and **forged readings**.

---

# Engine Compliance — the Ledger is a lens, not a resolver (Decision 051)

This is the boundary that keeps Vael a Chronicle Engine world and not a different engine:

- **The Ledger is the world's diegetic representation of emergent capability, not a second resolution system.** When a character acts, resolution is still intent + circumstance + d100 (Rules Section 4) against demonstrated capability. A high Aspect *reflects* genuine established capability and functions as an ordinary **Modifier** (Rules Section 4.4) — never an override, gate, or auto-success.
- **Growth is still lived (Rules Section 5).** Closing a Breach *is* real combat experience; the rising Progression bar and the Ascension are the Ledger's **display** of that emergent growth (Decision 051), never its cause. Growth precedes the level-up — never the reverse.
- **The readout is a claim, not objective truth (Rules Section 2.2).** A Ledger page can be misread, spoofed, suppressed, forged, or disputed like any other information; the display is Character and Public Knowledge, not Objective Reality. NPCs act on their *beliefs* about Standing, which can be wrong — an assassin who trusts a forged low reading dies of the mistake.
- **No universal power pool.** Progression is a diegetic tally, not a spendable resource (consistent with Decisions 012, 013, 018; Rules Section 11.3).

In short: to its people, Vael is a world of levels and stats. To the engine, it is an ordinary emergent simulation wearing a diegetic interface. Both are true at once — which is precisely the world-first design the engine exists for.

---

# The Institutions (sketch)

Three contesting institutions, each an Institution under Rules Section 9, echoing the clean validator / restrictor / monopolist tension proven in Verra — but here the contested thing is the System itself:

- **The Assay** — the assessors' guild that certifies Classes and licenses Marks. The **credentialing power**: it decides who is allowed to be what.
- **The Concord of the Advent** — the temple-order holding the divine-origin doctrine and policing heresy about the Ledger's nature. The **restrictor**.
- **The Aurologium** — the academy studying the Ledger empirically, whose findings about how it *actually* works keep colliding with Concord doctrine. The **validator**.
- *(Optional fourth)* **The Wardency** — a Crown office that conscripts high-Standing bearers to close Breaches and taxes their spoils. The **state interest**.

---

# Planned Ledgers (to create on instantiation)

Identifiers are allocated from `system/ID_REGISTRY.md` only when Vael is instantiated as canonical; none are minted by this draft.

| Ledger | Contents |
|--------|----------|
| `210_PLACES.md` | Vael's region; a seat-of-play town; a nearby Breach |
| `220_NOTABLE_FIGURES.md` | Institutional heads; a rival; a black-market fixer |
| `230_KNOWLEDGE_SUBJECTS.md` | **The nature of the Ledger** (disputed origin); a forbidden Class; the forging of readings |
| `240_RESOURCES.md` | A forged Ledger-token; a Marked relic; a Breach-core |
| `institutions/the-assay/250_INSTITUTION_LEDGER.md` | The Assay |
| `institutions/concord-of-the-advent/250_INSTITUTION_LEDGER.md` | The Concord |
| `institutions/the-aurologium/250_INSTITUTION_LEDGER.md` | The Aurologium |
| `260_SEED_EVENTS.md` | The Advent; the founding of the three institutions; a recent Breach surge |

---

# Notes for Reskinning

Everything above the Engine Compliance section is flavor and may be freely replaced. Whatever the reskin, three things must hold, or Vael stops being a Chronicle Engine world:

1. The System **displays** capability; it never **grants** it (Decision 051 bright line).
2. Action resolution stays on Rules Section 4; growth stays on Rules Section 5.
3. The System's readouts are in-world **information** (Rules Section 2.2), not objective truth — they can be wrong, hidden, or forged.
