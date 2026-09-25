# Guild Gate Clearance Log — The Pendragon Guild

**Campaign:** Gatefall: Pendragon — **World:** Gatefall
**Status:** operational, **non-canonical**

---

**What this is, and what it is not.** An operational log of every Gate the Pendragon Guild has answered — as respondent, as a dispatched element, or through its founder acting for it. Requested by the player at checkpoint 0164.

**It is not canon and owns nothing.** It mints no identifier, carries no Object Block, bumps no provenance, and is excluded from checkpoint snapshots alongside `090` and `095`. Every row cites the Event that owns the fact; where this file and `160_CAMPAIGN_CHRONICLE.md` disagree, **the chronicle governs**. It exists so the guild's own record of its work can be read in one place without walking the chronicle.

---

## Save Procedure

**Regenerating is not updating: the guild view is only as current as its two inputs.** Rebuilding
re-renders whatever `096` and `151` hold, so a save that did not write them publishes a stale guild page
that looks fresh. Before the rebuild, every `/save` that touches the guild writes both:

- **`096_GUILD_CLEARANCE_LOG.md`, `## Clearances`:** one row for **every** Gate the guild answered in the
  span: dispatched crews, contract towns, regulator-offered or named Gates, Alexander's own solo clears
  and emergency responses, and an office's job taken as met under standing preference 13. It also takes
  **one row per operational branch per day** for Section 13.7.5's automatic dispatch (the counts by Rank
  from that tick's `guild_ops`), and a row for a Gate still in its clear window, updated when it closes.
  `## Open and assigned` loses every row that closed and gains every Gate assigned but not yet cleared.
  New player rulings about how the guild works go under `## Standing rules`.
- **`151_HUNTER_POPULATION_MODEL.md` Section 7:** every regulator decision in the span. The generator
  counts an office as operational **only when its regulator cell begins with the plain word `accepted`**,
  with no bold and no prefix, followed by the date and the regulator. Update the tunnel cell and the
  section's opening status sentence in the same pass.

Then rebuild, and confirm from the generator's own summary line (`N clearances`, and the operational
count in the guild page) that the numbers moved as the span says they should. A figure that did not move
is a write that did not happen.

---

## Clearances

