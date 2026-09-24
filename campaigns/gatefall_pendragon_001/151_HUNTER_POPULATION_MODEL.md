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
6. Re-apply Section 5's per-Rank rates to the new Rank totals and update Section 5's table; Section 6's team counts follow from it.

**Not covered by this model:** raw awakened counts (non-hunters), the nine unlicensed artificers held in the counsel queue (`EVT-001134` — no card, so no Rank), and any city outside this office list — extend Section 1's method to a new city only once its region and population are established in play.

## 5. Role registry by Rank (owner ruling, `2026-09-24` real date)

Closes the open owner question on mender, artificer and sensor counts for Ranks E to B. **A-Rank is the `EVT-001177` ruling unchanged.** For E to B the per-Rank rates are the ones the `EVT-001134` registry read (menders E 75/974, D 61/790, C 42/559, B 27/371; artificers E 60/974, D 48/790, C 34/559, B 22/371), applied to Section 3's current Rank totals. That read never counted sensors, so sensors take the A-Rank rate, 14 in 192. Anyone who is not a mender, sensor or artificer is a striker. The three S-Ranks are strikers. This supersedes the `EVT-001134` absolute counts (menders 215, artificers 172), which were read at an earlier membership.

| Rank | Cards | Strikers | Menders | Sensors | Artificers |
|---|---|---|---|---|---|
| E | 1,531 | 1,207 | 118 | 112 | 94 |
| D | 1,222 | 965 | 94 | 89 | 74 |
| C | 887 | 701 | 67 | 65 | 54 |
| B | 546 | 434 | 40 | 40 | 32 |
| A | 192 | 154 | 12 | 14 | 12 |
| S | 3 | 3 | 0 | 0 | 0 |
| **Total** | **4,381** | **3,464** | **331** | **320** | **266** |

**Per office there is no registry.** Any per-office role split is derived by spreading each Rank's counts over the offices by their cards at that Rank (largest remainder). A view that shows one must label it as derived and not as a count anyone has taken.

## 6. Standing team composition (owner ruling, `2026-09-24` real date)

This is the standing memo (`EVT-001109`) applied at each Rank. Strikers must be carded **at the team's Rank**. Every team has one mender and one sensor at its Rank, counted outside the strike count, and artificers never sit on a team. **A team counts as full only when its strikers, mender and sensor all come from cards at its own Rank.** **Miners go with C-, B- and A-Rank teams only** (support crew, not counted here); E- and D-Rank teams carry none.

| Rank | Strikers | Mender + sensor | Full teams, guild-wide |
|---|---|---|---|
| E | 5 (the posting floor's strike element) | 1 + 1 | 112 |
| D | 5 | 1 + 1 | 89 |
| C | 5 (legal minimum 4, plus one) | 1 + 1 | 65 |
| B | 9 (legal minimum 8, plus one) | 1 + 1 | 40 |
| A | 17 (legal minimum 16, plus one) | 1 + 1 | 9 (`EVT-001177`) |
| S | — (national-asset operations, not crewed) | — | — |
| **Total** | | | **315** |

At every Rank the mender and sensor seats limit the team count, not the strikers. **Only the nine A-Rank crews have named commanders** (Section 7). No commander is named for any E-to-B team.

## 7. Branch operations — Section 13.7.5 status by office

A branch runs as a **rate** (the daily E/D/C/B dispatch, no longer narrated Gate by Gate) once all four of Section 13.7.5's conditions hold: (1) a named dispatching officer, (2) round-the-clock cover, (3) a bench it can legally crew from, and (4) a **regulator's acceptance** of its filed standing relationship. The dispatching officer is the office head (`EVT-001130`). Night officers were named for every office at `EVT-001146`. The bench test is guild-wide over the tunnels, at 4,381 cards and ~243 per office, so every office qualifies for the full daily table once operational.

**As of `EVT-001194`, Chicago's regulator has accepted (Region V, 2026-09-30 15:24, `EVT-001186`) and Chicago runs as a rate from the 2026-10-01 06:00 tick; every other office is missing condition 4 alone.** All eighteen have filed (the original fourteen by `EVT-001146`, the four newer ones on 2026-09-29 at 18:00). No regulator has accepted anything in writing. Anjali Desai has cited **$95,870** in Gates lost to the gap (`EVT-001146`).

| Office | Dispatching officer | 1 | 2 | 3 | 4 — regulator | Tunnel | A-Rank crew based here |
|---|---|---|---|---|---|---|---|
| Chicago | Imani Whitaker | yes | yes | yes | **accepted 2026-09-30 15:24** on a modified dispatch annex (`EVT-001184`-`EVT-001186`); operational from the 10-01 06:00 tick | open | Jun-seo Baek (the response pool) |
| Washington DC | Verity Prescott | yes | yes | yes | filed, not accepted | open | — |
| Prague | Milena Horáková | yes | yes | yes | filed with the CGA, not accepted | open | — |
| Frankfurt | Anselm Kretschmer | yes | yes | yes | filed; Region III missed its verbal end-of-day, certified credentials sent, decision owed 10-01 05:00 Chicago (`EVT-001181`) | open | — |
| New York | Ramona Ostrowski | yes | yes | yes | filed, not accepted | open | Delroy Hutchins |
| Boston | Callum Doherty | yes | yes | yes | filed, not accepted | open | — |
| Miami | Cecilia Duarte | yes | yes | yes | filed, not accepted | open | Yolanda Arriaga |
| Houston | Roy Rawlins | yes | yes | yes | filed, not accepted | open | Mercedes Salinas |
| Paris | Odile Fontaine | yes | yes | yes | filed; Region III missed its verbal end-of-day, certified credentials sent, decision owed 10-01 05:00 Chicago (`EVT-001181`) | open | Céline Marchand (Continental Europe) |
| Amsterdam | Noor Vandermeulen | yes | yes | yes | filed, not accepted | open | Joost van Rijn |
| Dallas | Wyatt Delaney | yes | yes | yes | filed, not accepted | open | — |
| Los Angeles | Diego Villarreal | yes | yes | yes | filed, not accepted | open | — |
| Seattle | Lena Petersen | yes | yes | yes | filed, not accepted | open | Garrett Ishida (the West Coast) |
| San Francisco | Benjamin Tran | yes | yes | yes | filed, not accepted | open | — |
| Tel Aviv | Noa Shapira | yes | yes | yes | filed, not accepted | open | Noam Friedman (with Istanbul) |
| Istanbul | Elif Demir | yes | yes | yes | filed, not accepted | open | — |
| Stockholm | Linnea Bergström | yes | yes | yes | filed, not accepted | open | — |
| London | Imogen Hartley | yes | yes | yes | filed, not accepted | **not open**: the rear-door lock was fitted on 2026-09-30 (`EVT-001180`); the tunnel waits on Alexander | Harriet Pembroke |

**What becomes automatic on acceptance (per branch, per day):** E-Rank 1d4+1, D-Rank 1d3, C-Rank 1d3−1, B-Rank 1d2−1. That comes to about 7 clears a branch a day and ≈126 across eighteen. **A and S never become automatic.** They surface through Section 9.11 and Section 9.1.8, and the A-Rank response pool answers on a standing posture the guild has not yet declared (`OBJ-79`). **Until London's tunnel opens, its catchment is its own jurisdiction read from its own bench.**

**Not offices:** Milwaukee and Toledo. Their city contracts count as regulator approval (`EVT-001132`), which covers condition 4 only. Neither has a lease, an officer, cover or a bench. They are run from Chicago and Detroit through the tunnels.
