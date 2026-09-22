# Hunter Population Model (Pendragon Guild Offices)

**Status:** canon, adopted retroactively `2026-09-22` (real date), superseding the dice-rolled office totals authored at `EVT-001129`-`EVT-001144` (`140_OBJECTIVES.md`, OBJ-60). Governs every office's plausible membership ceiling and is the required method for **all future recruitment events** (new cities, re-runs, any growth to an existing office).

---

## 1. Baseline density ratios

Two real-world-anchored baselines, derived from the world bible's own canonical figures (`worlds/gatefall/200_WORLD_BIBLE.md` Section 3, line 58/63-64) rather than a single flat worldwide rate:

- **US baseline — Chicago.** 1,200 licensed hunters / 9.5M metro population = **1 hunter per 7,917 people.** Applied to every US office.
- **EU baseline — Prague.** 350 licensed hunters / 2.3M metro population = **1 hunter per 6,571 people.** Applied to every European office.
- **Exemptions (do not use the EU rate as a hard cap):** Istanbul and Tel Aviv. Istanbul runs on the EU-derived rate only for lack of a baseline of its own — Turkey's smaller hunter economy is assumed, not the EU cap. Tel Aviv is exempt from any cap entirely: Israel's wartime footing plausibly diverts awakened talent toward conventional defense rather than the Gate trade, so its capture rate is allowed to run high without being treated as an error.

**Formula:** `Est. Licensed Hunters (office) = Metro/Agglomeration Population ÷ baseline ratio for that region`

Use each city's own metro area, not a wider multi-city conurbation (e.g., Amsterdam is its own ~2.5M metro, not the ~8.4M Randstad) — folding in unrelated neighboring cities to make a number fit is not permitted.

## 2. Capture-rate bounds (guild members ÷ Est. Licensed Hunters)

- **General bound:** 10%–50% for a single office after its tour stop plus any campaign to date. Below 10% isn't worth the stop; above 50% is implausible for a two-week-old guild against an established local trade (Ironline, Horizon, Karlov, etc.).
- **EU-specific bound:** capped at **19%** for every European office (Prague, Frankfurt, Paris, Amsterdam, Stockholm, London) — Europe's guild landscape (Brandhof, Zenith, Karlov, Horizon-Europe) is more entrenched than the US market, so European capture should run at the low end of plausible.
- **Exceptions:** Chicago (48%, home-city founder effect plus Ironline's active collapse there) and Seattle (29%) were deliberately swapped from their initial values on exactly that reasoning — home turf should out-recruit a cold stop. Istanbul (20%) and Tel Aviv (47%) are exempt from the EU cap per Section 1's reasoning. London remains at 0% because its recruitment event has not been held in the campaign record — not a capture-rate violation.
- Any newly recruited office must land inside these bounds before its number is accepted; if a dice-rolled turnout would breach the cap, scale the signed total down (or up, for a sub-10% result) proportionally across its Rank split rather than accepting the raw roll.

## 3. Canonical office table (supersedes OBJ-60's per-office splits)

| Office | E | D | C | B | A | S | Guild Members | City Pop. | Metro Pop. | Est. Licensed Hunters | Capture % |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Chicago | 209 | 148 | 111 | 69 | 39 | 1 (Elias Kane) | **577** | 2.7M | 9.5M | 1,200 | 48% |
| Washington DC | 36 | 60 | 38 | 16 | 8 | 0 | 158 | 690K | 6.3M | 796 | 20% |
| Prague | 25 | 14 | 11 | 8 | 3 | 0 | 61 | 1.3M | 2.3M | 350 | 17% |
| Frankfurt | 45 | 57 | 34 | 25 | 7 | 0 | 168 | 770K | 5.8M | 883 | 19% |
| New York | 147 | 109 | 98 | 40 | 18 | 0 | 412 | 8.3M | 19.5M | 2,463 | 17% |
| Boston | 56 | 47 | 36 | 25 | 4 | 0 | 168 | 650K | 4.9M | 619 | 27% |
| Miami | 53 | 59 | 31 | 21 | 10 | 0 | 174 | 440K | 6.1M | 770 | 23% |
| Houston | 136 | 95 | 57 | 45 | 17 | 0 | 350 | 2.3M | 7.3M | 922 | 38% |
| Paris | 88 | 71 | 47 | 39 | 6 | 0 | 251 | 2.1M | 11.0M | 1,674 | 15% |
| Amsterdam | 24 | 20 | 15 | 10 | 3 | 0 | 72 | 920K | 2.5M | 380 | 19% |
| Dallas | 67 | 59 | 25 | 26 | 7 | 0 | 184 | 1.3M | 7.9M | 999 | 18% |
| Los Angeles | 64 | 54 | 40 | 25 | 6 | 0 | 189 | 3.9M | 13.0M | 1,642 | 12% |
| Seattle | 48 | 38 | 31 | 26 | 3 | 0 | 146 | 740K | 4.0M | 505 | 29% |
| San Francisco | 67 | 60 | 45 | 29 | 8 | 1 (Dario Wexler) | 210 | 815K | 4.7M | 594 | 35% |
| Tel Aviv | 116 | 81 | 58 | 27 | 6 | 1 (Itai Barak) | 289 | 460K | 4.0M | 609 | 47% |
| Istanbul | 174 | 110 | 112 | 56 | 20 | 0 | 472 | — | 15.5M | 2,359 | 20% |
| Stockholm | 25 | 20 | 12 | 7 | 5 | 0 | 69 | 980K | 2.4M | 365 | 19% |
| London | 151 | 120 | 86 | 52 | 22 | 0 | **431** | 9.0M | 14.9M | 2,267 | 19% |
| **Guild Total** | **1,531** | **1,222** | **887** | **546** | **192** | **3** | **4,381** | — | **~141.6M** | **~21,667** | **~20%** |

This table is authoritative. It replaces the `140_OBJECTIVES.md` OBJ-60 per-office numbers and the "Guild membership: 3,716" figure wherever cited in `180_CURRENT_STATE.md` and elsewhere in the live record. Kane (Chicago, S-Rank) is now counted as a member — he is second-in-command over operations, not a co-founder exempted from headcount.

## 4. Procedure for future recruitment events

1. Determine the office's region (US or EU) and pull its metro/agglomeration population.
2. Compute `Est. Licensed Hunters` from Section 1's formula (or use a stated exemption from Section 1).
3. Roll or narrate the event's turnout/signing as usual.
4. Before accepting the signed total as canon, check it against Section 2's bounds relative to the office's **cumulative** membership (this event plus any prior signings there). Scale the Rank split proportionally if it falls outside bounds.
5. Update this file's table and the guild total in `180_CURRENT_STATE.md`.

**Not covered by this model:** raw awakened counts (non-hunters), artificer/mender sub-registries (`140_OBJECTIVES.md` already tracks these separately at `EVT-001134`), and any city outside this office list — extend Section 1's method to a new city only once its region and population are established in play.