| # | Date | Gate | Rank | Population | Responded by | Outcome | Payout | Event |
|---|---|---|---|---|---|---|---|---|
| 1 | 2026-09-24 | Prague (district unspecified) | D | D | Prague office crew — Milena Horáková dispatching; Tomas Prochazka, Klara Nováková | Cleared. The guild's first dispatched Gate response anywhere. Crew gear-audited by Kane before entry and re-equipped at guild cost. | not recorded | `EVT-001084` |
| 2 | 2026-09-25 | Calumet corridor, far South Side, Chicago | A | **S** | Guild element of ten, **Elias Kane commanding** | Cleared. Region V had the commanding name and roster inside its 10:00 deadline. The guild's first A-Rank without Alexander inside it. | **$3,300,000 → guild account** | `EVT-001099` |
| 3 | 2026-09-25 | Tulsa, east side, Oklahoma | B (broken 03:10 local) | B | **Alexander Pendragon, solo** | Cleared, ten kills (8 commons, 1 elite, 1 boss). Cordon held; the evacuation did not widen past the third block. | **$1,650,000 → Alexander personally** | `EVT-001097` |
| 4 | 2026-09-26 | Karlín tram depot, Prague | A (as assessed) | **S** | **Alexander Pendragon, solo** | Cleared in ten exchanges; 595 damage taken. Archetype Flooded Mine. Stripped clean inside the two-hour window: 267 S-Rank crystals, 3 cores, 1 Elixir. | **≈$2,310,000 → Alexander personally**, due Monday 2026-09-28 | `EVT-001104` |
| 5 | 2026-09-27 | Prague (district unspecified) | B | B | Prague office crew, fed from Frankfurt through the tunnel — Milena Horáková dispatching | Cleared 00:41 Prague local, fifteen in and fifteen out. | not recorded | `EVT-001114` |
| 6 | 2026-09-29 | GB-58, on his route, Chicago | B | B | Priya Menon's crew, ordinary guild dispatch | Cleared clean inside its window. | not recorded | `EVT-001148`, `EVT-001154` |
| 7 | 2026-09-29 | GB-59, on his route, Chicago | D | D | A D-Rank pair, ordinary guild dispatch | Cleared clean inside its window. | not recorded | `EVT-001148`, `EVT-001154` |
| 8 | 2026-09-30 | Winnetka lakefront path, Chicago | B | B | Chicago office — Imani Whitaker dispatching | Cleared before its timer: the office's job end to end, taken as met under the standing rule; no break recorded and no report on file. | not recorded | `OBJ-73` |
| 9 | 2026-09-30 | Milwaukee, Menomonee Valley | C | C | Chicago crew, 11 in (5 strikers, mender, sensor, miners) | Cleared clean, fast (natural 75, Legendary). | owed by the city of Milwaukee | `EVT-001188` |
| 10 | 2026-09-30 | Milwaukee, Jones Island | D | D | Chicago crew, 7 in (5 strikers, mender, sensor; mined its own Gate) | Cleared; one striker's forearm broken, off rotation two days (natural 16, Partial). | owed by the city of Milwaukee | `EVT-001188` |
| 11 | 2026-09-30 | Toledo, the old rail yard on the Maumee | B | B | Crew through the HQ tunnel, 16 in (9 strikers, mender, sensor, miners) | Cleared, no injuries, twelve minutes under plan; its 10-01 21:00 break averted (natural 96, Legendary). The city manager rang HQ to thank the guild. | owed by the city of Toledo | `EVT-001188` |
| 12 | 2026-09-30 | Toledo, near the port | C | C | Crew through the HQ tunnel, 11 in | Cleared clean; a crystal vein cut by the miners (natural 57, Exceptional). | owed by the city of Toledo | `EVT-001188` |
| 13 | 2026-09-30 | Toledo, downtown | D | D | Crew through the HQ tunnel, 7 in | Cleared; one striker concussed with two ribs broken, overnight in hospital (natural 1, Partial). | owed by the city of Toledo | `EVT-001188` |
| 14 | 2026-10-01 | Prague (CGA-named) | A | A | Céline Marchand's Continental A-Rank crew | Cleared before the 13:00 Prague window; 17 in, 17 out, two light injuries. | not recorded | `EVT-001201`, `EVT-001203` |
| 15 | 2026-10-01 | Evanston, Central Street at the Metra (a break in progress) | C | C | **Alexander Pendragon, solo**; the Chicago branch (Tamsin Okoro's team) arrived second on Region V's emergency contract | Cleared in five exchanges: 12 Stalkers, 2 Hounds, the Tiler. Eighteen civilians unhurt. The branch's first emergency contract. | **harvest to the Chicago branch** (Alexander waived his kills) | `EVT-001202` |
| 16 | 2026-10-01 | GB-63, Sheridan Road, Chicago (carded C) | C (as assessed) | **S, red gate** | **Alexander Pendragon, solo**, held for him by BGM National on his read | Boss (the Kilnfather) dead in one exchange; the seal open, the clear window running to 09:41. | **pending → Alexander personally** (Renata files it) | `EVT-001205` |
| 17 | 2026-10-01 | Automatic dispatch — Chicago branch, catchment Region V | E ×2 · D ×2 · C ×1 | as rolled | Chicago branch rota (Imani Whitaker dispatching) | 5 cleared, first automatic day (Section 13.7.5 daily dispatch). | branch revenue (Section 13.7.5) | `EVT-001201` |
| 18 | 2026-10-01 | Automatic dispatch — Washington branch, catchment Region III | E ×2 · D ×1 · C ×1 | as rolled | Washington branch rota (Verity Prescott dispatching) | 4 cleared, first automatic day. | branch revenue (Section 13.7.5) | `EVT-001201` |
| 19 | 2026-10-01 | Automatic dispatch — Frankfurt branch | E ×2 · D ×2 · C ×1 | as rolled | Frankfurt branch rota (Anselm Kretschmer dispatching) | 5 cleared, first automatic day. | branch revenue (Section 13.7.5) | `EVT-001201` |
| 20 | 2026-10-01 | Automatic dispatch — Paris branch | E ×2 · D ×1 · C ×2 · B ×1 | as rolled | Paris branch rota (Odile Fontaine dispatching) | 6 cleared, first automatic day. | branch revenue (Section 13.7.5) | `EVT-001201` |

**Automatic dispatch is one row per branch per day.** From the 2026-10-01 06:00 tick, operational branches run Section 13.7.5's daily dispatch as a rate: counts by Rank, not individual Gates, so each branch-day is one row. Day one (`EVT-001201`): **E 8, D 6, C 5, B 1 — 20 clears** across the four live branches.

**Why Karlín was entered alone.** Section 9.4's A-Rank legal minimum is **16 combat-rated hunters including at least one A-Rank**. Milena Horáková's Prague crew could not meet it, so the CGA accepted the guild as respondent with Alexander entering solo under a Karlov perimeter and a CGA observer at the mouth.

---

## Open and assigned, not yet cleared

| Gate | Rank | Assigned to | Standing at 2026-10-01 07:41 | Objective |
|---|---|---|---|---|
| Holešovice, Prague (CGA-offered) | A | Joost van Rijn's Amsterdam crew, through the tunnel — Milena Horáková dispatching | Taken for the guild on the standing rule (*offered means taken*); commander and roster to the CGA by 14:00 Prague 10-01. | `OBJ-78` |
| GB-63, Sheridan Road, Chicago | S (red gate, as run) | **Alexander Pendragon, solo** | Boss dead; nine Thralls and the Warden alive inside; loot and 384 S-Rank crystals in deposits unclaimed; window to 09:41. | `OBJ-68` |

---

## Standing rules this log records

1. **A solo clear pays the person who entered; a team clear pays the guild.** Karlín and Tulsa went to Alexander; Calumet went to the guild account. The guild being the named respondent does not by itself route the money. *(Runtime ruling, `EVT-001106` — not profile text.)*
2. **Once a Gate is in an office's hands, it is the office's job end to end.** Deadlines, rosters and commander filings belong to that office, and nothing further is owed by Alexander personally. *(Player ruling, 2026-09-26.)*
3. **Every office runs 24/7** with a night officer, and carries **two custodians**. *(Player ruling, `EVT-001101`.)*
4. **Offered means taken.** Every Gate a regulator offers the guild is taken; the guild has the bench for all of them. *(Player ruling, `EVT-001203`.)*
5. **Contract-town tickets need no founder.** HQ dispatch confirms and staffs Milwaukee and Toledo tickets on its own authority. *(Player ruling, `EVT-001181`.)*
6. **Every Gate is mined.** E- and D-Rank teams mine it themselves; C-, B- and A-Rank teams bring a mining team. *(Owner ruling, 2026-09-24 real date.)*
7. **Automatic dispatch from acceptance.** A branch whose regulator has accepted runs as a rate from the next 06:00 tick: Chicago, Washington, Frankfurt and Paris from 2026-10-01. *(Section 13.7.5; `EVT-001186`, `EVT-001199`.)*
