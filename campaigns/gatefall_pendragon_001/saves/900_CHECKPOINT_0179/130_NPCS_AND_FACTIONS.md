# NPCs and Factions - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall
**Ledger:** Canonical Record (`011` Section 8) tracking campaign-local figures and the protagonist's relationships to world-layer institutions and figures. References world canon; does not duplicate it.

---

## Record

```yaml
id: REC-000077
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001225
  game_date: "2026-10-01T19:47:00-05:00"
  real_date: "2026-09-26"
role: canonical ledger
scope: campaign
# This save: EVT-001219, EVT-001220, EVT-001221, EVT-001222, EVT-001223, EVT-001224 (ENT-000359 Margaret Hale and ENT-000360 Gideon Pike minted, collision-checked -StrictSurnames; Renata, Dario, Anjali, Han,
#   the Denver facility ENT-000264; REL-000101, REL-000107, REL-000113 re-read. No closed-channel ruling.)
# Prior save: EVT-001213, EVT-001214, EVT-001215, EVT-001217 (Dario ENT-000265 -- the morning, HQ, the lesson plan; Anjali ENT-000288 -- the 38 A-Rank pieces, a standing instruction;
#   Imogen Hartley ENT-000318 -- London tunnelled, the filing returned, Monday's solicitor; REL-000107, REL-000113 -- *mine*. No closed-channel ruling.)
# Prior save: EVT-001209, EVT-001210, EVT-001211 (Renata ENT-000233 -- the GB-63 filing and the lot; Dario ENT-000265 -- Saturday nine of nine,
#   the Fremont disclosure; REL-000107, REL-000113, REL-000125 -- the house, Kane and Dario on their own. No closed-channel ruling.)
# Prior save: EVT-001195, EVT-001196, EVT-001197, EVT-001198, EVT-001199, EVT-001200, EVT-001202, EVT-001203, EVT-001205, EVT-001206
#   (ENT-000353 - ENT-000358 minted: Andrei Bratu, Viorica Bratu, Gheorghe Dincă, Ioana Stoica, Tamsin Okoro, Han Seung-woo;
#   Anjali, Dario, Milena, Renata updated. No closed-channel ruling.)
# Prior save: EVT-001180, EVT-001181, EVT-001183, EVT-001184, EVT-001185, EVT-001186, EVT-001187, EVT-001188, EVT-001189, EVT-001190, EVT-001191, EVT-001194
#   (Anjali Desai ENT-000288 -- roster sent, the regulators, the contract towns,
#   the annex connector, the gear backlog; disposition authored. Harlan Boyce ENT-000352 minted, the statement.
#   Desmond Farraday ENT-000223 -- the annex, the acceptance. Kesha Morrison ENT-000130 -- the US map. Dario Wexler
#   ENT-000265 -- the training plan. No closed-channel ruling.)
# Prior save: EVT-001169, EVT-001170, EVT-001171, EVT-001172, EVT-001173, EVT-001174, EVT-001175, EVT-001176,
#   EVT-001177, EVT-001178, EVT-001179 (Orenne ENT-000261 -- the slates, the crossing to Earth, the cities, killed
#   EVT-001173, status deceased; REL-000110 terminated; Anjali Desai ENT-000288 -- the text and the call, the
#   nine A-Rank crews; Jun-seo Baek ENT-000297 named commander of the Chicago crew; ENT-000344 - ENT-000351
#   minted, the eight other crew commanders; Graciela Corrales ENT-000315 and Tobiah Rennick ENT-000316 --
#   working Rank withdrawn, EVT-001178. Imogen Hartley ENT-000318, Imani Whitaker ENT-000301, Noa Shapira
#   ENT-000324 and Linnea Bergstrom ENT-000319 seen in passing, no change. No closed-channel ruling.
# Earlier per-save notes: sealed (Decision 094), see `sealed/`.
# 2026-09-24, out of play, at the player's direction: first seal pass (Decision 094). No Event moved; no canonical value changed except where a stale value was brought up to what its own cited Events establish. `ENT-000136` is Priya Menon throughout (her former surname, Okafor, collided with `ENT-000107`); ruling-provenance asides were stripped from live text with every Event citation kept. 25 stale narrative fields on 20 records rewritten to what is true now; old values moved verbatim to the volume.
# Citation index (Decision 085): Events whose sealed notes cited this record.
# EVT-000373 EVT-000374 EVT-000408 EVT-000409 EVT-000410 EVT-000411 EVT-000414 EVT-000415 EVT-000416
# EVT-000417 EVT-000536 EVT-000537 EVT-000538 EVT-000539 EVT-000540 EVT-000542 EVT-000543 EVT-000544
# EVT-000545 EVT-000614 EVT-000615 EVT-000619 EVT-000636 EVT-000637 EVT-000638 EVT-000640 EVT-000641
# EVT-000644 EVT-000659 EVT-000660 EVT-000673 EVT-000674 EVT-000675 EVT-000676 EVT-000680 EVT-000683
# EVT-000684 EVT-000685 EVT-000691 EVT-000692 EVT-000724 EVT-000725 EVT-000731 EVT-000734 EVT-000786
# EVT-000787 EVT-000803 EVT-000804 EVT-000808 EVT-000809 EVT-000810 EVT-000812 EVT-000813 EVT-000832
# EVT-000836 EVT-000841 EVT-000842 EVT-000846 EVT-000847 EVT-000848 EVT-000849 EVT-000850 EVT-000851
# EVT-000852 EVT-000853 EVT-000854 EVT-000855 EVT-000856 EVT-000857 EVT-000858 EVT-000869 EVT-000870
# EVT-000871 EVT-000872 EVT-000873 EVT-000884 EVT-000892 EVT-000901 EVT-000902 EVT-000904 EVT-000906
# EVT-000908 EVT-000909 EVT-000911 EVT-000912 EVT-000959 EVT-000984 EVT-000986 EVT-000987 EVT-000988
# EVT-000989 EVT-000990 EVT-000994 EVT-000995 EVT-000996 EVT-000999 EVT-001012 EVT-001013 EVT-001020
# EVT-001021 EVT-001032 EVT-001033 EVT-001042 EVT-001043 EVT-001046 EVT-001051 EVT-001052 EVT-001068
# EVT-001069 EVT-001070 EVT-001073 EVT-001074 EVT-001075 EVT-001076 EVT-001079 EVT-001083 EVT-001084
# EVT-001085 EVT-001086 EVT-001092 EVT-001093 EVT-001095 EVT-001098 EVT-001099 EVT-001101 EVT-001107
# EVT-001109 EVT-001110 EVT-001111 EVT-001112 EVT-001113 EVT-001114 EVT-001115 EVT-001116 EVT-001117
# EVT-001118 EVT-001119 EVT-001120 EVT-001121 EVT-001122 EVT-001125 EVT-001126 EVT-001128 EVT-001129
# EVT-001130 EVT-001131 EVT-001132 EVT-001133 EVT-001134 EVT-001135 EVT-001136 EVT-001137 EVT-001138
# EVT-001139 EVT-001140 EVT-001141 EVT-001142 EVT-001143 EVT-001144 EVT-001145 EVT-001146 EVT-001147
# EVT-001148 EVT-001149 EVT-001150 EVT-001151 EVT-001152 EVT-001153 EVT-001154 EVT-001155 EVT-001156
# EVT-001157 EVT-001158 EVT-001159 EVT-001160 EVT-001161 EVT-001162 EVT-001163 EVT-001164 EVT-001165
# EVT-001166 EVT-001167 EVT-001168
subjects:
  - ENT-000194
  - ENT-000195
  - ENT-000196
  - ENT-000197
  - ENT-000178
  - ENT-000179
  - ENT-000180
  - ENT-000126
  - ENT-000127
  - ENT-000128
  - ENT-000129
  - ENT-000130
  - ENT-000131
  - ENT-000132
  - ENT-000133
  - ENT-000134
  - ENT-000135
  - ENT-000136
  - ENT-000137
  - ENT-000138
  - ENT-000139
  - ENT-000140
  - ENT-000141
  - ENT-000142
  - ENT-000143
  - ENT-000144
  - ENT-000145
  - ENT-000146
  - ENT-000147
  - ENT-000148
  - ENT-000149
  - ENT-000150
  - ENT-000168
  - ENT-000169
  - ENT-000170
  - ENT-000172
  - ENT-000177
  - ENT-000181
  - ENT-000182
  - ENT-000183
  - ENT-000184
  - ENT-000185
  - ENT-000186
  - ENT-000187
  - ENT-000188
  - ENT-000189
  - REL-000062
  - REL-000063
  - REL-000064
  - REL-000065
  - REL-000066
  - REL-000067
  - REL-000068
  - REL-000069
  - REL-000070
  - REL-000087
  - REL-000088
  - REL-000089
  - REL-000090
  - REL-000091
  - REL-000092
  - REL-000093
  - ENT-000198
  - ENT-000199
  - ENT-000200
  - REL-000094
  - REL-000095
  - REL-000096
  - ENT-000204
  - ENT-000205
  - REL-000097
  - ENT-000208
  - ENT-000209
  - ENT-000210
  - ENT-000247
  - ENT-000248
  - ENT-000249
  - ENT-000250
  - REL-000102
  - REL-000103
```

---

## Closed Channels

Facts a named NPC has **no in-fiction channel to**, ruled by the player during play (Resident Core, *The NPC Channel Check*). A correction is otherwise only a conversational event: it evaporates at the end of the scene, which is why the same leak has recurred three and four times in one session. Writing it here is what makes the ruling outlive the turn.

Deliberately lightweight — a row, not a Persistent Object. Add one the moment a channel is ruled closed; do not mint an identifier, bump provenance, or wait for a checkpoint. A row is retired only when its **Opens on** condition actually happens in the fiction, and is then dated rather than deleted.

| NPC | Fact they have no channel to | Ruled | Opens on |
|---|---|---|---|
| Priscilla Nakamura (`ENT-000203`) | That Alexander owes Owen Callahan dinner and a story, that Owen is off shift this evening, or anything about how Alexander's day went before he walked into her workshop | 2026-08-26 | Alexander telling her directly. Her channel to him is bench-side and about the work; nothing about Owen has ever been said in her presence. Caught by the player after a line put the obligation in her mouth |
| Owen Callahan (`ENT-000139`) | Wade Bishop's first daily report (delivered 21:03, unopened) or the BGM compliance review notice from Kesha Morrison, either as fact or by name | 2026-08-23 | Alexander telling him directly. He checked his phone privately on the boat; nothing about either was said aloud to Owen |
| Owen Callahan (`ENT-000139`) | That the System opened a window, that Alexander "went somewhere" for a moment, or anything else about System activity — this is the Bearer-Only Register (Profile §14.4.1), and Owen has no channel to it at all, not even a felt sensation | 2026-08-27 | **Nothing.** He is not the Bearer; the System is perceptible to its Bearer alone. He can read Alexander's outward state — distracted, elsewhere for a second, off his usual rhythm — and say so as a read, never as System activity by name. Caught by the player after a line had Owen ask about "the System thing" directly |
| Kesha Morrison (`ENT-000130`) | Marcus's private read on Alexander's distraction | 2026-07-24 | Marcus telling her, or Alexander doing so |
| Kesha Morrison (`ENT-000130`) | Diane's private invitation for Alexander to return to her shop | 2026-07-24 | Either party telling her. **Leaked twice**, the second time after correction |
| Owen Callahan (`ENT-000139`) | The Lakefront Gate booking Alexander arranged with Kesha | 2026-08-05 | Alexander telling him. No voicemail, sponsor-of-record text, or automated notification exists — the booking is **unconfirmed** until Alexander personally confirms it with Kesha, so no system message can have been generated. **Leaked three times in one scene**, twice after correction |
| Owen Callahan (`ENT-000139`) | Alexander's quest, regimen, and completion data — "the sheet" | 2026-08-05 | **Nothing.** Owen is not the Bearer; the System is perceptible to its Bearer alone (Profile §14.4) and there is no artifact to see. He can read Alexander's *state* — tired, favouring a side, off his usual pattern — and say so as a read, never as data |
| ~~Owen Callahan (`ENT-000139`)~~ | ~~Walt Adamik's (`ENT-000147`) existence, and the unlicensed-artificer introduction Walt is brokering~~ | 2026-08-11 | **Opened 2026-08-13 (`EVT-000334`).** Alexander told him everything, unprompted, the same evening — Walt, Marnie, the wallet, the dock, the CONSULT stranger, Loomis Street. Retired, not deleted. Historical leaks (`EVT-000271`) stand as recorded. |
| Owen Callahan (`ENT-000139`) | Ada Reyes and Dale Pruitt by name as sources vouching for Alexander's reputation | 2026-08-11 | Alexander naming them to him directly. Player-ruled during play; the Runtime had cited `EVT-000138`'s phrasing ("Owen... flagged Ada, Dale, a Horizon contact, and now Ironline") as grounding, but that phrasing is not itself a record of the specific names having been given to Owen — flagged for review, not treated as settled either way |
| Milo (`ENT-000168`) | Alexander's surname (Pendragon) | 2026-08-12 | Alexander telling him directly. Their only prior contact (2026-08-05) was a first-name exchange over training drills; nothing since gave Milo a channel to the surname |
| Owen Callahan (`ENT-000139`) | That Alexander's Health reached **0** in the B-Rank trial, and that Shrug Off's threshold absorption is what held it | 2026-08-14 | Alexander telling him. He was given *"closer than I liked… I was prepared for that"* instead (`EVT-000382`) and **openly flagged it as evasive**, deferring the question rather than dropping it — so this reopens the moment Alexander answers it, not on any other channel |
| ~~Owen Callahan (`ENT-000139`)~~ | ~~That Alexander entered the trial Gate alone and over Wade Bishop's stated objection~~ | ~~2026-08-14~~ | **STRUCK 2026-08-15 (`EVT-000389`), not dated.** The row was written on a misreading: it treated "I expected a mining job and wasn't told it would be live" as contradicting `EVT-000339`, when the trial *was* a harvest job, the harvest element is entitled to a secured strike line, and that line failed because the roster ran 4 against a legal 8. There was no misrepresentation for this row to close, so it is struck rather than retired |
| Owen Callahan (`ENT-000139`) | The Ironline lot, the forged eight-name roster, and the report Alexander is physically holding | 2026-08-14 | Alexander telling him. He knows only that there was a 22:00 meeting with Wade and that Wade was handing over the trial's loot (`EVT-000383`); location, venue, and the report were never mentioned |
| Owen Callahan (`ENT-000139`) | That the name "the Rockwell bay" refers to where Alexander went after their disagreement | 2026-09-03 | Alexander telling him directly. He knew Alexander stepped away somewhere; the specific place-name was never said aloud in his presence. Caught by the player before the line was spoken |
| Owen Callahan (`ENT-000139`) | Priscilla Nakamura's name, and that her first working session is set for a specific evening | 2026-08-18 | Alexander telling him. He was told the bare fact on 2026-08-15 — an artificer contact, *"no name and no address, and he did not ask for either"* (`EVT-000408`-`EVT-000411`) — and on 2026-08-18 correctly inferred from context that "the artificer thing" was happening (`EVT-000483`). **Knowing a thing in outline is not a channel to its specifics:** the name and the evening were never given, and the session is Alexander's alone rather than a fixed point on Owen's own schedule (`F-020`) |
| Kesha Morrison (`ENT-000130`) | Alexander's System level, XP, or any other Bearer-only System state | 2026-08-18 | **Nothing.** System state is perceptible to its Bearer alone (Profile §14.4, register at §14.4.1); no NPC has a channel to it short of Alexander disclosing it in words, which has not happened |
| Kesha Morrison (`ENT-000130`) | The Priscilla Nakamura arrangement — its existence, her name, or anything about it | 2026-08-18 | Alexander telling her directly. Nobody has — not even Owen has been given her name (see the Owen/Nakamura row above) |
| Priscilla Nakamura (`ENT-000203`) | Seamwork by name, its System Rank, or that it is a System skill at all | 2026-08-21 | **Nothing.** She has no channel to any entry on the Bearer-Only Register (Profile §14.4.1) — level, skills, mastery, or that a System exists at all. What she has a channel to is what she directly witnessed: he went absent for two seconds at her bench and something changed about how he handled the practice piece afterward. She may read that as real, demonstrated competence — never name it, rank it, or ask "C-Rank, you said?" as though he'd told her, because he hasn't |
| Priscilla Nakamura (`ENT-000203`) | A phone call from Alexander describing a matched Quickknife pair | 2026-08-22 | **Nothing — it never happened.** Runtime error: no such call is recorded anywhere in her relationship history or the chronicle. Caught by the player on the line itself |
| Priscilla Nakamura (`ENT-000203`) | Alexander's own materials inventory — C-Rank/D-Rank cores, crystals, or anything else he is carrying tonight and has not put in front of her | 2026-08-22 | Alexander showing or telling her. She has never had visibility into what he holds beyond what he deposits on her bench in a given session; a figure like "twenty cores I haven't seen" implies foreknowledge of a specific count that was never disclosed |
| Kesha Morrison (`ENT-000130`) | Wade Bishop's name, Ironline's informant retainer (`OBJ-27`), or any connection between Alexander and Wade Bishop | 2026-08-31 | Alexander telling her directly. She knows GB-14 through her own desk's filings — Farraday's determination, the auction share — and nothing else ties Alexander to Ironline in anything she's ever been told. Caught by the player after a line had her name Wade unprompted |
| Sorcha Bellweather (`ENT-000254`) | The word "anchor," or any System-mechanical detail of how Alexander's teleportation actually works | 2026-09-10 | **Nothing, structurally** — teleportation mechanics sit on the Profile §14.4.1 Bearer-Only Register, and she has no channel to it at all. She knows only the practical fact she designed around: he has to be somewhere in person once before he can return to it on his own. Caught by the player after a line had her use the term "anchor" unprompted |
| Elias Kane (`ENT-000242`) | The live BGM/CGA Gate offers, before Alexander had checked his own phone | 2026-09-13 | Alexander telling him, or checking his phone first. No BGM/CGA channel reaches a private citizen's directed-assignment notice regardless. Caught before the line was spoken |
| Elias Kane (`ENT-000242`) | That Alexander spent the morning of 2026-09-15/16 clearing ten S-Rank instant dungeons, or anything about the far-side teaching circuits (Tolo, Sevrin, Ilith, Aumry, Orenne) | 2026-09-16 | Alexander telling him directly. Nothing about any of it was said aloud in his presence; he was in his own office drafting BGM terms during the far-side circuits. Caught by the player twice in one scene after lines referenced both |
| ~~Elias Kane (`ENT-000242`)~~ | ~~Owen Callahan's existence, the fight, the breakup, or anything about Alexander's relationship history before this week~~ | ~~2026-09-16~~ | **STRUCK 2026-09-17, not dated.** The row was written on a misreading: `worlds/gatefall/220_NOTABLE_FIGURES.md` (`ENT-000242`) already records Kane told directly on 2026-09-13 — Owen by first name, the 2026-09-12 fight, and that Alexander does not currently see a future in it. The channel was already open when this row closed it; struck rather than retired, since there was no misrepresentation for it to correct |
| Tolo, Aumry, Ilith, Sevrin, Orenne (`ENT-000262`/`260`/`259`/`263`/`261`) — and every other far-side figure, present or not | Alexander setting a rift anchor, at the moment he sets it or at any point afterward | 2026-09-21 | **Nothing — player ruling.** None of the five have a channel to Alexander's own anchor-setting act, regardless of their own anchor-adjacent techniques (Sevrin's Anchor Denial, Ilith's Touch and Go, Every Seam He Has Walked, etc. — those read *existing* anchors and seams in play, not the private act of setting one). Caught by the player after Orenne's line ("saves me wondering whether you'll bother crossing the valley for me") assumed he'd perceived anchors 43 and 44 being set in front of him; re-narrated without it |
| Imogen Hartley (`ENT-000318`) | The word "anchor," or any System-mechanical detail of how Alexander actually travels | 2026-09-29 | **Nothing, structurally** — teleportation mechanics sit on the Profile §14.4.1 Bearer-Only Register, and a London day manager two meetings into knowing him has no channel to it at all. She knows only that he arrives faster than a car could manage. Caught by the player before the line was allowed to stand — a Runtime error (a line had her say "anchor in early"), re-narrated without it |
| Elias Kane (`ENT-000242`) | Wade Bishop's name, history, or the Ironline informant pattern (falsified rosters, the specific habit of removing anyone who'd caught him at something) | 2026-09-29 | Alexander telling him directly. Nothing about Wade Bishop has ever been said in Kane's presence — his own knowledge record carries no such channel. Caught by the player mid-scene after a line invoked "the Wade" comparison unprompted; re-narrated without it |

**On the two Owen rows.** Both come from one session and are the same failure on unrelated facts, which is the point: the habit is reaching for whatever detail is nearest to make a line sound informed, not mishandling one plot thread. Owen is close to Alexander and therefore the NPC most likely to attract it — he has the most reason to ask, and the least channel to the System.

---

## The Pendragon Guild — Visual Identity

**Authored 2026-09-23 (real date), for visual reference — no logo or branding existed in canon prior to this note.** No entity ID minted; this is a documentation note on the guild's mark, not a game entity, and carries no mechanical weight.

The guild takes its name from Alexander's own surname, not a chosen brand (`170_CHANGELOG.md`, Checkpoint 0153 — "the guild finds its name," `EVT` context: Kane told first, the guild plan named the Pendragon Guild the same evening). "Pendragon" itself, per its Arthurian root (Welsh *pen* "head" + *dragon*), was a war-leader title — "chief dragon" — rather than a royal crest, which shaped the mark chosen: a reduced, geometric dragon head rather than an ornate heraldic shield. The design deliberately breaks from Horizon Guild's polished, press-managed marquee branding (Preston Vaughn's trophy-wall aesthetic, `worlds/gatefall/220_NOTABLE_FIGURES.md`) — Pendragon's own S-Ranks mostly dress plainly and avoid cameras (Kane, Dario Wexler, Marisol Cade, Itai Barak), and its board runs on equal votes rather than a owned hierarchy (Kane, Cade, Blažková, Reinhardt, Aubrac each holding a full, no-obligation seat). The mark is built to match: understated, angular, closer to a modern tactical emblem than fantasy heraldry.

**Design:** A dragon head in profile, built from sharp angular facets and straight edges rather than scales or ornate detail. Facing left, mouth closed, one small angular horn, a faceted eye as the only curved element. No wings, no fire, no shield, no lettering — flat, single-color fill only.

**Generation prompt used:**
> A minimalist vector logo of a dragon head in profile, built entirely from sharp angular facets and straight edges rather than scales or ornate detail — closer to a modern tactical or esports emblem than fantasy heraldry. Single dragon head facing left, mouth closed, one small angular horn, a faceted eye as the only curved element. Flat charcoal-black fill on a plain white background, no gradients, no outline glow, no color accent, no text. Clean vector logo design, high contrast, scalable icon, centered composition.
> Negative: ornate scales, medieval crest, shield shape, wings, fire, color gradient, 3D rendering, photorealism, text or lettering.

**Variants:**
- `logo` — flat charcoal-black on white, for documents, letterhead, and light backgrounds.
- `logo_reversed` — flat off-white/steel-grey on solid charcoal-black, for office signage, gear patches, and dark backgrounds.

```yaml
guild_identity:
  logo: "assets/guild/pendragon_logo.png"
  logo_reversed: "assets/guild/pendragon_logo_reversed.png"
  status: "final — both PNGs landed 2026-09-23"
```

---

## Campaign-Local Figures — Session 1

### ENT-000126 — Tanya Voss

Crew lead and striker; mid-30s, an experienced Gate clearer with three-plus clears behind her alongside Marcus. She recruited Alexander onto the Red Line Corridor contract after reading him as someone who would commit rather than fold — reputation is "what the desk thinks," she told him, and "fact is what happens in a Gate." Her signature ability is **Keen Edge**: her mana runs along any blade she grips, holding an edge that bites seams plain steel skids off.

```yaml
id: ENT-000126
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000058
  game_date: "2026-07-23, Coalition case table"
  real_date: "2026-07-23T15:03:14+02:00"
type: Character
subtype: crew leader / striker
scope: local
lifecycle: active
aliases:
  - name: "Tanya Voss"
    quality: current
relationships:
  - REL-000063
canonical_state:
  affiliation: "Windy City Hunters Coalition — crew leader, Red Line Corridor crew"
  home: "Chicago, USA"
  rank: "**D-Rank** — **Authored at the 1.41 follow-up from what canon already had her do.** She is an experienced licensed hunter and crew leader who led a five-hunter crew into the Red Line Corridor on an **unconfirmed-D assessment** — a job she accepted before its true E-Rank was known (`EVT-000059`) — and her kit is recorded as heavier than an E-Rank starter's. Taking a possible D as the lead of an under-strength-waiver crew (Section 9.4, absolute floor five) is D-Rank work. Resolved by that Rank under Section 13.1."
  pool_variance: "**None** — authored under Profile Section 6.1.2 (`EVT-000249`). Permanent, never rerolled. Steady, competent, three-plus prior clears with the same partner, no casualty on the job we watched. Median D."
  pools: "**Maximum Health 100, maximum Mana 50** — the flat Section 6.1 table value at D-Rank. Section 5.2 tier costs, read from their own maximum: **Minor 5, Signature 12, Boss-tier 25**. Section 5.3 running-dry threshold **12**."
  location: ENT-000087
  condition: "Healthy; equipped with a heavier reinforced jacket and shoulder plating than an E-Rank starter kit"
  capabilities: "Experienced licensed hunter and crew leader; striker working type; three-plus prior Gate clears with Marcus. Reads people quickly and decisively."
  signature_ability: "Keen Edge — her mana runs along any blade she grips, holding an edge that bites armor seams plain steel skids off (Profile Section 13.6: method texture, resolved at her band)."
  appearance: "Mid-30s, white, of Dutch-German stock (the Voss name); medium height with a wiry, hard-muscled fighter's build. Short dark-blonde hair pushed back off a sharp, weathered face; pale grey eyes that size a person up in a glance; a thin old scar along the left forearm. Wears a heavy charcoal reinforced jacket with steel shoulder plating over practical dark gear, a well-used single-edged blade at her hip. Reads as exactly what she is — a decade-hardened crew lead who wastes no motion."
  portrait: "assets/portraits/Tanya_Voss_ENT-000126.png"
  personality: "Direct, competent, unsentimental. Judges hunters by conduct in a Gate, not by desk reputation. Takes calculated risks on people who show commitment; does not waste time on those she expects to fold."
  want: "**To be right about the people she takes a chance on.** She judges by conduct in a Gate rather than by desk reputation, which sounds like a principle and is closer to a wager — she took an unconfirmed-D contract with a waiver crew at the absolute floor of five (`EVT-000059`) and brought all five out. Coaching Alexander through the vein herself, then signing off his haul and closing the contract at the desk, is what her regard actually looks like: work done on someone rather than words said about them."
  fear: "**A crew that does not all walk out, on a call she made.** She accepts under-strength waivers and unconfirmed assessments because that is where the work is, and the exposure is hers alone. The flaw is that she does not hedge once she has decided about someone — she commits early and would rather be wrong late than cautious throughout."
  secret: "**How thin the Red Line margin actually was.** The assessment came in one Rank high, the crew ran at the legal floor, and it resolved clean. She has never described that day as lucky to anyone. **Known to:** nobody; Marcus Aldridge may suspect it and has not said so."
  voice: "Short declaratives, no softening, no small talk before business. **Teaches by doing the thing next to you** rather than explaining it. Approval arrives as a completed action on your behalf — a signature, a filing, a haul signed off — and almost never as a compliment."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-07-25** (`EVT-000060`), the last span this record settles; it has not been advanced since.\n\n  - **Running her own crew's contracts**, which is where she is when the fiction puts her nowhere else.\n  - **Her regard for Alexander is standing capital she has not spent.** She closed his first contract personally and vouched by conduct rather than by word; nothing in canon records her asking him for anything since, and that is an unspent position rather than a lapsed one."
  situation: "Led the five-hunter Red Line Corridor clear (true E-Rank, one below the unconfirmed D assessment) to a full, no-casualty clear on 2026-07-24 (`EVT-000059`), then the loot phase and exit (`EVT-000060`): coached Alexander through mining the vein herself (chisel technique), signed off on his safe-target haul (five mined E-Rank crystals), and closed the contract at the Coalition desk, filing the payout and crystal sale on 2026-07-25. Her regard for him ended the day at genuine respect, reinforced once more by his sincere, unshowy goodbye and his candor about being new to a hunter's income. Crew dispersed that evening; she told Alexander he's welcome back on the next posting whenever the crew looks at the boards again, expected in a few days, not tomorrow."
```

### ENT-000127 — Marcus Aldridge

The crew's sensor: an awakened whose gift reads Gate interiors — layout, population density, and whether a dungeon is holding something its assessment missed. Quiet and analytical; he is Tanya Voss's established partner and reads the space on entry so the crew knows what it is actually walking into. **Disambiguation: not `ENT-000184` Marcus Whitlow**, the C-Rank striker recruited to Alexander's forming crew. Both are live and both answer to "Marcus" — this entry additionally carries the bare first name as a current alias, so an unqualified "Marcus" in narration is genuinely ambiguous. Use the surname.

```yaml
id: ENT-000127
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000058
  game_date: "2026-07-23, crew briefing"
  real_date: "2026-07-23T15:03:14+02:00"
type: Character
subtype: sensor
scope: local
lifecycle: active
aliases:
  - name: "Marcus Aldridge"
    quality: current
  - name: "Marcus"
    quality: current
canonical_state:
  affiliation: "Windy City Hunters Coalition — Tanya Voss's crew"
  home: "Chicago, USA"
  rank: "**E-Rank** — **Authored at the NPC audit from what canon already had him do**, on the same reasoning the 1.41 follow-up used for `ENT-000126`. Canon is explicit that he is **better at field triage-by-read than at combat**, and records him carrying **minimal gear and no visible weapon at all** — the inverse of the heavier-than-starter kit that resolved Tanya Voss to D. Section 9.4 sets **no legal combat minimum** at an E–D Gate, so nothing in the Red Line Corridor contract required him to be combat-rated, and the crew ran the **waiver floor of five** rather than a full strike element. An unarmed reader riding a waiver-floor crew is E-Rank work. Resolved by that Rank under Section 13.1; pools are supplied by Rank under the same section and are not separately authored here. **His `Deep Read` signature stands regardless** — Section 13.6 withholds an *authored* signature at E-Rank but expressly permits one to be named where the fiction needs it, and this crew's entire entry procedure depends on his."
  location: ENT-000087
  condition: "Healthy; no adverse condition established"
  capabilities: "Sensor working type: reads Gate interior layout, population density, and anomalies on entry. Tanya Voss's established clearing partner; better at field triage-by-read than at combat."
  signature_ability: "Deep Read — he perceives a Gate interior through the mana in its air: layout, population weight, age of a signature, and whether something is watching back (Profile Section 13.6)."
  appearance: "Early 30s, Black, medium height and lean; close-cropped hair and a short beard. A calm, heavy-lidded gaze that always seems to look slightly past you — the sensor's habit of reading a room rather than watching it. Dresses down in muted layers with minimal gear and no visible weapon; still and unhurried, hands loose at his sides. Quiet enough to be easy to overlook, which suits him."
  portrait: "assets/portraits/Marcus_Aldridge_ENT-000127.png"
  personality: "Quiet, focused, observes before acting. Takes the measure of new people carefully."
  want: "**To be believed on a read before it is confirmed.** He is explicitly better at field triage-by-read than at combat and carries no visible weapon at all — the read is the whole of what he brings, and it is only worth anything if someone acts on it while it is still early."
  fear: "**Being right and disregarded.** A sensor who is doubted once gets asked later, and later is where the casualties are. He does not argue when it happens; he notes it, which is worse for him and easier for everyone else."
  secret: "**He noticed something sitting unresolved behind Alexander's eyes at the walk-out and has never asked.** He does not know what the System is and has no channel to it (`EVT-000059`); what he has is an observation of visible distraction he judged was not his business. **Known to:** nobody. He has not mentioned it to Tanya."
  voice: "Says the read once, in as few words as it takes, and does not repeat it. Long silences that are attention rather than discomfort. **Answers a question with the thing he actually observed** rather than with a conclusion, and lets the listener draw it."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-07-24** (`EVT-000059`), the last span this record settles; it has not been advanced since.\n\n  - **Working point for Tanya Voss's crew**, his established clearing partner of three-plus prior Gate clears, reading interiors on entry.\n  - **Keeping his own counsel about what he noticed.** This is a pursuit by omission and it holds until the fiction gives him a reason to break it."
  situation: "Assigned to point for the Red Line Corridor clear, reading the interior on entry. Present at the 2026-07-23 briefing and at the Gate entrance on 2026-07-24. At the walk-out (`EVT-000059`) he noted, without knowing why, that something seemed to be sitting unresolved behind Alexander's eyes since the fight — an observation of visible distraction, not knowledge of the System, which remains unknown to him. Surname: Aldridge."
```

### ENT-000128 — Elias Voss

Striker and Tanya's brother; broad-shouldered, blunt-force fighter carrying a reinforced steel hammer, two-plus years licensed. He greeted Alexander warmly and told him plainly that if they were in the Gate together, he had his back.

```yaml
id: ENT-000128
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000058
  game_date: "2026-07-24, Gate entrance"
  real_date: "2026-07-23T15:03:14+02:00"
type: Character
subtype: striker
scope: local
lifecycle: active
aliases:
  - name: "Elias Voss"
    quality: current
canonical_state:
  affiliation: "Windy City Hunters Coalition — Tanya Voss's crew"
  home: "Chicago, USA"
  rank: "**D-Rank** — **Authored at the NPC audit from what canon already had him do**, on the identical reasoning the 1.41 follow-up used for his sister `ENT-000126`. That ruling turned on kit: Tanya resolved to D because her gear is *recorded as heavier than an E-Rank starter's*. Elias's is recorded heavier still — a **reinforced plated jacket** and a **heavy reinforced steel warhammer**, carried as the crew's dedicated close-combat line-holder on a contract accepted as an **unconfirmed D** (`EVT-000059`). Granting Tanya D on kit and withholding it from the better-equipped striker beside her would be inconsistent, so it is not withheld. Two-plus years licensed argues for the **bottom** of D, not against D. Resolved by that Rank under Section 13.1; pools are supplied by Rank under the same section and are not separately authored here.\n\n  **Held at D and no higher.** Section 9.4 sets no legal combat minimum at an E–D Gate, the crew ran the **waiver floor of five** rather than a full strike element, and the Gate proved true **E-Rank** — nothing in the record reaches above D, and `Groundbreak` is resolved at D-Rank magnitude accordingly."
  location: ENT-000087
  condition: "Healthy; equipped with a reinforced steel hammer"
  knowledge: "**What he knows about Alexander — read this before any line where he asserts something about him.** Anything not listed here he has not been told, which is the boundary rather than a gap (Resident Core, *Load a Recorded NPC Before Playing It*).\n\n  - **That Alexander was the fifth signature on the Red Line Corridor crew**, accepted on an unconfirmed-D assessment, and that he greeted him warmly at the Gate entrance on 2026-07-24 and said plainly that he had his back inside.\n  - **Alexander's conduct on that clear**, first-hand, as the crew's close-combat line-holder alongside him (`EVT-000059`).\n\n  **What he does not have.** Anything after that contract. He is a one-clear acquaintance with no continuing thread, no file access, and no Bearer-only quantity on the Profile §14.4.1 register. Whatever Tanya Voss (`ENT-000126`) has said to her brother since is **not recorded**, so it is not a channel: default to not-told rather than assuming siblings compared notes."
  capabilities: "Striker working type, blunt-force specialty; two-plus years licensed. Holds a line in close combat."
  signature_ability: "Groundbreak — braced, he cannot be knocked from his feet, and his hammer-blows carry a ground-shock through whatever his stance is planted on (Profile Section 13.6)."
  appearance: "Late 30s, white, unmistakably Tanya's brother — the same sharp features on a much bigger frame: broad-shouldered, thick through the chest and arms, a head taller than his sister. Short dark-blonde hair and a trimmed beard, an easy warm grin that reaches his eyes. Reinforced plated jacket strained across the shoulders; a heavy reinforced steel warhammer carried like it weighs nothing. Looks like the wall you want between you and a beast, and knows it."
  portrait: "assets/portraits/Elias_Voss_ENT-000128.png"
  personality: "Confident, warm, reassuring. Supportive of newer hunters."
  want: "**To be the reason the new ones come back out.** He is the crew's dedicated close-combat line-holder, carrying a reinforced plated jacket and a heavy steel warhammer on a contract accepted as an unconfirmed D. He introduced himself to Alexander at the Gate entrance and assured him of support before anyone had asked for it — the warmth is the job, not a break from it."
  fear: "**The line going while his sister is behind it.** Tanya leads and he holds; the arrangement only works while he does. He does not talk about this, and it is the reason he never asks her to reconsider a waiver crew or an unconfirmed assessment — arguing the contract would mean admitting the line might not hold."
  secret: "**How much of the reassurance is his own nerves, spent outward.** He is warmest in the minutes before a door. **Known to:** Tanya almost certainly, by twenty years of proximity rather than by anything said."
  voice: "Warm and immediate — **first to introduce himself**, first to tell a stranger they will be covered. Short encouraging sentences aimed at whoever looks least sure in the room. Goes quiet and purely functional the moment a fight starts, and the contrast is the tell."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-07-24** (`EVT-000059`), the last span this record settles; it has not been advanced since.\n\n  - **Holding the close line on Tanya's contracts**, which is his standing role and where he is when nothing else is established.\n  - **Watching whoever is newest on the roster.** He did it unprompted for Alexander at a Gate entrance and there is no reason recorded for him to have stopped."
  situation: "Crew member for the Red Line Corridor clear and Tanya Voss's brother. Introduced himself to Alexander at the Gate entrance on 2026-07-24 and assured him of support inside."
```

### ENT-000129 — Dr. Sarah Chen

The crew's mender — the rare awakened who heals by touch, closing wounds mid-fight (roughly one awakened in twelve). Six months licensed; Horizon Guild tried to poach her twice and she stayed independent. Petite, athletic, medical kit across her chest; calm and crisis-trained. She told Alexander plainly: stay alive, and let her keep him that way.

```yaml
id: ENT-000129
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000058
  game_date: "2026-07-24, Gate entrance"
  real_date: "2026-07-23T15:03:14+02:00"
type: Character
subtype: mender
scope: local
lifecycle: active
aliases:
  - name: "Dr. Sarah Chen"
    quality: current
canonical_state:
  affiliation: "Independent — licensed mender, twice declined Horizon Guild"
  home: "Chicago, USA"
  rank: "**E-Rank** — **not authored here but transcribed from resolved play.** The Red Line Corridor clear records her field-touch on Alexander explicitly as **`E-Rank baseline, +10` (Health 10→20)**, and Section 13.5 fixes a field-touch at one standard-hit baseline of the *mender's own Rank* — ¼ of Rank Health, which is 10 only at E-Rank's 40. Her Rank was therefore settled by a resolved outcome long before this audit; the field was simply never written down. Six months licensed at the time, consistent with it. Resolved by that Rank under Section 13.1; pools are supplied by Rank under the same section.\n\n  **What E-Rank means for her Section 13.5 effects, since they are magnitude-bearing:** three field-touches per Gate clear at **+10 Health each**, and the party's one-tier post-fight injury conversion applies only to injuries at **E-Rank or below**. This is already how the clear resolved — she spent two touches restoring Health and did not clear the severity of Alexander's Severe wound. **Her `Mending Touch` signature stands at E-Rank**: Section 13.6 withholds an *authored* signature at E-Rank but expressly permits one to be named where the fiction needs it, and a mender's whole function is that gift."
  location: ENT-000087
  condition: "Healthy; carries a field medical kit"
  capabilities: "Mender working type: touch-based restorative ability, able to close wounds and restore Health mid-fight — a scarce and valuable gift (~1 in 12 awakened). Six months licensed; twice declined Horizon Guild recruitment to stay independent. Trained for crisis triage. Field-touch magnitudes per Profile Section 13.5."
  signature_ability: "Mending Touch — her mana closes what it is laid against: flesh knits under her hands, the classic mender manifestation (Profile Section 13.6; magnitudes per Section 13.5)."
  appearance: "Late 20s, East Asian (Chinese-American), petite and compactly athletic. Straight black hair kept in a practical short cut or tied back off her face; steady dark eyes; an economical, unfussy way of moving. A padded field-medical harness and kit ride across her chest over clean, close-fitting practical clothing. Calm to the point of stillness under pressure — the composure of someone who has held a stranger together with her hands."
  portrait: "assets/portraits/Sarah_Chen_ENT-000129.png"
  personality: "Calm, focused, prioritizes keeping people alive. Direct about her role and what she expects of the crew."
  want: "**To stay independent and still have enough to spend.** Twice offered Horizon Guild recruitment and twice declined it, on a gift about one in twelve awakened carry. A guild would put a floor under her and take the decision of whom to touch out of her hands, and that decision is the whole of what she does."
  fear: "**The one she banked being the one that was needed.** She carries three field-touches per clear and spent two on Alexander in a single Gate, both from a dangerous margin, keeping the third for the walk out. Every clear is that arithmetic, and she is the only person doing it in real time while people are bleeding."
  secret: "**She knows the exact order and count of everyone she has ever spent a touch on, and everyone she has not.** She has never said this aloud and does not present her decisions as anything but clinical. **Known to:** nobody."
  voice: "Calm, unhurried, and **states her limits as numbers rather than as feelings** — how many touches remain, what a margin was, what she expects of the crew. Direct about her role to the point of bluntness in a briefing. Does not offer reassurance she cannot back."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-07-24** (`EVT-000059`), the last span this record settles; it has not been advanced since.\n\n  - **Taking independent contracts** rather than a guild's, which is a standing choice she has actively defended twice and not a default.\n  - **Rationing three touches a clear**, which is the recurring shape of everything she does in a Gate."
  situation: "Mender for the Red Line Corridor clear. Spent two of her three per-clear field-touches on Alexander after he took serious wounds from a common beast and, later, the boss's opening leap — both times bringing him back from a dangerous margin. One field-touch remains banked for the walk out. Currently treating the crew's wounds in the post-boss window before they exit."
```

### ENT-000130 — Kesha Morrison

Senior coordinator at the Windy City Hunters Coalition desk; about fifty, solid build, a memory for faces and files that makes her good at the job. She had spent days looking at Alexander's file with visible doubt — but when he came back with a signed contract, she witnessed it, filed it with Region V, and allowed that he had made a good pull.

```yaml
id: ENT-000130
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000058
  game_date: "2026-07-23, Coalition desk"
  real_date: "2026-07-23T15:03:14+02:00"
type: Character
subtype: Coalition coordinator
scope: local
lifecycle: active
aliases:
  - name: "Kesha Morrison"
    quality: current
canonical_state:
  affiliation: "Windy City Hunters Coalition — coordinator; Pendragon Guild — retained consultant"
  home: "Chicago, USA"
  rank: "**Not authored — awakened status is not established.** Kesha Morrison manages or brokers Gate work without any record of being awakened, and Section 9.4's support tier plus Preston Vaughn (`ENT-000108`, a guild chief executive who is explicitly not awakened) both show that a senior operator in this trade need not be. Assigning a Rank here would be inventing canon, so none is: no Rank, no pools, no Section 6.1.2 variance, and Section 13.6 does not reach a non-hunter. **Flagged for a ruling** rather than filled in."
  location: ENT-000087
  condition: "Healthy; no adverse condition established"
  capabilities: "Senior freelancer coordinator at the Windy City Hunters Coalition; manages postings, crew assignments, and contract witnessing/filing with BGM Region V. Strong memory for hunters' files and faces. Not established as a combat-active hunter."
  knowledge: "**What she knows about Alexander — read this before any line where she asserts something about him.** Every entry cites the Event that established it; anything not listed here she has not been told, which is the boundary rather than a gap (Resident Core, *Load a Recorded NPC Before Playing It*).\n\n  - **His BGM file, card Rank, and contract history.** Role access, ongoing since `EVT-000058` — she witnesses and files his contracts with Region V and reads the file in front of her. This is the `Records` channel, not disclosure.\n  - **The Red Line Corridor contract, its payout and crystal-sale paperwork.** Filed by her (`EVT-000058`, `EVT-000060`).\n  - **That Ada Reyes and Dale Pruitt vouched for him independently, and that a Horizon harvest-liaison asked after him by name.** Reached her desk through the trade; she relayed it to him unprompted (`EVT-000137`).\n  - **That he and Owen are together.** Owen told her directly on the sponsor call, on Alexander's own instruction (`EVT-000118`). She was the first person outside Priya Menon's crew to know.\n  - **That he was bored and job-hunting** on 2026-08-05, which he admitted when she read through the pretext (`EVT-000166`).\n  - **That Ironline's recruiter pitched him, and how the D-Rank trial actually went** — four hunters who had never worked together, no field lead, command attempted by radio from outside, and that Alexander took command (`EVT-000216`).\n  - **His booked work**, as it passes her desk: the 09:00 harvest job (`EVT-000216`), the standing C-Rank-and-above mining flag she set for him (`EVT-000155`), the crew's own D-Rank Ashfield posting (`EVT-000483`) — **confirmed at her desk for Saturday 2026-08-22** by Owen as sponsor of record, eight confirmed and two held on her filing (`EVT-000496`).\n  - **The crew plan** — a C-Rank-floor crew with Owen as intended eventual field command — pitched to her in person (`EVT-000273`), and Reyna Castillo's answer, which she brokered (`EVT-000296`).\n\n  **What she does not have, and never can.** His System level, XP, or any Bearer-only quantity on the Profile §14.4.1 register — no NPC has a channel to it short of his saying so, and a Closed Channels row records it. The Priscilla Nakamura arrangement, its existence or her name; second Closed Channels row. Her `beliefs` block holds her *false* account of his rise as an underrated card — that is a belief under Decision 091 and is played with conviction, not corrected into knowledge."
  appearance: "About fifty, Black, sturdy and solid — the settled build of a woman who runs a desk, not a Gate. Natural hair going handsomely grey, worn short or in neat twists; reading glasses on a beaded chain; a sharp, tired, kindly gaze that has read ten thousand files. Business-casual — a good blazer over something practical — behind a cluttered coordinator's counter. Warm without being soft, and forgets nothing."
  portrait: "assets/portraits/Kesha_Morrison_ENT-000130.png"
  personality: "Direct and professional. Reads a file and communicates doubt without cruelty; respects hunters who follow through on a commitment."
  want: "**Her hunters come back, and the co-op desk keeps mattering against the guilds.** The Coalition is where an unaffiliated freelancer registers when Horizon and Ironline will not have him, and she runs it as though that is a purpose rather than a fallback. She backs people whose file is worse than they are — she is the one who pointed the man the city called its weakest licensed E-Rank at Tanya Voss's undersubscribed crew (`EVT-000060`)."
  fear: "**Filing the posting that kills someone.** She witnesses and files contracts with BGM Region V, which means her name is on the paperwork for every crew that walks into a Gate off her board. The flaw it produces is administrative rather than dramatic: she chases her own desk's failures personally rather than escalating them, which is how a stale account-sync issue holding three payouts became something she traced and fixed herself (`EVT-000083`)."
  secret: "**She has been quietly routing good work toward Alexander since Red Line, and has never said so.** The standing C-Rank-and-above flag, naming Reyna Castillo to him as a crew candidate, chasing his payouts personally — each defensible alone, and a pattern taken together. **Known to:** nobody. A coordinator at a freelancer co-op who is seen to have favourites has a real problem, and she knows it. Small, human, and costly if surfaced."
  voice: "**Talks in board terms** — slots, postings, filings, what clears in one to two business days. Reads from the file in front of her and says the doubtful part plainly without dressing it up or twisting it. Deadpan about the trade. **Remembers faces and files**, and shows it by using a detail from months ago without making a point of having remembered."
  beliefs:
    - claim: "Alexander is a hunter who follows through — worth the desk's trust."
      ground: "Watched it across a year of postings, from Red Line onward."
      confidence: certain
      accuracy: true
      since: EVT-000060
    - claim: "His rise is unusual but ordinary — a badly underrated card, the kind of correction the trade sees."
      ground: "Inferred from his results against his file. It is the only account the world has."
      confidence: confident
      accuracy: false
      since: "unrecorded; standing"
      note: "**She has no channel to the System** and never can (Profile §14.4). Two Closed Channels rows cover her explicitly — his level and any Bearer state, and the Priscilla Nakamura arrangement. Play the ordinary explanation with conviction; it is what a competent coordinator would conclude."
  agenda: "**2026-09-30 (`EVT-001189`).** Delivered the first-pass US map at 16:58, two minutes early: gaps by response time, five candidates ranked -- Atlanta, Denver, Minneapolis, Phoenix, Philadelphia. Told to proceed with all five; owes Anjali a neighbourhood shortlist per city tonight. Saw Pendragon Chicago on the Region V rotation at her desk. **Prior:** **2026-09-28 (`EVT-001134`, `EVT-001137`).** Called at 08:11 about the interview requests: hire someone **to say no**, not to talk, and keep the families' story his own; government letterhead is counsel's. **Delivered at 11:56 Chicago** the 34 requests sorted (nine TV, eight podcasts, eleven print and online, six unfiled; cap two a week) and two candidates, Odette Farrimond (about $9,000 a month) and Ruben Pike (about $14,000 a month), and told him at 15:26 he had not opened it. **Owes a first-pass US office map by Wednesday 2026-09-30 17:00 Chicago**; the map abroad waits on Kane's three regions (Asia, Oceania, Australia; Kane texted her the night before). Milwaukee and Toledo are Region V contract towns, to be run from Chicago and Detroit.\n\n  **2026-09-14 (`EVT-000986`) — the guild board designed, and a private retainer taken.** Called back on her own promised callback: walked through the charter obstacle plainly, then worked through Alexander's own counter-proposals in real time rather than defending her first answer for its own sake — a three-seat board (Alexander included, recusing only on matters reviewing his own conduct), independent/cross-guild nominees for the other two seats, narrow teeth (safety, fraud) and no reach into strategy or money. Landed on three as the real minimum once he pointed out he could hold one seat himself. Agreed to draft the full framework (narrow-teeth list, recusal clause, independent-seat requirement) once his two nominees are locked. **Alexander canceled his Coalition affiliation the same call** to pursue this independently; **Kesha retained as a private consulting contractor** (`REL-000115`) at $5,000/month — disclosed to her own supervisor for transparency, not routed through the co-op. Processed and confirmed the cancellation in writing by text the same day. **Active; drafting the framework, owes nothing further until Alexander's two board nominees are confirmed.**\n\n  **2026-09-12 07:40 (`EVT-000922`) — a fifth guild, asked about cold.** Called from the field, no lead-in: what does actually founding a guild in Chicago require. Took it seriously immediately — this is real leverage against Ironline's own rot that she's wanted without ever having the capital to build herself. Named the real obstacles rather than the paperwork: BGM's charter approval is political as much as regulatory, and a solo S-Rank walking in with no crew history and functionally unlimited capital reads as either a gift or a threat depending on the pitch. Pulling together what she actually knows rather than guessing on the phone; owed a callback, now delivered above. **Advanced** through **2026-08-19 07:50**.\n\n  - **The Saturday 2026-08-22 D-Rank Ashfield filing is closed** — Owen Callahan called the desk at **07:37 on 2026-08-19** and confirmed as sponsor of record (`EVT-000496`). She had the filing open, read back eight confirmed and two held, asked whether it went out at eight or ten, and took *eight, leave the two open*. **Clearing by end of day.** She noted the posting had been sitting; told that was his doing, she let it go with a single flat syllable. **She hung up first, as she always does.** Nothing further is owed to her on it.\n  - **Alexander's standing C-Rank-and-above flag** — live, and she surfaces work against it unprompted when it appears.\n  - **The mining flag is dry** and has been for some time; she says so plainly each time rather than softening it.\n  - **Ordinary desk work** — filling the board, witnessing contracts, filing with Region V."
  situation: |-
    **The Pendragon Guild's retained consultant, and still a Coalition coordinator.** Since 2026-09-14 (`EVT-000986`) she has worked for Alexander privately at $5,000 a month (`REL-000115`), disclosed to her own supervisor, while keeping her Coalition desk; Alexander cancelled his own Coalition affiliation on the same call. She designed the guild board's framework and has run much of the recruitment machinery since: tier logic and the convention-center booking for the launch (`EVT-001054`, `EVT-001056`), the member registry (`EVT-001134`), and the interview-request triage (`EVT-001137`). What she owes now is in `agenda`.

    **Two years of handling him first.** She was his principal desk contact before any of it: the Red Line crew, the Cicero and Frozen Gallery harvest slots, the standing C-Rank-and-above flag, and the first sponsor-exception posting she ever wrote, Owen's (`EVT-000118`). She reads straight through his downplaying. When he claimed to have been a spectator at Cicero she pointed out that the payout notes credited him with the finishing blow (`EVT-000155`). She refused to invent evening work to entertain him (`EVT-000216`). She hangs up first. The desk-by-desk history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
moved_by_events: "`EVT-000061` `EVT-000062` `EVT-000063` `EVT-000253`"
```

### REL-000115 — Alexander and Kesha Morrison

```yaml
id: REL-000115
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000986
  game_date: "2026-09-14T13:15:00-05:00"
  real_date: "2026-09-08"
endpoints:
  - ENT-000125
  - ENT-000130
type: professional-consulting
qualities: "Alexander's retained consultant ($5,000 a month) and the working hand behind the guild's build-out, while still the Coalition's coordinator. She designed the five-seat board framework, saw the national charter land (`EVT-001031`), sorted the press requests, and on 2026-09-30 delivered the first US office map two minutes early; she is now working the five new cities (`EVT-001189`). Trusted, direct, and honest about her own price."
qualities_as_of: EVT-001189
state: "Live, active. Retainer $5,000/month, drafting the guild-founding framework. **`EVT-001029` (2026-09-18):** told the board's real size for the first time — five, not the three she'd been designing around, with three names she never expected (Blažková, Reinhardt, Aubrac). Genuinely startled, distinct from her usual clipped competence. Framework now being rewritten around five independent seats; flagged a real open legal question (whether a non-US-carded hunter can hold a US guild board seat) and was authorized to hire international hunter-law counsel at double rate for same-day starts, no hesitation on cost. Also engaged seriously with, and had no settled answer for, whether the guild needed to charter in Region V at all or could charter with national scope from founding — undertook to check quietly rather than raise it as a formal ask. **`EVT-001031` (2026-09-20, compressed): the charter lands** — national scope, five seats, Region V's own stamp — inside the accelerated timeline Alexander pushed for.

  **`EVT-001056` (2026-09-21, 14:02-14:17): tiering and venue set by text.** Given tier guidance — a combination of confirmed Rank and verified field experience, with staged intake windows rather than any outright rejection ('scale the schedule, not the door'). Flagged the Coalition's overflow hall as likely too small for day-one Chicago against 11,400+ applicants; Alexander authorized booking the Wacker convention center at whatever it costs. She confirmed she'd have it locked within the hour and the overflow release out to the applicant list by end of day.

  **`EVT-001054` (2026-09-21, 13:20-14:19): the recruitment framework built same-day, off the broadcast's own pitch.** The public inbox hit 11,400+ requests within an hour, seven of Kesha's own Coalition regulars among them. Designed and largely built same-session: automated card-registry verification (no human reads an application), automated roster math against Gate-Rank requirements, confirm-reply plus an entry-point location ping (logged at the Gate's posted coordinates before entry, corrected in play from an initial inside-the-Gate design once she flagged mana-saturation signal risk), a small random human-audit layer named directly against the Ironline forged-roster precedent (Wade Bishop's numbers were mathematically valid and still false), and a **Pendragon Guild app** opened as a real longer project, entry-logging designed in from day one, a developer lead owed by the next day. Alexander named himself interim audit-escalation owner, co-flagged to her. Secured the Coalition's overflow hall for Chicago's first recruitment event, next day, no cost — her own keys. Building the same night: a ten-day, fifteen-city tour riding his standing anchors through Amsterdam, then booked flights she does not yet have local Gate-authority contacts for (Kyiv, Moscow, Istanbul, Tel Aviv) — working it in parallel, flagged as unresolved rather than promised solved."
texture: "The first time their relationship has moved outside the Coalition desk's own terms -- she was visibly moved that he offered, and just as visibly unwilling to let it become something that looked like favoritism instead of a clean, disclosed arrangement."
history: "Formed `EVT-000986`, the same call that closed his Coalition affiliation. Board size disclosed and counsel authorized, `EVT-001029` (2026-09-18). Charter completed, `EVT-001031` (2026-09-20). Recruitment framework and tour built, `EVT-001054` (2026-09-21)."
```

### ENT-000131 — Diane Halloran

Owner and operator of **Ironbound**, the independent gear shop on Milwaukee Avenue; mid-40s, built solid, moving with the bearing of someone who has spent time in Gates. She fitted Alexander for his first kit, steered him toward mobility over heavy plate given his krav maga background, and told him to come back after his first clear to talk over what worked. (Ironbound the establishment is represented at this stage by its owner Diane; it carries no separate institution entity.)

```yaml
id: ENT-000131
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000058
  game_date: "2026-07-23, Ironbound gear shop"
  real_date: "2026-07-23T15:03:14+02:00"
type: Character
subtype: gear-shop owner
scope: local
lifecycle: active
aliases:
  - name: "Diane Halloran"
    quality: current
  - name: "Diane"
    quality: current
canonical_state:
  affiliation: "Ironbound — owner"
  home: "Chicago, USA (Milwaukee Avenue)"
  location: ENT-000087
  condition: "Healthy; no adverse condition established"
  capabilities: "Owner/operator of Ironbound gear shop (Milwaukee Avenue, Chicago); stocks E- and D-Rank gear and performs custom fittings. Gate-experienced; gives practical, function-first equipment advice."
  appearance: "Mid-40s, white, solidly muscular with the bearing of a former hunter who never lost the frame. Short practical greying hair, calloused scarred hands, an old burn or two up one forearm; a level, appraising look that measures you the way she measures a fitting. A worn leather shop-apron over a henley, tape measure and tools to hand, at home amid racks of gear. Plainspoken and unhurried."
  portrait: "assets/portraits/Diane_Halloran_ENT-000131.png"
  personality: "Professional, practical, plainspoken. Values mobility and function over decoration; takes fitting seriously."
  want: "**The people she fits to come back through the door.** She custom-fitted Alexander's gauntlets and invited him back after his first clear — an invitation that is also a question. Selling E- and D-Rank kit on Milwaukee Avenue means most of her customers are new, and new is the Rank band that does not always return."
  fear: "**Kit she fitted failing on someone.** It is why she takes fitting seriously past the point a shop needs to, and why she talks function over decoration to people who arrived wanting to look like hunters."
  secret: "**She keeps track of who comes back.** Not as a ledger and not as grief — as a fact she has and does not mention, which is why the invitation to return is never casual. **Known to:** nobody."
  voice: "Plainspoken and unhurried, **sizing you while she talks** and saying what a piece is for rather than what it is worth. Prices stated flatly with no pitch attached. Ends a sale with an instruction, not a pleasantry."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-07-23**, the last span this record settles; it has not been advanced since.\n\n  - **Running Ironbound** — stocking the E- and D-Rank band and doing the fittings herself, which is the whole of her established business.\n  - **Expecting Alexander back.** She said so directly. Nothing records him returning, and that is an open invitation rather than a lapsed one."
  situation: "Sold Alexander his first hunter-Rank kit on 2026-07-23 (reinforced leather jacket $800, E-Rank dagger $500, reinforced gauntlets $600, shin guards $100; $2,000 total), custom-fitted the gauntlets, and invited him back after his first clear. Represents the Ironbound establishment, which has no separate entity."
```

### ENT-000132 — Cutting Edge

A custom E-Rank/D-Rank gear shop in Chicago's warehouse district, one of three vendors Kesha Morrison named to Alexander. Known for good-quality custom work on a slower turnaround. Alexander did not visit it.

```yaml
id: ENT-000132
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000058
  game_date: "2026-07-23, named at the Coalition desk"
  real_date: "2026-07-23T15:03:14+02:00"
type: Institution
subtype: gear vendor
scope: local
lifecycle: active
aliases:
  - name: "Cutting Edge"
    quality: current
canonical_state:
  location: "Chicago's warehouse district (worlds/gatefall/, ENT-000087); exact address unestablished"
  function: "Custom E- and D-Rank hunter gear; made-to-order work on a slower turnaround than stock shops"
  standing: "Independent vendor named to Alexander by Kesha Morrison (ENT-000130) on 2026-07-23 as a custom option. **Visited for the first time 2026-08-05 (`EVT-000156`)**, and no longer unestablished: a narrow deep shop off an unmarked door with a small etched nameplate, warm overhead lighting and no windows, smelling of leather oil, hot metal and crystal dust; gear displayed as individual specimens under glass with handwritten cards rather than racked stock; roughly six weapons on the wall behind the counter. Its owner-operator is `ENT-000149`. **Rigidly licensed** — provenance is logged before any core touches marked work, without exception. Nothing bought, sold, or commissioned on the visit; no standing relationship formed, and the door left open on both sides."
```

### ENT-000133 — Horizon's Outfitter

Horizon Guild's affiliated gear outfitter on Michigan Avenue, the third vendor on Kesha Morrison's list: pricier than the independents, but reliable stock and service with no custom-fitting delay. Alexander passed on it for his starter kit in favor of Ironbound, but returned later and bought the Horizon Gale line there.

```yaml
id: ENT-000133
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000094
  game_date: "2026-07-23, named at the Coalition desk; visited later, EVT-000094"
  real_date: "2026-07-23T15:03:14+02:00"
type: Institution
subtype: gear vendor
scope: local
lifecycle: active
aliases:
  - name: "Horizon's Outfitter"
    quality: current
canonical_state:
  location: "Michigan Avenue, Chicago (worlds/gatefall/, ENT-000087); exact address unestablished"
  function: "Guild-affiliated retailer of E- and D-Rank hunter gear with reliable in-stock inventory and no custom-fitting delay"
  standing: "Affiliated with Horizon Guild (ENT-000100). Named to Alexander by Kesha Morrison (ENT-000130) on 2026-07-23 as the pricier, reliable option; he chose Ironbound for his starter kit. Later visited (`EVT-000094`) and bought the Horizon Gale Coif ($3,000) and Horizon Gale Gauntlets [C-Rank] ($12,500) there — reliable in-stock service over Ironbound's custom-fitting delay. Interior and staff engaged only briefly; no named contact or standing relationship with Horizon established by the visit. **Continuity correction, 2026-08-13:** this record previously read 'not visited,' contradicting the equipment provenance already on `100_CHARACTER_SHEET.md`; corrected to match the equipment record, which is authoritative for the purchase itself (F-009-class fix)."
```

### ENT-000140 — Vanguard Trade & Gear

A larger licensed hunter outfitter than Ironbound — a proper storefront with counter staff rather than a single owner-operator, on a commercial strip Alexander's 2026-07-29 running route happened to pass. Visited once, for a replacement resonance chisel.

```yaml
id: ENT-000140
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000083
  game_date: "2026-07-29, afternoon"
  real_date: "2026-07-25T14:52:23+02:00"
type: Institution
subtype: gear vendor
scope: local
lifecycle: active
aliases:
  - name: "Vanguard Trade & Gear"
    quality: current
canonical_state:
  location: "A commercial strip in Chicago (worlds/gatefall/, ENT-000087); exact address unestablished"
  function: "Licensed retailer of civilian E-Rank hunter gear — the same mundane tier Ironbound carries, not ranked combat equipment (C-Rank and above is guild-armory or System-shop territory only, per Section 11.5). Distinguished from Ironbound by selection and foot traffic rather than by stock tier: several resonance chisel models, a fuller mundane first-aid and field-kit wall, and a storefront big enough that no one clocks a hunter in running clothes."
  standing: "Independent of Ironbound and unaffiliated with either major guild. First visited by Alexander 2026-07-29 for a replacement resonance chisel; bought both a standard chisel ($75) and a heavier 'Longhaul' model ($140), plus considered but declined a field trauma kit and a civilian duffel."
```

### ENT-000134 — Ada Reyes

Logistics coordinator for a corporate-adjacent contractor running harvest-hire C-Rank Gate clears; broad-shouldered, carries a foreman's vest and a tablet, not a combatant. Ran the Cicero Scar operation on 2026-07-25 — Alexander's first job under this contractor.

```yaml
id: ENT-000134
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: session-1-gameplay
  game_date: "2026-07-25, Cicero Scar staging"
  real_date: "2026-07-24T13:54:03+02:00"
type: Character
subtype: contractor logistics coordinator
scope: local
lifecycle: active
aliases:
  - name: "Ada Reyes"
    quality: current
canonical_state:
  affiliation: "Corporate-adjacent contractor — logistics coordinator"
  home: "Chicago, USA"
  location: ENT-000087
  condition: "Healthy; not established as combat-active"
  knowledge: "**What she knows about Alexander — read this before any line where she asserts something about him.** Anything not listed here she has not been told, which is the boundary rather than a gap (Resident Core, *Load a Recorded NPC Before Playing It*).\n\n  - **That he worked the Cicero Scar harvest-hire on 2026-07-25**, his first job under this contractor, and that she briefed him on protocol herself.\n  - **His declared haul on that job** — 7 C-Rank crystals, logged against her manifest tablet, which she complimented as better than a typical first-timer's. This is `Records` access to her own operation, not disclosure.\n  - **That she vouched for him afterwards**, independently of Dale Pruitt, in terms that reached Kesha Morrison's desk as *'good hire, real work'* (`EVT-000137`).\n  - **That he called her on 2026-08-19 asking after open work**, and that he took the staging she had — **Cicero Scar, Thursday 2026-08-20, 06:00**, on her contractor's standing BGM extraction permit rather than an open-market posting. **She owes him a manifest text once the count is confirmed** (`EVT-000543`). She knows he is available and actively looking; she does not know why.\n\n  **What she does not have.** Everything beyond two jobs and their manifests: no crew history, no knowledge of his Gate conduct outside the secured line, and no Bearer-only quantity on the Profile §14.4.1 register. **`F-006` is this record's cautionary note** — an Event's summary prose once had her and Dale Pruitt cited *by name to Owen* as vouching sources, and the player ruled that a summary naming several people in aggregate is not proof any one of them was individually named to anyone. Her vouching is real; who was told the names is a separate question."
  capabilities: "Runs support-side logistics for a corporate-adjacent contractor's Gate clears — briefs harvest hires on protocol (stay behind the secured line, drop and move on a fall-back call), logs declared hauls against a manifest tablet, is not the strike captain and does not command the combat line. **Her contractor holds a standing BGM extraction permit for Cicero Scar's reclaimed edge** (ruled 2026-08-13, reconciling the site's established use against `worlds/gatefall/210_PLACES.md`'s core-only original framing) — every Cicero Scar job she's run, including this one, sits on that permit rather than an ordinary open-market posting."
  appearance: "Forties, Latina, broad-shouldered and sturdy — built for long shifts on a staging line, not for the fight. Dark hair pulled back tight under a hi-vis foreman's vest worn over practical clothing; a rugged tablet always in one hand. Brisk, direct, and fair, with the unhurried authority of someone who has run a hundred crews through a hundred cordons and logged every one."
  portrait: "assets/portraits/Ada_Reyes_ENT-000134.png"
  personality: "Direct, professional, no patience for wasted time but fair — briefed Alexander plainly and complimented his declared haul (7 C-Rank crystals) as better than a typical first-timer's."
  want: "**Her manifests to be right and her word to be worth something.** She logs declared hauls against a tablet and vouches for people to the contractor's other staff — which is how Dale already knew Alexander's name at the next job. Both are the same thing: her name attached to a number, and the number holding."
  fear: "**Vouching for someone who then costs the contractor.** She is not the strike captain and does not command the combat line, so everything she has is reputational. A hire she recommended going wrong lands on her and on nothing else."
  secret: "**She knows the payout estimate she gave Alexander off the cuff was too low.** She said $1,500-2,500 and reconsidered it afterwards. She has never corrected it to him. **Known to:** nobody, and she would call it an estimate rather than an error if asked."
  voice: "**Briefs in protocol, not in prose** — stay behind the secured line, drop and move on a fall-back call. Compliments arrive as comparisons to a baseline rather than as praise. Ends conversations by returning to her own paperwork, visibly, without excusing herself."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-13**, the last span this record settles; it has not been advanced since.\n\n  - **Running support-side logistics on the contractor's Gate clears** — briefing harvest hires, logging manifests, filing with Region V.\n  - **Working the standing BGM extraction permit for Cicero Scar's reclaimed edge**, which is her contractor's position rather than hers personally and is the reason the site keeps recurring as work."
  situation: |-
    **Last worked with Alexander 2026-08-20, at Cicero Scar's reclaimed edge (`EVT-000553`, `EVT-000556`).** She cleared him through the fence solo on standard terms and logged 21 declared crystals against the 205 he actually mined. After the broadcast she texted a manifest and logistics note, offering to help the guild scale it right (`EVT-001056`). No scene has reached her since.

    **What she is to him.** A corporate-adjacent logistics coordinator who runs support-side harvest work for her contractor, mostly at Cicero Scar under the contractor's standing BGM extraction permit, always a 09:00 start unless the client wants the crew clear before the heat. She was the first to vouch for him to the contractor's other staff after Cicero on 2026-07-25 (`EVT-000063`), which is how Dale Pruitt knew his name. She gave him first refusal on slots from then on (`EVT-000189`, `EVT-000213`, `EVT-000312`, `EVT-000543`). She logs declared counts without suspicion. Nothing about a dimensional inventory is visible to a coordinator with a tablet, and she has never registered the gap between what he declares and what he mines. Brisk and businesslike, with occasional real warmth when he jokes back. The job-by-job history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
moved_by_events: "`EVT-000224` `EVT-000318` `EVT-000398`"
```

### ENT-000135 — Dale Pruitt

Logistics coordinator for the same corporate-adjacent contractor, running a separate C-Rank harvest-hire operation. Stocky, tablet-carrying, same role as Ada Reyes on a different site.

```yaml
id: ENT-000135
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: session-1-gameplay
  game_date: "2026-07-26, staging near the Frozen Gallery Gate"
  real_date: "2026-07-24T13:54:03+02:00"
type: Character
subtype: contractor logistics coordinator
scope: local
lifecycle: active
aliases:
  - name: "Dale Pruitt"
    quality: current
  - name: "Dale"
    quality: current
canonical_state:
  affiliation: "Corporate-adjacent contractor — logistics coordinator"
  home: "Chicago, USA"
  location: ENT-000087
  condition: "Healthy; not established as combat-active"
  capabilities: "Runs support-side logistics for the same corporate-adjacent contractor as Ada Reyes, on a different confirmed C-Rank Gate clear."
  appearance: "Forties, white, stocky and thick-set; hair buzzed short and thinning, a greying goatee. A hi-vis vest over a flannel shirt, tablet in hand, a coffee never far. An easy, dryly amused half-smile is his resting face — the kind that can flatten into watchfulness the instant a number doesn't add up, then relax again just as fast."
  portrait: "assets/portraits/Dale_Pruitt_ENT-000135.png"
  personality: "Easygoing, dryly amused — greeted Alexander's explanation for arriving sweaty (a run doubling as commute) with open approval rather than suspicion."
  situation: |-
    **Last seen 2026-08-22: drinking alone at The Sidecut (`ENT-000211`), a beer Alexander cancelled on him.** Alexander called to move it forward; it went to voicemail, which this phone does not do. Dale texted *"can't. 1900 still good"*, then sent the address with *"Should have sent that this morning, that's on me"* and, unprompted, *"Been on the phone since eight and I've got nothing to show for it."* Alexander then cancelled by text with no replacement time. Dale answered *"No problem at all"* (he does not write *at all*) and *"I'll be there anyway. Booked the night for it."* He offered no next date, the first arrangement of his own making he has let drop (`EVT-000614`-`EVT-000615`; `OBJ-33`, open and unscheduled). No scene has reached him since.

    **Where his operation stands.** He runs C-Rank harvest work out of the same twenty names every week and begs for B-Rank when the timing lines up; Ironline and Horizon price him out of the same eight or nine B-Rank bodies most weeks. His last B-Rank lead is stuck short of the eight combat-rated hunters the client requires (`OBJ-31`), and the roster-compliance story has made every guild careful about who it lends out (`EVT-000561`). He has no idea that is the exact class of filing Alexander once carried.

    **What he knows of Alexander** is a reliable cutter who arrives early and outproduces everyone. He logged 41 crystals at the Frozen Gallery and 19 at the B-Rank job (`EVT-000415`) without knowing 45 more never reached his tablet. He has never once seen Alexander fight. The job-by-job history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
  want: "**Eight combat-rated bodies, before the client stops waiting.** from `EVT-000415`, `EVT-000544` and `EVT-000561`. The B-Rank lead has sat unpostable for six days on the same constraint he has named out loud three times — he competes with Ironline and Horizon for the same eight or nine bodies and is priced out most weeks. Everything he does on a working day bends toward closing that gap, and he will pull any conversation toward it inside two minutes without noticing he has done it."
  fear: "**That his operation is one lost client from being a name other people post under.** Grounded in what he volunteers unprompted: that he is priced out most weeks, that small operators eat the difference when the guilds sit on their benches, that a C-Rank job he can staff out of the same twenty names and a B-Rank job happens only when the timing lines up. He says the unflattering number out loud because saying it first is how he keeps it from being used on him. What he protects is the standard itself — **nine on site against a legal eight, his site, his standard** — because it is the last thing that distinguishes him from the outfits that got asked hard questions."
  secret: "**The bigger client has let him understand that the eight-body requirement is about the filing, not the site.** Authored 2026-08-22 from the shape of his own behaviour: a man who volunteers *nine on site, legal minimum eight, my site, my standard* twice in one conversation, then reads the roster-compliance story's consequence for himself before anyone asks, is defending something he has already been offered. He has not said yes. He has not said no either, and the not-saying is six days old. It is the real reason the beer got scheduled at a bar where nobody in the trade drinks, and the reason *what are you actually doing with yourself* is a question he wants answered before he decides. He does not know Alexander holds an unfiled roster report of exactly that class (`OBJ-27`)."
  voice: "Dry, unhurried, and deflationary about his own position before anyone else can be. Answers a question with the constraint behind it rather than the answer — ask him for A-Rank work and you get an honest account of his weight class. Laughs *not unkindly* before saying no. Trade shorthand, no ceremony, ends a call the moment it is finished. His tell is the half-smile flattening when a number does not add up, and relaxing again just as fast; on the phone that flattening comes out as a sentence with the warmth taken off it and nothing else changed."
  beliefs: "**Alexander Pendragon is a reliable cutter who arrives early and does not need the work** — *reliable cutters who do not need the work are an interesting category* (`EVT-000561`). He believes the sixty thousand came off the declared harvest share, which is true, and infers from it that Alexander is either independently comfortable or has a second thing running, which is true in a shape he could not guess. **He believes Alexander is support-side.** He has never seen him fight, on any job, and would be genuinely surprised. Under Decision 091 this is held with conviction and is not corrected into knowledge by anything the Runtime knows."
  agenda: "**Since 2026-08-20 ~10:30 (`EVT-000561`): two days of working the phones and getting no.** The B-Rank lead is where it was, the roster-compliance story has made every guild in the city careful about who it lends out, and the not-saying on the client's filing question is now six days old. Saturday is not a day off for him; it is the day he has the client's attention. Advance this on the clock whenever he re-enters a scene."
moved_by_events: "`EVT-000065` `EVT-000068` `EVT-000193` `EVT-000283` `EVT-000312`"
```

### ENT-000178 — Tomas Alvarez

Strike captain running point on Ada Reyes's 2026-08-09 C-Rank harvest job. Lean, weathered, pump shotgun slung across his back.

```yaml
id: ENT-000178
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000224
  game_date: "2026-08-09, staging near the old freight yards"
  real_date: "2026-07-30"
type: Character
subtype: strike captain
scope: local
lifecycle: active
aliases:
  - name: "Tomas Alvarez"
    quality: current
canonical_state:
  affiliation: "Corporate-adjacent contractor — strike captain"
  home: "Chicago, USA"
  rank: "**C-Rank** — **Authored at the 1.41 follow-up from what canon already had him do.** He is the strike captain who clears and secures a **C-Rank** Gate's interior so the harvest element can work behind the line (`EVT-000224`). Section 9.4's legal minimum for a C-Rank Gate is four C-Rank-capable hunters; running its point element is C-Rank work by definition. Resolved by that Rank under Section 13.1."
  pool_variance: "**+5%** — authored under Profile Section 6.1.2 (`EVT-000249`). Permanent, never rerolled. He does this for a living, job after job, and calls the fall-back signal for everyone behind him."
  pools: "**Maximum Health 262, maximum Mana 131** — Section 6.1 table (250 / 125) × 1.05, floored. Section 5.2 tier costs, read from their own maximum: **Minor 13, Signature 32, Boss-tier 65**. Section 5.3 running-dry threshold **32**."
  signature_ability: "**Settled.** His mana reads whether a cleared space has actually gone quiet or is only between things — whether *secured* is still true. It is a working captain's gift rather than a spectacular one, and it is why the fall-back call is his to make and why the twenty-minute window warning on the 2026-08-09 job (`EVT-000224`) came when it did. A read only: it raises no barrier and holds no line for anybody, **does not trigger Section 13.5's warden effect** despite the line-securing language of his job description, and leaves his strikes as C-Rank standard hits."
  location: ENT-000087
  condition: "Healthy; combat-active"
  capabilities: "Runs the strike element on Ada Reyes's contractor jobs — clears and secures a Gate's interior so the harvest element can work behind the line, calls the fall-back signal."
  appearance: "Forties, Latino, lean and rope-muscled, weathered in the specific way of a man who has spent a decade indoors in places that are worse than outdoors. Black hair going grey and cropped without ceremony; a lined, narrow face; flat dark eyes that price a new hire in about two seconds and move on. Practical, unbranded C-Rank kit with the wear concentrated exactly where a point man's would be, and a pump shotgun slung across his back that he checks by touch without looking at it. A working strike captain rather than a showpiece, and visibly uninterested in being anything else."
  portrait: "assets/portraits/Tomas_Alvarez_ENT-000178.png"
  want: "**A clear that stays boring.** He clears and secures a C-Rank interior so a harvest element can work behind the line, and he called the twenty-minute window warning that sent them back to the fence. Nothing in his record is ambition; all of it is a job closing without incident, which is what a strike captain over other people's civilians is actually paid for."
  fear: "**Something reaching the harvest line behind him.** The harvest element is unarmoured, not combat-active, and legally his responsibility once the fence goes up. He gives a new hire a reserved once-over for the same reason he calls the window early."
  secret: "**Unauthored.** Canon gives conduct on one job and nothing withheld. Do not manufacture one from his reserve."
  voice: "**The once-over before the greeting**, and business immediately after it. Speaks in windows and signals — a time, a fall-back call — rather than in reassurance. Assessing without being dismissive: a new hire gets looked at, then gets told the protocol."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-09** (`EVT-000224`), the last span this record settles; it has not been advanced since.\n\n  - **Running the strike element on Ada Reyes's contractor jobs**, which is his standing role and where he is whenever the fiction puts him nowhere else."
  personality: "Assessing rather than dismissive on first meeting a new hire; brisk and businesslike on the job."
  situation: "Ran point on the 2026-08-09 C-Rank harvest job (`EVT-000224`), gave Alexander a reserved once-over on introduction, cleared the Gate's interior with his strike element without incident, and called the twenty-minute window warning that sent the harvest element back to the fence line. No injuries reported; job closed clean."
```

### ENT-000179 — Denny Osei

Harvest-element miner on Ada Reyes's 2026-08-09 C-Rank harvest job, alongside Alexander and Marisol Ruiz.

```yaml
id: ENT-000179
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000224
  game_date: "2026-08-09, staging near the old freight yards"
  real_date: "2026-07-30"
type: Character
subtype: harvest-element miner
scope: local
lifecycle: active
aliases:
  - name: "Denny Osei"
    quality: current
canonical_state:
  affiliation: "Corporate-adjacent contractor — harvest hire"
  home: "Chicago, USA"
  signature_ability: "**None — correctly.** Under Profile Section 13.6 (1.42) a signature ability is authored for named NPC hunters at **D-Rank or above**. Denny Osei is E-Rank: the gift is not absent, but too slight to name, file, or build a reputation on, which is why the boards record hunters at this Rank by working type and licence number instead. An empty field here is correct, not a gap. It may be named later if the fiction ever needs it, under the same no-magnitude limit as any other signature."
  rank: "**E-Rank** — **Authored at the 1.41 follow-up.** An ordinary harvest-hire miner on the contractor's C-Rank jobs, explicitly not combat-active. Section 9.4 is direct about this tier: support crew may be any Rank far below the Gate's, and **most E- and D-Ranks make their living as miners and harvesters on higher-Rank clears** — which is exactly what Alexander does on the same job with an E-Rank card. Resolved by that Rank under Section 13.1."
  pool_variance: "**None** — authored under Profile Section 6.1.2 (`EVT-000249`). Permanent, never rerolled. A solid, ordinary haul (11 C-Rank crystals) and nothing in the record that distinguishes him."
  pools: "**Maximum Health 40, maximum Mana 20** — the flat Section 6.1 table value at E-Rank. Section 5.2 tier costs, read from their own maximum: **Minor 2, Signature 5, Boss-tier 10**. Section 5.3 running-dry threshold **5**."
  location: ENT-000087
  condition: "Healthy; not established as combat-active"
  capabilities: "Ordinary harvest-hire miner working the same contractor's C-Rank jobs as Alexander."
  appearance: "Thirties, Black, Ghanaian-American (the Osei name), of middling height and thickly built through the shoulders from years on a pick. Hair kept very short, a broad face that defaults to good humor, an easy gap-toothed grin he gives away cheaply. Harvest-hire kit rather than combat kit — heavy gloves, knee pads worn through, a dust-greyed jacket he clearly does not bother washing between jobs. Moves at the unhurried pace of a man paid by the shift and not the swing."
  portrait: "assets/portraits/Denny_Osei_ENT-000179.png"
  want: "**Unauthored.** One job (`EVT-000224`), eleven declared crystals, a share of the support pool, and a friendly nod toward another hire. That establishes a working life, not a motive. **Author this at the turn he is next played**, from that scene."
  fear: "**Unauthored.** See above."
  secret: "**Unauthored.** See above."
  voice: "**Barely established.** *Easy, unbothered, friendly toward another harvest hire on sight* is a manner on one job and not a register. A Runtime may play the ease; it should not build a way of speaking on it."
  agenda: "**Authored from role rather than from a want**, because none is established. `Advanced` through **2026-08-09** (`EVT-000224`); it has not been advanced since.\n\n  - **Working harvest-hire jobs on the contractor's C-Rank clears**, on the same footing Alexander does."
  personality: "Easy, unbothered, friendly toward another harvest hire on sight."
  situation: "Worked the 2026-08-09 C-Rank harvest job (`EVT-000224`) alongside Alexander and Marisol Ruiz; declared 11 C-Rank crystals to Ada's manifest, an ordinary solid haul. Paid $5,500 off the support element's declared-pool split."
```

### ENT-000180 — Marisol Ruiz

Harvest-element miner on Ada Reyes's 2026-08-09 C-Rank harvest job, alongside Alexander and Denny Osei.

```yaml
id: ENT-000180
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000224
  game_date: "2026-08-09, staging near the old freight yards"
  real_date: "2026-07-30"
type: Character
subtype: harvest-element miner
scope: local
lifecycle: active
aliases:
  - name: "Marisol Ruiz"
    quality: current
canonical_state:
  affiliation: "Corporate-adjacent contractor — harvest hire"
  home: "Chicago, USA"
  signature_ability: "**None — correctly.** Under Profile Section 13.6 (1.42) a signature ability is authored for named NPC hunters at **D-Rank or above**. Marisol Ruiz is E-Rank: the gift is not absent, but too slight to name, file, or build a reputation on, which is why the boards record hunters at this Rank by working type and licence number instead. An empty field here is correct, not a gap. It may be named later if the fiction ever needs it, under the same no-magnitude limit as any other signature."
  rank: "**E-Rank** — **Authored at the 1.41 follow-up.** An ordinary harvest-hire miner on the contractor's C-Rank jobs, explicitly not combat-active — the Section 9.4 support tier, the same footing Alexander works it on. Resolved by that Rank under Section 13.1."
  pool_variance: "**+5%** — authored under Profile Section 6.1.2 (`EVT-000249`). Permanent, never rerolled. She out-hauled the rest of the support element on 2026-08-09 (14 C-Rank crystals against Denny Osei's 11) and drew an approving nod from Ada Reyes for it. Endurance at the face is the whole of her characterisation."
  pools: "**Maximum Health 42, maximum Mana 21** — Section 6.1 table (40 / 20) × 1.05, floored. Section 5.2 tier costs, read from their own maximum: **Minor 2, Signature 5, Boss-tier 10**. Section 5.3 running-dry threshold **5**."
  location: ENT-000087
  condition: "Healthy; not established as combat-active"
  capabilities: "Ordinary harvest-hire miner working the same contractor's C-Rank jobs as Alexander."
  appearance: "Late twenties, Latina, small and wiry, with the forearms of someone who does this work for a living and the posture of someone who is good at it. Dark hair braided back tightly and shoved under a hard hat; quick brown eyes; a face that goes openly satisfied whenever a seam comes out clean and makes no attempt to hide it. Harvest kit assembled cheaply and kept in better order than her crewmates'. Checks her own haul twice before declaring it."
  portrait: "assets/portraits/Marisol_Ruiz_ENT-000180.png"
  want: "**Unauthored.** One job (`EVT-000224`), fourteen declared crystals and an approving nod from Ada for them. Being a little pleased with a good haul is a reaction, not a motive. **Author this at the turn she is next played**, from that scene."
  fear: "**Unauthored.** See above."
  secret: "**Unauthored.** See above."
  voice: "**Barely established.** A little pleased with her own results, an easy nod to another hire. Enough to play a moment on; not enough to fix a register, and a Runtime should not invent one."
  agenda: "**Authored from role rather than from a want**, because none is established. `Advanced` through **2026-08-09** (`EVT-000224`); it has not been advanced since.\n\n  - **Working harvest-hire jobs on the contractor's C-Rank clears.**"
  personality: "A little pleased with her own results; easy nod toward another harvest hire on sight."
  situation: "Worked the 2026-08-09 C-Rank harvest job (`EVT-000224`) alongside Alexander and Denny Osei; declared 14 C-Rank crystals to Ada's manifest, drawing an approving nod from Ada. Paid $7,000 off the support element's declared-pool split."
```

### ENT-000136 — Priya Menon

Striker and crew lead running her own undersubscribed five-hunter crew. Not related to BGM Region V's director Naomi Okafor (`ENT-000107`) as far as anyone at the Coalition desk has established. Met Alexander in person for the first time 2026-07-28 at staging.

```yaml
id: ENT-000136
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000069
  game_date: "2026-07-27, arranged by phone through Kesha Morrison"
  real_date: "2026-07-24T23:30:49+02:00"
type: Character
subtype: crew leader / striker
scope: local
lifecycle: active
aliases:
  - name: "Priya Menon"
    quality: current
  - name: "Priya Okafor"
    quality: former
relationships:
  - REL-000065
canonical_state:
  affiliation: "Windy City Hunters Coalition — crew leader"
  home: "Chicago, USA"
  rank: "**D-Rank** — carded D at her Awakening and unmoved since (Section 2), resolved by that Rank under Section 13.1."
  pool_variance: "**None** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). Deliberate rather than a default: solid, workmanlike, nothing flashy is her entire characterisation and has been confirmed by direct observation. She is the median D on purpose."
  pools: "**Maximum Health 100, maximum Mana 50** — the flat Section 6.1 table value at D-Rank. Section 5.2 tier costs: **Minor 5, Signature 12, Boss-tier 25**. Section 5.3 running-dry threshold **12**."
  signature_ability: "**Follow-Through.** Her mana carries a committed strike past the point where the body would stop, so a blow that connects keeps driving through the guard behind it. Method and reach only (Section 13.6): her hits land as D-Rank standard hits and the signature never adds magnitude. **It is the same gift as her flaw** — the reason her weight travels past the end of her third beat, which Alexander diagnosed in front of her own crew (`EVT-000116`) and which she dated to age twenty-four. She has spent eight years being powered by a thing that does not brake. Triggers none of Section 13.5's three authored effects."
  location: ENT-000087
  condition: "**Fit for work: her B-Rank crew cleared `GB-58` clean on 2026-09-29** (`EVT-001149`), and no injury has been recorded since July. Prior: wounded and healing under professional treatment — thrown hard by the elite's lunge after a fumbled intercept (`EVT-000071`). Alexander's potion restored her Health enough to fight properly but left the wound's severity untouched (Profile Section 6.4). She had the side properly assessed at a clinic on the morning of 2026-07-29 (`EVT-000081`), was visibly slow but present through that evening's Coalition meeting, and left the crew dinner early to ice it (`EVT-000083`). Never treated by Owen, who spent his one used touch on Alexander instead. On the morning of 2026-07-30 she is filing the Ashfield report and carrying the crew's crystals and cores in to close the contract; her exact position that morning is not established beyond Chicago."
  knowledge: "**What she knows about Alexander — read this before any line where she asserts something about him.** Every entry cites the Event that established it; anything not listed here she has not been told, which is the boundary rather than a gap (Resident Core, *Load a Recorded NPC Before Playing It*). **She has fought beside him**, which is a channel almost nobody else in the cast has.\n\n  - **His conduct in a live Gate, first-hand.** She ceded the tactical call to him outright — *'you've earned the call'* — at the boss fight (`EVT-000079`, `EVT-000080`), which is a judgment formed from watching, not from being told.\n  - **The crew's real Ranks, including his carded one**, which she confirmed directly when asked: herself D-Rank, Julian and Renata E-Rank, Owen C-Rank.\n  - **That Alexander and Owen are together.** Owen told her, Julian and Renata directly and in the same room, at Alexander's own arrangement — she required that nobody hold a secret they had not agreed to.\n  - **That he corrects her fighting accurately** — she accepted his read of her third-beat guard drop as the first useful thing anyone had told her about her own fighting in eight months.\n  - **That Owen left her crew for a crew Alexander is forming.** Owen told her in person; she went quiet rather than loud, asked whether it was already decided before he sat down, and he could not honestly say no (`EVT-000291`). **This is the one thing she knows about him that costs her something**, and she knows it from the person he took. She has the fact of the crew and Alexander at its centre; she was never given its terms, its floor, or who else was approached.\n\n  **What she does not have.** Any Bearer-only quantity on the Profile §14.4.1 register. **The distinction to hold when playing her:** she has seen him perform well above an E-Rank card repeatedly and at close range, so an ordinary-explanation read of him is *hers to hold and voice* — but it is a belief under Decision 091, not knowledge, and it never resolves into the System."
  capabilities: "Striker; **D-Rank**, and has been since her Awakening — Rank is fixed at measurement (Profile Section 2), so the card she carries now is the card she has always carried. Stated directly to Alexander (`EVT-000077`); the only above-E-Rank among the crew's combat element. Leads her own five-hunter crew. Solid, workmanlike reputation, nothing flashy — confirmed accurate by direct observation: competent, decisive, but not infallible. Approved Alexander's gear before entry and set his position (rear, paired with Owen, support role) based on Kesha's word about his read and his own self-description."
  appearance: "Late 30s, South Asian (the Priya name), solid and workmanlike — an athletic striker's build with nothing showy about it. Black hair in a tight, no-nonsense braid or bun; steady, level dark eyes; the small scars and worn gear of eight years in the trade. Practical reinforced combat kit, sensibly armored and sensibly maintained. Grounded and direct, quicker to own a mistake than to explain it away."
  portrait: "assets/portraits/Priya_Menon_ENT-000136.png"
  personality: "Direct, practical, reads people's stated capabilities and works with them rather than around them. Took Alexander's honest self-assessment (support-leaning, analytical, dagger-and-krav-maga close combat) at face value and built the formation around it without argument. Owns a mistake plainly rather than deflecting it, and updates her read of someone fast when the evidence changes."
  want: "**A crew that makes room for the people other crews will not.** It is the thing she said to Owen's face when he told her he was leaving — that he was not just leaving a crew but **the only one that ever made room for a mender at all** (`EVT-000291`). She takes people at their own stated capability and builds the formation around it, which is the same policy stated as a method."
  fear: "**That the room she makes is the reason people can afford to leave.** Owen is the instance and she named it herself, quietly, in the form of a question about whether it was already decided before he sat down. She did not shout and she did not fight it, which is the shape this fear takes in her: she concedes fast and carries it afterward."
  secret: "**What the fumbled intercept cost her.** She misread the elite's lunge timing on Alexander's called pattern, was thrown hard, and the elite broke past her toward the rear (`EVT-000071`). She owns the mistake plainly in company and has never said what it did to her confidence. **Known to:** nobody; Alexander saw the fumble but not the aftermath."
  voice: "**Owns the error before anyone else reaches it**, flatly and without cushioning, then moves to the next decision. Asks the question she actually wants answered rather than the polite version — *was it already decided before you sat down.* Goes quiet rather than loud when something lands."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-11** (`EVT-000291`), the last span this record settles; it has not been advanced since.\n\n  - **Telling Julian and Renata herself that Owen is leaving.** She asked for that specifically and per the live Current State has not done it. **This is a pending world-side commitment owed by her** (Section 7.4), it is hers rather than Alexander's, and it does not discharge by him raising it.\n  - **Leading her five-hunter crew**, now one mender short and not yet publicly so.\n  - **Recovering.** The side was properly assessed on 2026-07-29 (`EVT-000081`); she was visibly slow through that evening and left the crew dinner early."
  background: "Boxed semi-competitively in her twenties before a knee injury and the awakening test landed the same year — 'God's way of telling me to hit things that hit back less predictably,' by her own account (`EVT-000083`). Has a partner at home, mentioned only briefly, and a garden she's disproportionately proud of, tomatoes specifically; genuinely bristles at any suggestion store-bought tomatoes are comparable."
  situation: |-
    **Reconnected 2026-09-22 at the Chicago recruitment open house (`EVT-001069`); her five-hunter crew is flagged for the Pendragon Guild's priority intake.** Before that, the record last reached her on 2026-08-11, when Owen told her he was leaving her crew for one of his own (`EVT-000291`, relayed by Owen). She did not yell. She said he was leaving the only crew that ever made room for a mender, and asked to tell Julian and Renata herself; that is still hers to do (`agenda`). A C-Rank legal minimum needs a card like his, so losing him hurt the crew's composition more than it hurt her personally.

    **What she and Alexander are to each other.** She led the Ashfield clear where the Gate was mis-posted (2026-07-28, `EVT-000076`-`EVT-000080`). She fumbled the elite intercept, owned the rear-formation gap, and ceded him the call: *"you've earned the call twice today."* She filed the clear true, as BGM's mis-posting, and will not write that he did not fight or lie to Region V if asked point-blank (`EVT-000081`). At his first training (`EVT-000116`) she lost the spar in two seconds, demanded the diagnosis in front of her crew, and drilled the stopped third beat he named. She knows eight years of the trade and says attention from Region V is *"not a promotion, it's a process."* The dated history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
```

### ENT-000137 — Julian Boyd

Striker on Priya Menon's crew; broad-shouldered, economical with words, carries a **ranked shotgun** (not a mundane firearm — confirmed by its effectiveness against monsters, `GTF-OVR-003`). Runs point when ranged work is called for.

```yaml
id: ENT-000137
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000070
  game_date: "2026-07-28, staging and Gate entry"
  real_date: "2026-07-24T23:30:49+02:00"
type: Character
subtype: striker (ranged)
scope: local
lifecycle: active
aliases:
  - name: "Julian Boyd"
    quality: current
  - name: "Julian"
    quality: current
canonical_state:
  affiliation: "Windy City Hunters Coalition — Priya Menon's crew"
  home: "Chicago, USA"
  rank: "**E-Rank** — fixed at Awakening, confirmed by Priya (`EVT-000077`); resolved by that Rank under Section 13.1."
  pool_variance: "**+5%** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). He knew the shotgun before he awakened and punching above his Rank is his established mode; a shallow well would contradict the man the crew actually fields."
  pools: "**Maximum Health 42, maximum Mana 21** — Section 6.1 table (40 / 20) × 1.05, floored. Section 5.2 tier costs: **Minor 2, Signature 5, Boss-tier 10**. Section 5.3 running-dry threshold **5**."
  signature_ability: "**None — correctly.** Under Profile Section 13.6 (1.42) a signature ability is authored for named NPC hunters at **D-Rank or above**. Julian Boyd is E-Rank: the gift is not absent, but too slight to name, file, or build a reputation on, which is why the boards record hunters at this Rank by working type and licence number instead. An empty field here is correct, not a gap. It may be named later if the fiction ever needs it, under the same no-magnitude limit as any other signature."
  location: ENT-000087
  condition: "Healthy; took no injury in the Ashfield clear. Out of the Gate since 2026-07-28 (`EVT-000080`); attended the Coalition meeting and crew dinner on 2026-07-29 (`EVT-000083`). His position on the morning of 2026-07-30 is not established beyond Chicago."
  capabilities: "Striker, ranged specialist; **E-Rank**, confirmed directly by Priya (`EVT-000077`). Carries a ranked (mana-bearing) shotgun — confirmed effective against monsters, which a mundane firearm would not be (`GTF-OVR-003`). Quiet, economical, does a lazy half-salute rather than talk. Landed two clean kills on the first wave of common beasts."
  appearance: "Mid-30s, broad-shouldered and rangy, sun-weathered from seasons of outdoor harvest work before the shotgun. Short brown hair, perpetual stubble, a flat unbothered expression. Practical field gear with an old harvester's wear to it, and a distinctive ranked (mana-etched) shotgun on a sling that never leaves his reach. Economical in everything — a man who says the necessary words and no others."
  portrait: "assets/portraits/Julian_Boyd_ENT-000137.png"
  personality: "Terse, unbothered, competent. Doesn't say much outside of what the fight needs — but loosens up considerably over food with people he trusts, disclosed 2026-07-29 (`EVT-000083`)."
  want: "**To be trusted to hold fire.** He held on the boss until Alexander's signal and then sustained, which is the hardest thing a ranged specialist is ever asked to do and the thing nobody thanks him for. A crew that lets him choose his own moment has not understood what he does."
  fear: "**Not being told in time.** He did not see Alexander's near-death against the earlier common beast and confirmed as much to Priya with a short humorless nod (`EVT-000077`). What he can shoot is bounded by what he is told, and being the last to know is the specific way his job fails."
  secret: "**Unauthored.** Nothing in canon establishes anything he withholds. He says little, but everything recorded of him is reticence rather than concealment, and the two must not be conflated."
  voice: "**A lazy half-salute instead of a sentence** wherever one will do. Speech reserved for what the fight needs, delivered flat. Loosens noticeably over food with people he trusts — which is a change in volume, not in register."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-07-29** (`EVT-000083`), the last span this record settles; it has not been advanced since.\n\n  - **Working Priya Menon's crew**, where he holds the choke point on the front line alongside Renata.\n  - **He has not been told that Owen Callahan is leaving.** Priya asked to tell him and Renata herself that evening and per the live Current State has not; that is her pending commitment, not his knowledge, and he must not be narrated as aware of it."
  background: "Grew up on a family farm outside Peoria, downstate Illinois; parents still work the land, a brother he calls maybe monthly. Was already handling a shotgun clearing coyotes and worse off the property before he ever awakened — when the ranking test flagged him, picking up a ranked version of the same gun was the obvious move, not a new skill learned for the job. No family in Chicago. Off-hours he's slowly rebuilding a truck that by his own account shouldn't still run, and it's the one subject that gets him talking at length unprompted (`EVT-000083`)."
  situation: "Held the front line's choke point on entry alongside Priya and Renata, killing two common beasts outright. Present for the elite's breakthrough; did not engage it directly, and confirmed to Priya that he hadn't seen Alexander's near-death moment against the earlier common beast either — a short, humorless nod, no elaboration (`EVT-000077`).\n\n**The boss fight (`EVT-000079`, `EVT-000080`).** Held fire until Alexander's signal, then sustained an unbroken firing line on the boss for the entire engagement, and on command laid suppressing fire between the boss and Owen to deny that ground rather than to kill — the shot that turned the boss onto its dead limb and opened the killing sequence. Disclosed unprompted that he worked **two seasons on harvest crews** before taking up the shotgun: slow but careful, and he does not shatter crystal. Offered the boss-drop Longshot [C-Rank] directly to Priya as the better shot, unasked and without any claim on it; when Alexander coldly overruled him — split or buy-out — he accepted it flatly and without argument, and was already moving. Surname: Boyd.\n\n**The first training session (`EVT-000116`, 2026-08-02 evening).** Openly pleased at an excuse to use the Coalition trading field; set up the target frame himself and took his fire-lane assignment in four words. Sparred second: planted, waited, and threw one enormous straight right about a third of a second late, and when it missed **his whole system stopped** — no shove, no clinch, no attempt to reset the range he actually wants. He was told so plainly, along with the prescription: he does not need to become a striker, he needs a **second answer** that buys two metres. He was also told, and visibly did not expect, that he was the only member of the crew who never deviated from a called plan across the entire Ashfield clear, and that his fire discipline is why Owen is alive to complain about anything. **Committed to a range session at the next training**, and was asked what his ranked shotgun does that another gun does not — a question he stated outright nobody has ever asked him, answering only *it does two things, I'll show you.* Took the news about Alexander and Owen with 'yeah, alright' and kept walking."
```

### ENT-000138 — Renata Marchetti

Sensor/reader on Priya Menon's crew; reads a room and its threats before anyone else does, by trained instinct rather than any established signature ability. Crouches over her gear with quick, practiced hands.

```yaml
id: ENT-000138
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000070
  game_date: "2026-07-28, staging and Gate entry"
  real_date: "2026-07-24T23:30:49+02:00"
type: Character
subtype: sensor / reader
scope: local
lifecycle: active
aliases:
  - name: "Renata Marchetti"
    quality: current
  - name: "Renata"
    quality: current
canonical_state:
  affiliation: "Windy City Hunters Coalition — Priya Menon's crew"
  home: "Chicago, USA"
  rank: "**E-Rank** — fixed at Awakening, confirmed by Priya (`EVT-000077`); resolved by that Rank under Section 13.1."
  pool_variance: "**−5%** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). She is the crews read-first element rather than a combat one, and the thinnest body on the line; the shallower well is the cost of the role, not a slight."
  pools: "**Maximum Health 38, maximum Mana 19** — Section 6.1 table (40 / 20) × 0.95, floored. Section 5.2 tier costs: **Minor 1, Signature 4, Boss-tier 9**. Section 5.3 running-dry threshold **4**."
  signature_ability: "**None — correctly.** Under Profile Section 13.6 (1.42) a signature ability is authored for named NPC hunters at **D-Rank or above**. Renata Marchetti is E-Rank: the gift is not absent, but too slight to name, file, or build a reputation on, which is why the boards record hunters at this Rank by working type and licence number instead. An empty field here is correct, not a gap. It may be named later if the fiction ever needs it, under the same no-magnitude limit as any other signature."
  location: ENT-000087
  condition: "Healthy; took no injury in the Ashfield clear. Out of the Gate since 2026-07-28 (`EVT-000080`); attended the Coalition meeting and crew dinner on 2026-07-29 (`EVT-000083`). Her position on the morning of 2026-07-30 is not established beyond Chicago."
  capabilities: "Reads incoming threats and the shape of a fight early and accurately — an experienced hunter's trained instinct, not an established awakened signature ability. **E-Rank**, confirmed directly by Priya (`EVT-000077`). Correctly identified the population as heavier than a D on first entry, and called the elite's approach and the den structure behind it before either was visually confirmed."
  appearance: "Thirties, lean and alert, with quick precise hands and a reader's habitual stillness. Dark hair tied back out of the way; watchful dark eyes that catch a wrong detail before anyone else does; minimal, well-kept field gear and no showy weapon. Says little, and what she says tends to be right — a presence people learn to listen to."
  portrait: "assets/portraits/Renata_Marchetti_ENT-000138.png"
  personality: "Quiet, observant, direct when it matters. Gave Alexander a quick, assessing nod on meeting him rather than small talk."
  want: "**To be listened to when she says something is wrong.** Owen's description of her is exactly that, and she has earned it on the record: she called the population heavier than a D on first entry, called the elite's approach and the den structure behind it before either was visually confirmed, and was right every time."
  fear: "**Being right and late.** A reader's warning is worth what the gap between the call and the response is worth. She has not yet been ignored on anything that cost someone, and the fear is specifically of the first time."
  secret: "**Unauthored.** Canon records a great deal of what she perceives and nothing she conceals. Do not manufacture one from her quietness — her reticence is register, and Section 7.7 does not require every actor to be withholding something."
  voice: "**Lays out the live options and does not choose between them** — she did exactly that for Alexander after the elite, push toward the den, fall back, or hold. Quiet until it matters, then flatly direct. An assessing nod where someone else would make conversation."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-07-29** (`EVT-000083`), the last span this record settles; it has not been advanced since.\n\n  - **Working Priya Menon's crew** as its reader, holding the choke point alongside Julian.\n  - **She has not been told that Owen Callahan is leaving.** Priya asked to tell her and Julian herself and per the live Current State has not; that is Priya's pending commitment and Renata must not be narrated as knowing it — including by inference from her own accuracy."
  background: "Six years as a Chicago beat cop before awakening — the source of the reading habit and the exit-scanning, not an awakened signature ability; her gift, disclosed 2026-07-29, is trained instinct alone (`EVT-000083`). Says the job burned her out well before Gates existed and that hunting is, unfairly, less bureaucratic than policing was. One younger sister; otherwise private about family, and shuts down further prying without unkindness. Plays competitive chess online, badly by her own account."
  situation: "Held the choke point alongside Priya and Julian on the first wave, deflecting one beast clear of a kill shot for someone else to finish. Correctly warned the crew of the elite's approach and its 'den structure' origin before it closed. Owen described her as someone 'you'll want to listen to when she says something's wrong.' After the elite's death, laid out the crew's live options to Alexander — push toward the unlocated den, fall back, or split to sweep the remaining pack — and deferred the call to Priya (`EVT-000077`).\n\n**The boss fight and after (`EVT-000079`, `EVT-000080`).** Objected correctly that reading and covering Owen were incompatible jobs, and was freed to read exclusively in the revised plan — after which her contribution was decisive. She guided the crew's unseen approach to the den, counted the population discrepancy nobody else had tracked (five of twelve commons killed, seven unaccounted), called the boss's every commitment during the fight, and after the kill produced a **complete, definitive read** of the interior: seven common beasts alive at the north wall, agitated, contained. She stated the containment rule plainly — nothing leaves a standing Gate — which converted an apparent crisis into a fight the crew could simply decline.\n\nOn the reporting question she supplied the decisive practical objection: **the loot declares the Rank.** No appraiser logs C-Rank crystals and cores against an E-Rank–D-Rank clear without asking, so the crew can lie on the form or sell the material, but not both. Her judgment was correct or decisive at every point of this clear, and everyone in the crew now visibly treats it that way.\n\n**The first training session (`EVT-000116`, 2026-08-02 evening).** Refused the premise of her spar — *what am I supposed to be learning here, it isn't how to beat you* — and, told to come at Alexander while he defended only, produced six years of police control tactics: wrist and elbow entries off-line, level changes, walking him toward the gear bench, forearm and knee when none of that worked. She landed nothing across roughly forty seconds. Diagnosed unasked: she does not attack, she **selects**, waiting for a specific configuration and then committing totally — the same instinct that made her Ashfield reads decisive — and her single hole is that she is wired to **stop** a threat rather than end one, twice choosing a control option over a finishing one. Correct against a person; a wasted opening against a beast. Her response was *the cuffs thing. Yeah.* She proposed and then ran the session's most useful drill herself — deliberately doing the wrong thing, calling a threat late and then not at all — on the grounds that on Tuesday the plan survived until it didn't. Also stated that this was the first evening any of four crews she has worked has spent on how they work rather than what they are worth, and that a C-Rank stood behind them for a month before an outsider pointed at him.\n\n**Exposure watch.** She is the only crew member other than Owen to have questioned Alexander directly: after her spar she named the gap between the filed report (support striker, hurt, treated) and what she had just watched, and asked *who are you, exactly?* He deferred it — *now I am your trainer*, personal questions later — and she let it go visibly by choice, saying only 'later, then.' She had already assembled the relationship before Owen announced it, from Alexander's offhand mention of showing Owen stretches and from the smile; her entire comment on the announcement was 'the stretches.' Her interest remains social rather than investigative, and it has not diminished."
```

### ENT-000139 — Owen Callahan

**2026-08-15, the balcony and the Crypt (`EVT-000399`-`EVT-000403`).** Woken with a kiss, a shared workout, an afternoon on the balcony where he named `OBJ-25`'s unkept term back to Alexander — then came along as backup mender/observer on the solo C-Rank instant dungeon that answered it, non-combatant throughout, his own evasion clearing the boss's one dangerous moment unaided. Watched the Level 21→22 crossing and mined the deposit alongside him. Full texture in `REL-000066`.

**At a glance — read this before narrating him.** Twenty-seven. **C-Rank licensed mender**, five years in the trade, staff at Edgewater Hospital in Chicago, lives alone now in the Rogers Park apartment (`ENT-000087`, his alone since `EVT-000999`). **Alexander Pendragon's ex-partner as of 2026-09-15** — together 2026-07-29 through that date, ended at Alexander's initiative, not reconciled. Since 2026-08-04 (`EVT-000145`), still **the only person alive who has been told the System by name** — that channel does not close with the relationship. As of 2026-08-10 evening he carries **three abilities** — his mending, Stone Skin, and now Flash Step (`EVT-000255`) — which is the first recorded instance in Gatefall of an awakened holding more than one, and nobody but Alexander knows it.

**Rank, and how to resolve him.** C-Rank, carded at his Awakening at twenty-two and unmoved since; resolved by that fixed Rank under Profile Section 13.1. **"Mender" names his signature effect (Section 13.5), never a combat penalty.** He cleared almost the whole Overgrown Temple instance alone on 2026-08-06 — eleven commons and both elites by his own hand, the boss held from 160 down to 15 Health across two exchanges, exactly one landed hit against him all afternoon. Narrate and resolve him as a genuinely capable C-Rank combatant who happens to heal, not as a medic improvising above his station.

**Pools — Health 275, Mana 139.** C-Rank table (250 / 125) at an authored **+10%** individual variance (Profile Section 6.1.2), **+2 from one Intelligence elixir** (`EVT-000680`, Section 12.5.1) — **two past the flat ceiling any C-Rank body can hold.** Nothing on his BGM card reflects it; no instrument has looked. The state between Ranks has no name and this is what one looks like. Section 5.2 costs off *his own* maximum: **Minor 13, Signature 34, Boss-tier 68**; he runs dry below **34**. **His mender field-touch does not vary — it reads the flat table and restores 62.** The deeper well buys more touches, never a stronger one.

**Ability 3 — Minor Triage, consumed rune, 2026-08-23 (`EVT-000680`).** A lesser working for ordinary/minor-severity injuries only — scrapes, strains, a split knuckle — drawn at **Minor tier, 13** rather than the full 62-cost Signature working. Never a substitute for anything Severe or worse, which still costs 62. Owner ruling fulfilling the "cheap-Mana Mend" want named at `EVT-000255`: **the well's size (`OBJ-18`) is unchanged; what changed is what has to be paid out of it for the small stuff.** No window, no notification — he simply knows, the same as his other two abilities.

| Ability | Rank | Effect | Cost |
|---|---|---|---|
| **Mend** — his Awakening gift, his signature | C-Rank | Treatment touch, **62** per touch, three per Gate clear; plus one post-fight injury tier down per party member per clear (Section 13.5). Cleared a Severe injury outright (`EVT-000080`) | ≈4–5 ordinary-severity patients per clear in his own words, as few as 2 for something severe |
| **Stone Skin** — consumed rune, 2026-08-06 (`EVT-000178`) | D-Rank | 30% physical damage reduction while sustained; ends when it lapses or is dropped. **Once per dangerous scene** (Section 13.6) — no mastery track, no counter, no progression | **Signature tier, 34** — drawn from **the same well as his mending**, so every activation is a person he cannot put back together |
| **Flash Step** — consumed rune, 2026-08-10 (`EVT-000255`) | D-Rank | Close or break line-of-sight distance instantly once, granting +1 modifier step to the immediate follow-up action. **Once per dangerous scene** (Section 13.6) — no mastery track, no counter, no progression | **Minor tier, 13** — the same well as his mending and Stone Skin |
| **Minor Triage** — consumed rune, 2026-08-23 (`EVT-000680`) | — | Treats a minor/ordinary-severity injury only; never Severe or worse | **Minor tier, 13** — same well; owed since `EVT-000255`, fulfilled now |

**The well.** One capacity feeds both. It refills overnight or across a day, and **a System Mana potion restores it in full and instantly** (`EVT-000180`) — the only known way around the hardest constraint in his profession. Its *size* is fixed at his Awakening and cannot grow; that is the standing problem of `OBJ-18`, and Alexander has promised to solve it anyway.

**His week — a fixed rota. Do not improvise his availability; read it here.**

| Day | |
|---|---|
| **Monday** | off |
| **Tuesday** | off |
| **Wednesday** | **Edgewater, 08:00–20:00** |
| **Thursday** | **Edgewater, 08:00–20:00** |
| **Friday** | **Edgewater, 08:00–20:00** |
| **Saturday** | off |
| **Sunday** | off |

Three twelve-hour shifts, always the same three days. **He does not work weekends** except as rare emergency or short-staffed cover, and he is never rostered a Friday night — so a night shift running into a Saturday cannot occur.

- **The 2026-08-08/09 weekend was exactly that exception.** Saturday plus a Sunday, both outside his pattern, which is why he was given **Monday 2026-08-10** off in return. **Monday is earned by working the weekend at all, not by the hours** — the Sunday itself was a short one.
- **The Sunday shift ran 08:00–16:30, eight and a half hours** — settled by owner ruling against three canon anchors that leave no other reading. He ran the 06:00–07:50 lakefront regimen with Alexander that morning (`EVT-000218`), which forecloses any earlier start; `EVT-000218` states the shift began at **08:00**; and he came off it, texted, and reached Alexander's door by **~16:50** (`EVT-000239`, `EVT-000241`), which forecloses a later finish. The "eleven-hour" phrasing that stood in four ledgers was arithmetically impossible against all three and is corrected. What made the day rough is unchanged and was never the length: a patient coded in bay three at eleven and ate the whole of it.
- **Thursday 2026-08-06's 16:00 start** was a swapped late shift, recorded as a one-off against the fixed 08:00.
- **His Gate work fits the four days off.** The established 2–3 clears a month — the **Bridgeport crew** as his regular, who call whenever they can afford him and apologise when they can't — sit comfortably on Mondays, Tuesdays and weekends. **Two Bridgeport clears a month fit without touching the rota.**

**A shift spends the well.** A full twelve hours at Edgewater draws most of his capacity, and it returns overnight. So a Gate on **Saturday morning after Friday's shift** finds him at partial capacity, while **Monday, Tuesday, or a Saturday off a rest day** finds him full. That is the scheduling question behind `OBJ-19` — not whether he is free, but whether he is *full* — and it is the practical reason a System Mana potion in Alexander's pocket is worth what it is worth.

**Gear — all of it his own property.**

| Item | Rank | Effect | Source |
|---|---|---|---|
| Horizon Bastion Gauntlets | C-Rank | 8% physical reduction | Bought for him by Alexander, $18,500 the set (`EVT-000118`) |
| Horizon Bastion Torso | D-Rank | 5% physical reduction | as above |
| Horizon Bastion Boots | D-Rank | 5% physical reduction | as above |
| Quickknife, Boss-Imprinted | E-Rank | Weapon power 2, armed strike ×0.75, dual-wieldable; Echo — once per scene, +1 modifier step on a Strength action to break, shove, or resist forced movement | The Cicero alpha's drop, given to him on the spot (`EVT-000121`) — **his first weapon** |

Total ≈**18% physical reduction**. He carries no Stat sheet (Section 11.5), so gear grants him reduction and build quality only. Also his: a compact field kit, two lesser *licensed* restoratives (world-market alchemy, not System stock), tape — bought with his own money in protest at Alexander overriding their cost split — and **one Lesser Healing Potion of System origin**, his to spend on anyone he judges needs it, with one absolute line: **never a mana potion, to anyone, ever** (`EVT-000186`).

**Where he stands with Alexander (`REL-000066`), current as of `EVT-000999`: ended**, at Alexander's initiative, not reconciled. Lease and deposit both his now. **History below is record, not current state.**

Together since the Ashfield clear. First mutual *I love you* 2026-08-05; *Marry me*, half-joking, same evening; 2026-08-10, **his deflecting joke failed to arrive** for the first time. Gave Alexander a drawer, a shelf, a cut key, nothing returned. The Rogers Park flat search is moot now.

**The one thing to get right about him.** Five years of being the useful one — people are lovely to him until the last wound closes, at which point he is equipment until the next posting. He refuses on principle to become **a rate**: it is why he has never asked Priya for a premium, and why he insisted on naming a rent share he will actually feel. Underneath that is the pause on the rocks (`EVT-000177`) — one to three seconds in which he did not go in, which worked, which nobody reviewed, and which he has never been able to grade. His fear is not failing to arrive. It is pausing again, getting away with it again, and never knowing.

**Updated 2026-08-11 (`EVT-000271`).** He **has** agreed to leave Priya Menon's crew and found a new one with Alexander (`OBJ-12`, resolved) — but **has not yet told Priya, Julian, or Renata.** Do not narrate that conversation as having happened until it is actually played. He has still **not** agreed to become a permanent off-books Gate-goer beyond the crew he's just agreed to help build.

**Player ruling on how to play him, 2026-08-29 real date (in-fiction 2026-09-07).** He is not a system, and he is not an information-extraction interface for the protagonist's day — he is a person, and Alexander's boyfriend, first. A groundable question (from his own `want`/`fear`/`voice` below) is not licence to make most of his turns a question aimed at Alexander. Play his own independent business as readily as his curiosity: comfortable silence, a tangent about the boat or Nikitas or his own shift, a complaint, a joke with no informational payload, affection with no ask attached. **He is allowed to just be home with someone, not working an angle on them.** This governs *how often* his established want/fear surface as a question, not what he wants or fears — those fields are unchanged.

```yaml
id: ENT-000139
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
# EVT-001095 (2026-09-25 06:41): texted Alexander first that the Bridgeport crew called and he took a Sunday C-Rank job.
# EVT-000864 (2026-09-07): the response-window grievance aired and dropped; the shared
#   apartment's rented-together history reaffirmed against a stale "his apartment" read.
# EVT-000606 (2026-08-22): sponsor of record for the Ashfield D-Rank crew clear, Iris
#   Halvorsen's supervised run; no combat role change, formation element lead as usual.
# EVT-000607 (2026-08-22): cleared a D-Rank Gate at the Lakefront corridor completely
#   unassisted, unsanctioned, insurance void by his own choice — five commons, one elite,
#   one boss, no assist on a single killing blow. Two natural-100 crits taken and weathered
#   (275->193, then 162->105 at the low point), two Standard Healing Potions drunk mid-fight.
#   Alexander support-only throughout: Keen Sense, Exploit Pattern, Field Command, two
#   potion deliveries, no strike role. Combat Health is fixed-rank scene-transient state
#   (Profile Section 5.2) and is not carried on this record; no lasting injury resulted.
provenance:
  source: EVT-000070
  game_date: "2026-07-28, staging and Gate entry"
  real_date: "2026-07-24T23:30:49+02:00"
type: Character
subtype: mender
scope: local
lifecycle: active
aliases:
  - name: "Owen Callahan"
    quality: current
  - name: "Owen"
    quality: current
relationships:
  - REL-000066
canonical_state:
  affiliation: "Independent — leads his own Bridgeport crew"
  home: "Chicago, USA (Rogers Park)"
  rank: "**C-Rank** — fixed at his Awakening at twenty-two, resolved by that Rank under Section 13.1. Confirmed directly by Priya Menon (`EVT-000077`)."
  pool_variance: "**+10%** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). Permanent and never rerolled. Deliberate: his mending capacity is repeatedly established as genuinely deep for his Rank — a real mender worth the whole cost to a waiver-tier crew, four to five ordinary patients per clear — and the gift outran the body it landed in."
  pools: "**Maximum Health 275, maximum Mana 137** — Section 6.1 table (250 / 125) × 1.10, floored. Section 5.2 tier costs, read from *his own* maximum: **Minor 13, Signature 34, Boss-tier 68**. Section 5.3 running-dry threshold **34** (25% of 137); below it he takes −1 modifier step on all actions until he recovers above it. **The one number that does not vary:** Section 13.5s mender field-touch reads the **flat** table and restores **62** (¼ of 250), not 68 — the deeper well buys him more touches, never a stronger one."
  learned_techniques: "**Stone Skin [D-Rank]** — 30% physical damage reduction while sustained, ending when it lapses or is dropped. This is the authored technique effect at its Rank (Section 7.3), *not* a mastery rung: Section 13.6 gives an NPC learned technique no mastery track, no use counter, and no progression, so the earlier Novice-mastery label was wrong and is retired. Learned by consuming an unbound-awakened rune (`EVT-000178`); effective Rank is min(teaching Rank, fixed Rank) = D. **Usable once per dangerous scene** (Section 13.6). Cost from adoption forward is a Section 5.2 tier of his own maximum — read **Signature, 34**, since a once-per-scene sustained defence is not the used-freely-and-repeatedly of the Minor tier. The narrated two-thirds cost at `EVT-000180` predates Profile 1.32s adoption and is not restated.

  **Flash Step [D-Rank]** — close or break line-of-sight distance instantly once, granting +1 modifier step to the immediate follow-up action. Learned 2026-08-10 (`EVT-000255`) by consuming the second unbound-awakened rune Alexander has given him — the one banked since `EVT-000142`, unconsumable by Alexander himself because he already knows Flash Step above this rune's D-Rank. Given and eaten on Owen's own boat, mid-conversation, with none of the street-corner haste of the first one. Effective Rank min(teaching Rank, fixed Rank) = D. **Usable once per dangerous scene** (Section 13.6), Minor tier (13) off the same well as his mending and Stone Skin. Not yet activated in play. Alexander framed it to him explicitly as safety rather than power — the thing that lets a mender who is always standing where the wound is get *away* from that position, or reach one faster, rather than a fighting tool — and Owen accepted it on exactly those terms.

  **Mana Bolt [C-Rank]** — a ranged mana bolt, no distance limit within line of sight; Section 13.6 gives no mastery track, so this is the flat technique effect rather than a Bearer's Intelligence-scaled version. Learned 2026-08-16 evening (`EVT-000434`) from the second Crypt instant dungeon's boss-drop rune — `unbound-awakened` this time rather than `bearer-only`, so it was his to take. Effective Rank min(teaching Rank C, fixed Rank C) = C, the first technique he's learned at his own full Rank rather than a Rank below it. Offered outright by Alexander rather than assumed; Owen weighed the same well-capacity cost that already governs Stone Skin and Flash Step before accepting. **His first ranged option, and his fourth ability off one C-Rank Mana pool** — tested once at low power on the way out, landed clean. Drawn on for real the same evening, hunting the instance's remaining commons alongside Alexander: several landed hits, one clean natural-critical kill, one natural-critical-failure fumble he blamed on the rune rather than himself."
  equipment: "Horizon Bastion Gauntlets [C-Rank] 8%, Horizon Bastion Torso [D-Rank] 5%, Horizon Bastion Boots [D-Rank] 5% — ≈**18% total physical reduction**. **Longsword [C-Rank]** — given outright 2026-08-16 (`EVT-000416`): weapon power 7, armed strike ×0.85, Predator Boss Imprint, Edge Echo (once/scene, +1 step on one close attack against an already-injured target). **His primary weapon**, blooded the same afternoon across a full D-Rank clear. Boss-Imprinted Quickknife [E-Rank] (power 2, ×0.75, dual-wieldable; Echo — once/scene, +1 step on a Strength action to break, shove, or resist forced movement) **retained but displaced.** Section 11.5 gives him no Stat sheet, so the Longsword's Strength and Agility lines grant him nothing — power and chassis are the whole gain, derivation in `120_INVENTORY_AND_OWNERSHIP.md`."
  signature_ability: "**His mending** — the healing touch he woke with at twenty-two, and the reason mender names him. Triggers both of Section 13.5s mender effects for any party he is in: three field-touches per Gate clear at 62 each, and one post-fight injury tier down per member per clear for injuries at C-Rank or below."
  location: |-
    **Chicago; his home is the Rogers Park apartment (`ENT-000087`), his alone since 2026-09-15 (`EVT-000999`).** No scene has placed him since 2026-09-25, when he was in contact by text only (`EVT-001102`); this is his last known location, not a sighting.
  condition: |-
    **Healthy.** Nothing on record has hurt him since the 2026-08-23 Frozen Gallery clears, after which he was fully mended (`EVT-000469`-`EVT-000472`). Combat Health is fixed-rank scene-transient state (Profile Section 5.2) and is not carried here.

    **Physical trajectory.** Before 2026-07-30 he had never once pushed his own body for anything, the build of a man whose gift meant he never had to become a fighter. Since then: 2.4 km and a scaled 30/30/30 on the first morning (quit the run, refused the offered exit on the calisthenics), then 4 km, then 5 km with 40/40/40, then an unmeasured long loop past the harbour with 50/50/50: four consecutive voluntary increases, each larger than the last, one of them after he had worked out he was exempt and swore about it and went anyway. By 2026-08-19 he no longer fell off the pace at six kilometres. He fights now: Longsword, Stone Skin, Flash Step and Mana Bolt on one C-Rank Mana pool (`capabilities`).
  capabilities: "**C-Rank, fixed at his Awakening at twenty-two.** Resolved by that fixed Rank under Profile Section 13.1; **mender** names the signature effect his healing touch carries (Section 13.5) and is never a combat penalty relative to his own Rank. Confirmed directly by Priya Menon (`EVT-000077`) — the reason a waiver-tier crew could field a real mender at all.\n\n  **Ability 1 — Mend, his Awakening gift, C-Rank.** A treatment touch, resolved under Section 6.3; its first exercise in this world cleared Alexander's Severe rib injury mid-boss-fight (`EVT-000080`). Practical capacity in his own words: roughly four to five people at ordinary injury severity per clear, or as few as two if treating something as severe as a near-lethal hit — no hard cutoff, just diminishing effect the more he is pushed.\n\n  **Ability 2 — Stone Skin [D-Rank]: 30% physical damage reduction while sustained, ending when it lapses or is dropped.** (The authored technique effect at its Rank, not a mastery rung — Section 13.6 gives an NPC learned technique no mastery track; see `learned_techniques`.) Learned 2026-08-06 (`EVT-000178`) by consuming the unbound-awakened rune Alexander gave him outside his own building — the boss drop from the 2026-08-05 Shattered City instant dungeon (`EVT-000152`). Settlement under Section 7.1: eligible by binding, technique unknown to him, learned Rank `min(teaching_rank, recipient fixed Rank)` — the rune teaches at Stone Skin's native D-Rank floor against his C-Rank, so D-Rank. There was no window, notification, or sensation: he perceives no System (Section 14.4) and simply knows how to do it, the way he knows the other one. Used twice — sustained through the elite at `EVT-000180` at a cost of roughly two-thirds of his capacity, and raised before contact against the Overgrown Temple boss at `EVT-000183`, where it took the worst of a driving shoulder and held the damage to 12.\n\n  **It draws on the same well his mending draws from.** He worked that out himself in a car park before consuming the rune, named it as the choice between not bleeding and a crewmate not bleeding, and consumed it anyway. Both uses have cost him mending he would otherwise have had for other people, exactly as he predicted.\n\n  **This is the first recorded instance in Gatefall of an awakened acquiring a second ability.** His stated understanding from BGM intake at twenty-two is that a gift is fixed and singular for life and that nobody has ever received another — Character Knowledge, unverified against any institution, and now contradicted in his own body. **Nobody outside Alexander knows.** It is a standing exposure thread (Section 19): a mender who stops taking damage is exactly what Renata reads for, and the cover story agreed between them is the $18,500 of Horizon gear he had never worn before.\n\n  **The well, and its one known workaround.** Capacity returns overnight or across a day, and he states this is the single hard constraint on the entire profession. A **System Mana potion restores it in full and instantly** (`EVT-000180`) — Alexander sold his whole crystal stock mid-clear to buy one, handed it over with a single word, and Owen drank it without asking. His unanswered question afterward: *how many of those can you make?* Establishes Discovery, Law VI. What it does not do is make the pool larger; the pool's size is fixed at his Awakening and there is no world-legal route to changing it (`OBJ-18`).\n\n  **Combat record.** *The collapsed rail cutting Gate, 2026-08-11* (`EVT-000264`-`EVT-000265`) — his second sponsored job under `OBJ-19`, and a deliberate departure from the Cicero delegated-sweep pattern: Owen took every single fight alone while Alexander held support-only (a new standing ruling that Alexander's active patrol-and-intel still counts toward his own Kill XP without a separate rolled setup action). Cleared three common clusters (one legendary, one clean success, one costing a graze), both elites (one costing a solid hit, one clean), and the archetype's guardian boss — a Carapaced stone-and-root construct — solo: survived his own natural-critical fumble unpunished when the guardian's own counter-slam missed outright, landed two partial-success hits, then closed it with a natural critical kill, taking no damage in the boss fight itself. Both wounds from the earlier fights were closed by Alexander's Mend — the first time Owen has been healed by Alexander rather than the reverse. Told Alexander plainly afterward that this clear 'didn't feel like luck'; Alexander's answer (*it's obvious to me, I'll make it obvious to you too*) landed as something Owen is visibly still working out how to believe about himself. Declared the full haul honestly with Kesha (21 crystals, 3 cores, $4,275 split, $2,137.50 each pending) and afterward worked out with Alexander that a licensed artificer — not the System shop — could build him a longsword or ranged weapon from a banked core; nothing bought yet.

*Cicero, 2026-08-03* (`EVT-000119`-`EVT-000120`) — first solo kill, a single decisive strike; several more across a delegated corridor sweep; stood back to back with Alexander against two boss-Rank alphas and landed the finishing exchange on the plated one. *Training, 2026-08-02* (`EVT-000116`) — his first attempt to strike a stationary Alexander **stopped four inches short by reflex**, the mender's wiring firing where stopping was not an option; the second landed at C-Rank magnitude, **24 damage through ≈23% reduction**. *Overgrown Temple, 2026-08-06* (`EVT-000180`-`EVT-000184`) — eleven commons and both elites alone, two exchanges holding the boss from 160 to 15 Health with Stone Skin sustained throughout, one landed hit against him all afternoon (12 damage), and by the sixth bay he was calling his own commits ahead of Field Command's relay rather than waiting on it.\n\n  **Gear, all owned by him outright** (no Stat sheet applies — Section 11.5 — so these grant reduction and build quality only): Horizon Bastion Gauntlets [C-Rank] 8%, Horizon Bastion Torso [D-Rank] 5%, Horizon Bastion Boots [D-Rank] 5%, ≈**18% total physical reduction**, $18,500 the set, bought for him by Alexander over his objection (`EVT-000118`); and the **Boss-Imprinted Quickknife [E-Rank]** (weapon power 2, armed strike ×0.75, dual-wieldable; Echo — once per scene, +1 modifier step on a Strength action to break, shove, or resist forced movement), the Cicero alpha's drop, handed to him on the spot: *first weapon that's actually mine*. His own purchases the same day, with his own money and at his own insistence: a compact field kit, two lesser **licensed** restoratives (world-market alchemy, not System stock), and tape. He also holds **one Lesser Healing Potion of System origin** (`EVT-000186`) — his to use on anyone he judges needs it, with one hard line he accepted exactly as given: **never a mana potion, not even to another mender, not ever.** He carries it inside his field kit rather than his civilian bag, and has adopted Alexander's tradecraft as his own operating procedure — never show it, dose it sublingually or in small amounts, use it on someone not positioned to ask questions.\n\n  **Sponsor capacity.** Under the Section 9.4 high-Rank sponsor exception, **his C-Rank licence is what makes a two-person confirmed contract postable and insured** — the first time in five years his card has been wanted for the thing it is actually for rather than to make an under-staffed crew's arithmetic legal. Exercised once, at Cicero (`EVT-000118`), and agreed in principle for a second (`OBJ-19`).\n\n  **Off-Gate professional competence.** Diagnosed Renata's misbehaving sensor rig himself (`EVT-000108`) — not the misalignment she assumed but a hairline fracture in the resonance crystal, located by working from his own mender's kit, which runs on the same resonance principle tuned to flesh rather than terrain. Accepted the idea of carrying a rig of his own on condition that it be the best one, and was explicit that he is not learning it in an afternoon. Owns a two-year-old Honda Civic (`EVT-000103`)."
  knowledge: "**What he knows about Alexander — check this before any scene where the System could surface.**\n\n  - **The System, by name.** Told outright on 2026-08-04 (`EVT-000145`). He is the only person on Earth who knows it exists and what it is called.\n  - **Private instant dungeons.** Told on 2026-08-03 (`EVT-000121`) when asked to fold eleven unprovenanced cores into a licensed report. He refused to lie to a board blind, got the truth, drew his own defensible line (two cores, not eleven), and rang Kesha Morrison himself to correct the filing live.\n  - **Witnessed, unexplained, and never asked about:** the C-Rank dagger appearing in Alexander's hand with no draw, twice; a killing blow walked off with no mender's touch; a healing potion produced from nowhere; broken ribs he could feel under his hands in a body that read as physically untouched. He laid all of it out unprompted at the bar on 2026-07-28, stated he is **not confused** and will not later construct a normal explanation and feel foolish, and **twice declined to ask** — once unprompted, once by explicitly releasing Alexander from a promise to explain, on the grounds that a promise extracted after a near-death and a beer is not fair to the person making it.\n  - **What he cannot perceive.** He is not the Bearer. The System is perceptible to its Bearer alone (Section 14.4) — no windows, no notifications, no sheet, no quest text, nothing to see. He sleeps through the 06:00 issue. He reads Alexander's **state** instead, accurately and constantly: tired, favouring a side, off his usual pattern, something went wrong underwater. Narrate that as a read, never as data.\n  - **Closed channels (see the table at the top of this file).** The Lakefront Gate booking, and Alexander's quest/regimen/completion data. Both have leaked in play and must not.\n  - **Wade Bishop and Ironline's D-Rank trial, told in full 2026-08-10 evening (`EVT-000258`).** First time Owen has heard Wade Bishop's name at all. Told plainly: an Ironline recruiter dropped Alexander into a borrowed four-hunter crew with no assigned lead, on purpose, to see what happened without one; the first ambush beast held still and Alexander read it and **said nothing**, letting it pin Reggie Calloway to a column, unhurt but shaken, because some part of him wanted to see what the crew would do; the leadership fight that followed; Reggie and Callie both walking out with real, untreated injuries because the trial crew carried no mender. Owen's read, delivered back to Alexander rather than kept to himself: that it going fine doesn't make the choice to withhold the warning a fine one, and that two people being hurt with nobody there to treat them is squarely Ironline's failure, not Alexander's. **This is now the second-largest thing Alexander has told him unprompted, after the System itself** — not a fact about capability, but an admission of something he did that he still feels bad about.\n\n  - **What he was told about the 2026-08-14 B-Rank trial, and the one thing that was left out (`EVT-000382`, corrected at `EVT-000389`).** Most of what Alexander told him is **true**: it was a harvest trial, he was the harvest element, and Wade did not tell him the strike line would run at half the legal roster — the reason a swarm-common reached the vein chamber at all. Owen may act on all of that as fact. **The single omission is the near-death:** he was told *'a real hit, closer than I liked… I was prepared for that,'* explicitly framed as unlike Ashfield, where canon is **Health from full to 0 in one exchange** (`EVT-000340`) held only by Shrug Off's first-ever threshold absorption. **He named that one as evasive to Alexander's face and deferred it rather than dropping it** — *'I'm going to want to have that one. Not tonight.'* Narrate him as someone holding a filed discrepancy about how close it was, not as someone who was lied to about the job. One row in the Closed Channels table; the second row was struck as written in error.\n\n  - **What he has NOT been told about Walt Adamik's operation, as of 2026-08-19.** He was told about Walt himself in full on 2026-08-13 (`EVT-000334`) - the shop, Marnie, the wallet, the dock, the CONSULT stranger, Loomis Street. **He has not been told about the $40,000 partnership (`EVT-000446`-`EVT-000447`, `OBJ-29`), Nadia Adamik, Sal Prykowski's name, or the Quickknife demonstration** - not withheld as a decision, simply not yet said, because they have not sat down since. Migrated here from `situation` on 2026-08-10: it was the one live channel constraint buried in that field, and **a constraint that lives only in narrative history is one nothing will ever check** (`F-029`).

  **Who knows about the relationship:** Priya Menon, Julian Boyd and Renata Marchetti, told by Owen himself at ordinary volume at the end of the 2026-08-02 training session, specifically so they would hear it from him rather than deduce it; Kesha Morrison, told on the 2026-08-03 sponsor call on Alexander's instruction — her answer was that it was about time. Nobody knows about Stone Skin."
  relationship_to_alexander: "**`REL-000066` governs and is authoritative wherever the two disagree.** Partner; together since the evening of 2026-07-28, the first thing in the campaign Alexander did not calculate. **Load that record before playing a scene between them** - its `texture` is the register to play, and is the highest-value narrating material in this campaign. This field was a 6,276-byte second copy of a record it could silently drift out of sync with, which is the `F-024`/`F-029` failure family; reduced to this pointer by owner ruling, 2026-08-10."
  standing_terms: "**Terms Owen has set and Alexander has accepted. These are operative and should be honoured in play without being re-litigated.**\n\n  **The three operating terms for using a mender** (`EVT-000084`, since delivered to Priya's whole crew as doctrine, uncredited): he must see the line rather than stand behind it; he must be told the instant someone is hurt rather than find out by looking over; and because his repairs per clear are finite, **the call on when he spends one belongs to the field commander, not to whoever asks** — on the logic that the man asking to be patched always gets that call wrong.\n\n  **The rule of engagement he wrote himself** (`EVT-000118`, made to be said aloud in a café): he takes one beast alone; a second engaging him at the same time is Alexander's to end; and **if he is hurt badly enough to want a touch on himself, he says the word and gets no vote.**\n\n  **The waking rule** (`EVT-000176`): wake him even when he looks like death, and let him be the one who says he cannot. Alexander accepted it and immediately qualified it — *once I commit you cannot say no.*\n\n  **His one ask of 2026-08-09** (`EVT-000241`), the closest thing to a term he set all evening: Alexander, who reads a room correctly every time, **must say so out loud if Owen starts wanting something that will get him killed — especially when Owen is annoyed about it.**\n\n  **The potion line** (`EVT-000186`): the healing potion is his to spend on anyone he judges needs it; never a mana potion, not even to another mender, not ever.

  **The C-Rank key, agreed 2026-08-10 (`EVT-000254`).** Alexander offered Owen a place in his first solo C-Rank instant-dungeon attempt as backup — Owen initially heard it as an offer to fight and had to be corrected: **observer and mender only, not a combatant**, standing somewhere safe with the authority to say *end it*, and Alexander's binding promise that a stop-call from Owen is obeyed instantly, no 'let me just finish this.' Owen's own condition, stated back: **if I say end it, you end it.** Not scheduled yet; both agreed it happens 'soon, properly,' not squeezed into a spare afternoon."
  open_questions: "**Explicitly unresolved. Do not narrate him as having agreed to any of these.**\n\n  - **`OBJ-12` — RESOLVED, and acted on. STALE ENTRY CORRECTED 2026-08-09.** Walking back from the collapsed rail cutting Gate (2026-08-11 ~09:50, `EVT-000271`), Alexander asked without pressure whether Owen wanted to found a crew together rather than join Priya's properly, join a guild, or borrow Bridgeport. **Owen said yes** — his own words, that he has known since the second elite in the Overgrown Temple that he would say yes to a real ask. He then said *\"I still have to say it to her face,\"* naming it as the hard part because she would not fight it, and because it is the exact betrayal he identified in himself at `EVT-000088`. **He said it to her face the same day** (2026-08-11 ~15:15, `EVT-000291`) and it went badly on a real roll (🎲 19): she did not shout, went quiet, asked whether it was already decided before he sat down — **he could not honestly say no** — and told him he was not just leaving a crew but **the only one that ever made room for a mender at all.** She asked to tell Julian and Renata herself that evening. **That last piece is hers and remains outstanding** (`ENT-000136`; live Current State). *This entry asserted the opposite for seven in-fiction days — see `F-029`.*\n  - **Becoming a person who goes into Gates permanently, off the books.** Again not a yes — but he has stopped pretending the answer is obviously no. He named the actual fear: not the danger, but that **he already knows he would say yes**, and has known since the second elite in that temple.\n  - **`OBJ-19`, agreed in principle only.** He sponsors a **confirmed, properly assessed** posting on his own C-Rank licence, split fifty-fifty, his half against the rent. He asked that the first one he chooses on purpose be **boring** — *not another Beast Den that came in two alphas hotter than the paperwork said.* No posting identified; Kesha Morrison owes a callback on what Monday's desk turns up.\n  - **`OBJ-18`, the promise made to him.** Alexander promised on the pavement, flatly, *I will find a way for you to have the pool bigger. I promise.* Owen's recorded response was not gratitude but belief — Alexander says things like a bus timetable and they then happen — followed by the part that worries him: **Alexander never says what it will cost him to make them true.** There is no world-legal mechanism.\n  - **The supply-chain contradiction he assembled himself** (`EVT-000182`) and declined to resolve: only official contracted Gate work funds a potion supply, so the useful version of Alexander is the version that keeps taking contracts — and he has spent two weeks hoping for fewer. He said it aloud without being led to it and said he would rather have said it than not. **Recorded as reasoning reached, not as a commitment made**; he must not be treated in a later scene as having volunteered for anything.\n  - **Ines**, a mender colleague at Edgewater, for whom he once set a potion aside. The ownership question is closed (the potion is his to spend at discretion); Ines herself is unminted and unmet."
  life_outside_gates: "**Work.** Staff mender at **Edgewater Hospital**, chosen deliberately because it does little first-response work — somewhere the going-in has already been done by someone braver, which is the same logic that has shaped his life since the rocks. **Dr. Kowalczyk** has spent roughly a year trying to move him into a lead-mender post; he refuses, because leadership trades hands-on patient time for a schedule and a signature, a trade he has watched cost three people he respects the thing that made them good. Asked why not his own clinic: alone with his name on the door there is nobody behind him to catch what a pause costs.\n\n  **Income.** Two to three clears a month with other crews, C-Rank work included, with a **Bridgeport crew** as his regular — they call whenever they can afford him and apologise when they cannot. That outside work is his money. Priya's fifth slot he keeps at standard terms, an even fifth with no allowance for a C-Rank mender on an under-ranked crew, because they are the people he would want with him if it went wrong. He has twice declined Horizon Guild contracts: *guilds put you where the money is, not where the people are.*\n\n  **Biography.** Rogers Park. Awakened at twenty-two and cried about it. Has lived alone since, and has never had a flatmate he liked. Three summers lifeguarding the Loyola Park stretch of lakefront — the same water he and Alexander swim — before **the rocks** (`EVT-000177`), the largest disclosure he has made in this campaign: two teenagers off the rocks in turning weather, both pulled out alive, and a gap of somewhere between one and three seconds in which **he did not go in**, taking the nearer, easier, conscious boy while the other guard went past him for the girl. He has never been able to determine whether that was triage or fear wearing triage's clothes, and it is unresolvable precisely because it worked: nobody reviewed it, nobody noticed, and his supervisor bought them both a beer. He told no one, including two paid therapists, before telling Alexander. He never worked a beach again and went into medicine, then mending — a job where you arrive after, and where the sums are slow enough to make with your hands instead of in a second and a half on wet rock.\n\n  **Details that are his.** Birthday **14 September**. A two-year-old Honda Civic. A long-neglected boat, a hand-me-down from an uncle who decamped to Arizona rather than keep dealing with weather. **Voula** at Nikitas, the Greek diner four blocks north up Sheridan, has known him twelve years and fed the guard staff across those summers. His favourite Pokémon is **Chansey**, named unprompted and with total gravity, on the grounds that it heals people and has never once been put on a lunchbox."
  appearance: "Twenty-seven, white, handsome and unaware of it. Tall (182cm) and lean, but with a faint softness to him — the build of a man whose gift meant he never had to become a fighter. Light brown hair worn a little long and never quite deliberate; green eyes; two or three days of unstyled stubble that reads less as a look than as the residue of a chronically late man. His clothes are genuinely nice — good fabric, well chosen — and always worn slightly undone: a collar open a button too far, sleeves shoved up, something untucked, as though he dressed well and then ran for the door. The field-medical kit is slung across his back and rides there like part of him. Warm, unhurried, and faintly rumpled — a handsome man who'd be more comfortable if you didn't mention it."
  portrait: "assets/portraits/Owen_Callahan_ENT-000139.png"
  personality: "Easy, dryly funny, unshaken by danger ('long as nobody's bleeding yet, we're fine'). Watchful in a low-key way — noticed the C-Rank dagger appear in Alexander's hand from nothing, twice, and said nothing concrete about it either time beyond a brief look. Genuinely startled by, and warm toward, a friendly gesture from someone he'd read as too intense for that."
  want: "**More time where Alexander is, and the version of that is the crew** — his own words, unpressed, when he declined harvest work (`EVT-000414`-`EVT-000417`). Underneath it, to be **the one swinging rather than the one being protected**: *'Thank you for trusting me to be the one swinging instead of the one you're protecting.'* He holds that against his own stated reason for staying a mender — *'I stay because it's the job where I don't have to be first through a door'* — and has not resolved the contradiction, which is the point of it. He asks for the unglamorous version: the first posting he picks on purpose should be **boring** (`OBJ-19`), and a warning **before** rather than a report **after** (`EVT-000382`)."
  fear: "**The four seconds.** The pause on the rocks — the campaign's largest disclosure, made at Nikitas (`EVT-000177`), told to nobody before including two paid therapists, and connected by him unled to being too slow at Ashfield. **His stated fear is not that he will fail to arrive: it is that he will pause again, it will work out again, and he will never know.** A live pattern, not a past event — he named his own three-day silence as *the same four seconds, just stretched out over two days* (`EVT-000208`-`EVT-000217`). Its everyday flaw is the deflection reflex he named in himself (`EVT-000274`): a joke when a thing matters, which is why **the joke failing to arrive** marks every scene he stops performing in. Its Gate-side form (`EVT-000241`) is that **he already knows he would say yes**, and his standing ask is the fear made operational — Alexander must say it aloud if Owen starts wanting something that will kill him, **especially when Owen is annoyed about it.**"
  secret: "**He knows Alexander is something the world has no explanation for, and carries it alone.** At the bar (`EVT-000080`) he laid out unprompted what he had witnessed — a killing hit walked off with no mender's touch, the knife from nothing twice, a potion from nowhere, ribs he *felt* were broken in a body that read unharmed — said he is **not confused**, will not later invent a normal explanation, and will keep his promise not to ask. He then **released Alexander from explaining** (`EVT-000081`). Agreeing to be shown inside a Gate was accepting the next step knowingly: he stops being the man politely not asking and becomes **the man who knows, carrying it around Priya, Renata, and every desk officer in Chicago.** **Known to:** Alexander only. The furthest any NPC has come toward the Section 19 problem, held by choice rather than ignorance. He will not raise it and deflects anyone circling it."
  voice: "**Leads with the rule, not the feeling** — frightened, he proposes a procedure. He has written four (the three mender terms, the rule of engagement, the waking rule, the potion line), all said aloud, all meant to be repeated. Dry, undramatic, deflects with a joke; **the tell is the joke that does not arrive.** **He says the uncomfortable thing rather than let it go unsaid, and then does not push it** — he disagreed with Alexander's read of Reyna plainly and offered no conclusion; he flagged that being present for a phone call is not the same as being told. States plainly what he cannot promise, never pressures a decision, never re-litigates an accepted term. **Notices far more than he says** — watched a dagger appear out of nothing twice and spent a brief look on it."
  beliefs:
    - claim: "Alexander's account of the B-Rank trial was shaped; something was left out."
      ground: "Told and read — given *\"closer than I liked\"* at `EVT-000382` and said openly he did not swallow it."
      confidence: confident
      accuracy: true
      since: EVT-000382
    - claim: "Whatever was left out, it was dangerous-but-managed — a close call a competent hunter walks out of."
      ground: "Inferred from the shaped account, which is all he has."
      confidence: confident
      accuracy: false
      since: EVT-000382
      note: "**He does not know Health reached 0**, or that Shrug Off held it. Closed Channel; reopens only when Alexander answers. **Play the mistake — do not let him quietly become correct.**"
    - claim: "The 22:00 Wade Bishop meeting was about the trial's loot and nothing else."
      ground: "Told exactly that in the doorway (`EVT-000383`)."
      confidence: certain
      accuracy: partly-true
      since: EVT-000383
      note: "The venue, the forged roster, and the report Alexander holds were never mentioned. Closed Channel."
    - claim: "Priya's was the only crew that ever made room for a mender at all."
      ground: "She said it to his face when he told her he was leaving (`EVT-000291`), and he did not argue."
      confidence: confident
      accuracy: unresolved
      since: EVT-000291
      note: "**Her line, carried by him.** He could not honestly say the decision wasn't already made before he sat down. It is why the crew he is building has to actually put a mender in the plan rather than say it does — and why Alexander doing exactly that in front of Priya (`EVT-000116`) landed as hard as it did."
  agenda: "**Active; advances on the clock whether or not Alexander is present** (Section 7.9). `Advanced` through **2026-08-19 07:50**.\n\n  - **Sponsor of record, Saturday 2026-08-22 Ashfield contract** (`EVT-000483`) — the Kesha confirmation call was **made 2026-08-19 07:37 and the commitment discharged** (`EVT-000496`) — eight of ten, two slots live. He nearly did not: offered a postponement, he took it for two seconds and declined it himself as the same avoidance he named at `EVT-000274`, slower, so it looks like planning. **What is owed now is the run itself, Saturday 2026-08-22**, with his licence behind it.\n  - **Sourcing a licensed sensor rig** for Alexander's 14 September birthday (`EVT-000108`) — quietly, unprompted, low urgency.\n  - **Carrying how the Priya conversation actually went.** He told her on 2026-08-11 (`EVT-000291`) and it went badly on a real roll; what he is doing now is living with it, not avoiding it. **The outstanding piece is hers, not his** — she asked to tell Julian and Renata herself that evening and per the live Current State has not, which is a pending commitment on `ENT-000136`.\n  - **Edgewater shifts** — where he is when the fiction puts him nowhere else.\n\n  **Outcome to date:** roster filled in one evening; the Kesha call unmade; Priya told and it cost something."
  moved_by_events: "**Every Event that claims, in its `participation_audits`, to have moved this record.** Decision 085 requires the record to *reference* such an Event; it has never required the record to *narrate* it, and `160_CAMPAIGN_CHRONICLE.md` narrates every one of these in full and is authoritative for what happened. This index exists so `situation` can hold the current span alone without breaking that invariant - the citation and the narrative are different obligations, and only the first is cheap. Maintained at promotion: an Event auditing `record-updated` against `ENT-000139` adds its id here.

  `EVT-000757` `EVT-000760` `EVT-000761` `EVT-000271` `EVT-000274` `EVT-000278` `EVT-000291` `EVT-000294` `EVT-000334` `EVT-000381` `EVT-000382` `EVT-000383` `EVT-000386` `EVT-000399` `EVT-000400` `EVT-000401` `EVT-000402` `EVT-000403` `EVT-000408` `EVT-000409` `EVT-000411` `EVT-000414` `EVT-000416` `EVT-000417` `EVT-000428` `EVT-000429` `EVT-000430` `EVT-000431` `EVT-000433` `EVT-000434` `EVT-000452` `EVT-000453` `EVT-000469` `EVT-000471` `EVT-000472` `EVT-000483` `EVT-000491` `EVT-000493` `EVT-000495` `EVT-000496` `EVT-000445` `EVT-000686` `EVT-000243`"

  situation: |-
    **Since 2026-09-15: single, living alone, and running his own crew.** The relationship with Alexander ended (`EVT-000999`; `REL-000066` holds it and the fight before it). He kept the Rogers Park apartment alone. His Edgewater mender rota is the last one recorded (08:00-20:00, Wednesday to Friday, `EVT-000496`) and nothing since has changed it. He leads his own Bridgeport crew, which works Sunday; on 2026-09-25 he asked Alexander a real question about running it and was answered (`EVT-001102`). His last word to Alexander, after the broadcast, was *"Take care of yourself"* (`EVT-001056`). The move is his to make, and he has not made it.
```

### ENT-000146 — Wade Bishop

Ironline Guild recruiter ("talent side"), met at the Red Line Corridor on 2026-08-04. Direct, unpolished pitch style; candid about what he can't promise.

```yaml
id: ENT-000146
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000138
  game_date: "2026-08-04, late morning, Red Line Corridor"
  real_date: "2026-07-27"
type: Character
subtype: guild recruiter
scope: local
lifecycle: active
aliases:
  - name: "Wade Bishop"
    quality: current
relationships:
  - REL-000068
canonical_state:
  affiliation: "Ironline Guild — recruiter, Red Line Corridor"
  home: "Chicago, USA"
  rank: "**Not authored — awakened status is not established.** Wade Bishop manages or brokers Gate work without any record of being awakened, and Section 9.4's support tier plus Preston Vaughn (`ENT-000108`, a guild chief executive who is explicitly not awakened) both show that a senior operator in this trade need not be. Assigning a Rank here would be inventing canon, so none is: no Rank, no pools, no Section 6.1.2 variance, and Section 13.6 does not reach a non-hunter. **Flagged for a ruling** rather than filled in."
  location: ENT-000090
  condition: "Healthy; not established as combat-active."
  capabilities: "Talent-acquisition recruiter for Ironline Guild (`ENT-000101`), working the Red Line Corridor specifically — Ironline's established recruiting ground (`worlds/gatefall/210_PLACES.md`). Not a combatant; his job is identifying and pitching hunters the guild's volume-strike-contract tier wants."
  knowledge: "**What he knows about Alexander — read this before any line where he asserts something about him.** Every entry cites the Event that established it; anything not listed here he has not been told, which is the boundary rather than a gap (Resident Core, *Load a Recorded NPC Before Playing It*).\n\n  - **His card Rank, file and recruiting history**, as the recruiter who pitched him. Role access, ongoing since `EVT-000138`.\n  - **His conduct at the D-Rank trial** — that the crew had never worked together, that no field lead was assigned, and that Alexander took command unassigned (`EVT-000193`, `EVT-000201`-`EVT-000207`).\n  - **The terms Alexander demanded and what Ironline returned** — the 50% ask, the 35% counter with full lead credit on the contract record, and Alexander's refusal to decide before the trial moved (`EVT-000284`).\n  - **That Alexander wanted C-Rank-and-above names outside Ironline**, which he supplied as a lead list: Soraya Delgado, Grant Okwuosa, Iris Halvorsen, Theo Bannerman (`EVT-000293`).\n  - **The B-Rank harvest trial in full**, including that Alexander walked the Gate mouth alone over his stated objection (`EVT-000338`-`EVT-000346`).\n  - **That Alexander identified the legal-minimum violation** — four combat-rated hunters against a floor of eight — and the terms taken in exchange for discretion (`EVT-000345`), with the harvest-pool and combat-contribution figures delivered by text the same evening (`EVT-000371`).\n  - **That Alexander physically holds the unfiled forged report**, and that he disclosed the roster padding and the three dead recruits himself before being asked (`EVT-000380`, `EVT-000384`).\n  - **The Priscilla Nakamura arrangement — he brokered it.** He made the introduction as one of two standing commitments (`EVT-000384`) and delivered her window himself: tonight, 9:00 PM, her workshop, address given (`EVT-000404`). **This is the one place the Nakamura thread is legitimately known** — Owen and Kesha both carry Closed Channels rows against it, and Wade does not, because he is its source.\n  - **The contractor arrangement** he negotiated and is point of contact for (`EVT-000404`).\n\n  **What he does not have.** Any Bearer-only quantity on the Profile §14.4.1 register — no NPC has a channel to it short of Alexander saying so. His `beliefs` block holds his own account of Alexander's rise; that is a belief under Decision 091 and is played as held, not corrected into knowledge."
  appearance: "Well-cut jacket that reads out of place in the Red Line Corridor's unpolished district; small, deliberately unshowy Ironline recruiting pin on the lapel. Easy, professional manner. **Extended 2026-09-23 (real date), for portrait reference:** Mid-forties, white, lean and upright, the posture of a man who spends his days standing on other people's shop floors. Salt-and-pepper hair cut short and neat; grey eyes; clean-shaven, with deep lines bracketing the mouth from years of saying the hard thing politely. A charcoal wool jacket over an open-collared light-blue shirt, the small Ironline pin on the lapel. Reference setting: the Red Line Corridor at street level, rail girders and weathered brick behind him, flat overcast Chicago light."
  portrait: "assets/portraits/Wade_Bishop_ENT-000146.png"
  personality: "Direct and unhurried; leads with the honest version of a pitch rather than the polished one, states plainly what he can't promise, and doesn't pressure a decision. Genuinely engaged rather than performing interest when a prospect negotiates back at him."
  want: "**To make his numbers and keep his standing**, and — underneath it and unadmitted — to believe he is not the reason three of his recruits are dead. He went to two of the three funerals (`EVT-000384`). Asked directly whether he would keep sending unprepared strangers into high-Rank Gates, he said **probably**: not his call, and he has never once refused a thin roster."
  fear: "**The fourth funeral, and the file that would make it his.** Since `EVT-000384` there is a nearer one: Alexander physically holds the unfiled report on a confirmed B-Rank Gate staffed at four combat-rated hunters against a legal minimum of eight, filed on a roster forged to eight. **Both of them named the relationship out loud as leverage rather than partnership**, which is the flaw — he manages exposure by conceding to whoever holds it rather than by changing what he signs. **2026-08-20 (`EVT-000566`): Alexander used the word 'partnership' for the first time and Wade noted it flatly rather than seizing it** — *'For what it's worth, I'd rather it was a partnership. I've just not been in a position to ask for that, and I'm still not.'* Told plainly that maybe in the future but for now they both know where they stand, he took it as the flattest available version of the truth and said he would come whatever the meeting turned out to be. **He no longer has to ask, and the report no longer exists as leverage over him** — Alexander handed it to him at `EVT-000583` without renegotiating a single term, and Wade said so out loud: *'that's the single most generous thing anyone's done for me in six years, and I don't think you meant it to be. You could have asked for more.'* His `fear` block should now be read against the fact that **the file that would make the fourth funeral his is in his own jacket.** Prior: **He wants the word and will not ask for it while the report exists — and as of `EVT-000576` he has stopped asking altogether.** Three offers in one day (12:24 call, 14:58 text, 17:54 call), answered with a thumbs up and then with *'nothing much important'* about a conversation Alexander himself had opened as *our partnership*. He said the discrepancy out loud once, flatly, refused to make it a demand, hung up first for the first time in the relationship, and set 06:30 at the grain terminal with attendance explicitly optional. **The next move is Alexander's and Wade will not prompt it.** He tried once more in writing at `EVT-000572` and was answered with an emoji, which he absorbed without complaint — his exposure-management reflex applied to his own feelings, and the same reflex his `fear` block already names."
  secret: "**The roster padding is routine, and the bench names come from Brannigan's office.** Priyanka Osei, Marcus Delray and Toby Fenwick are kept for exactly this purpose. Wade **named the forgery before he was asked** rather than being caught at it — the concealment is not the act but the institution: this damages Ironline, not merely him, and nothing has been reported. **Known to:** Alexander. Also carried, and volunteered only under direct question — three recruits dead in six years, two on one B-Rank posting eighteen months ago, one alone on a D-Rank waiver three years back."
  voice: "**Says the bad thing first, in the flattest available words**, and does not perform contrition about it. Leads with the honest version of a pitch, states plainly what he cannot promise, never pressures a decision, and becomes genuinely engaged the moment someone negotiates back. Unhurried in a way that reads as either candour or resignation depending on the sentence."
  beliefs:
    - claim: "Alexander is going somewhere, and is worth cultivating whatever it costs."
      ground: "Watched him walk out of a confirmed B-Rank Gate at C-Rank and set terms afterwards."
      confidence: certain
      accuracy: true
      since: EVT-000345
    - claim: "The arrangement between them is leverage, not partnership, and will stay that way."
      ground: "Both of them said it out loud at `EVT-000384`."
      confidence: certain
      accuracy: true
      since: EVT-000384
  agenda: "**`OBJ-36`/`OBJ-38` closed in full, 2026-09-06 ~16:00 (`EVT-000853`).** Alexander called back — the callback he'd owed since before Prague. Wade confirmed the BGM case against Ironline is real and moving, his own cover still intact. Told plainly to now actively position himself to eventually take Brannigan's chair once the case matures — not to move yet, too early, it would read as opportunism — but to start building a clean record now, every posting filed straight, no padding, so he is the obvious clean replacement when an opening actually appears. **Agreed, in his own words: 'clean sheet starting now, ready to move when there's an actual opening.'** The owed callback sub-thread is resolved; this new forward-looking commitment replaces it, no date attached, his own to keep. Prior: **`OBJ-36`/`OBJ-38` advanced, 2026-09-04 (`EVT-000836`).** The statutory filing completed in full — Wade's cooperating-source status and prosecution immunity are now on record with BGM, not just promised. BGM has opened a **formal case against Ironline itself**, not merely against individual conduct, on the strength of what he filed. His cover holds; nothing traces to him inside the guild. Prior: `Advanced` through **2026-08-23 evening** (`EVT-000685`).\n\n  - **Agreed to formally cooperate with BGM against Ironline**, told at The Nook that Alexander is now carded S-Rank and has a cooperation arrangement with BGM's Desmond Farraday. Offered whistleblower protection and prosecution immunity under real statutory terms, not a verbal promise. **Named his own conditions before agreeing**: wants the immunity terms in writing before walking into the building, and one night's sleep before committing — not to change his mind, but to not decide on adrenaline in a diner booth. **Confirmed he will go to BGM with Alexander tomorrow, 2026-08-24.** Told plainly the goal is still Wade running the guild clean, not Wade burning it down; took that as the actual plan he can live with.\n\n  Prior: `Advanced` through **2026-08-19 18:48** (`EVT-000545`).\n\n  - **`OBJ-28` — the standing rejection pipeline is live**: every name that turns down an Ironline pitch, same day, ongoing. **Produced twice this span** — Yusuf Baptiste (`ENT-000208`) and Bettina Ochoa (`ENT-000209`), both delivered same-day per terms.\n  - **Ordinary recruiting** for Ironline's volume-strike tier, working the Red Line Corridor.\n  - **Managing his own exposure** — he has conceded twice on demand and will concede again rather than escalate. **Filed the Friday B-Rank posting properly this time**, having checked it himself before calling Alexander — the corrective his own admission after the last one implied. **Advanced 2026-08-21 07:39** (`EVT-000583`) — **the largest single movement in this record's history.** Given the unfiled roster report outright, told plainly that Alexander wants him in Brannigan's chair with the guild held through him, and answered with the ugly reading first and then *'Nobody has ever offered me a way to change what I sign.'* **He held the OBJ-30 staging rather than cancelling or self-reporting**, told the crew himself without blaming anyone, and is now **calling every B-Rank card in Region V** under cover of filling that posting — listening for who says *about time*. Reports to Alexander **end of day, by text, names and numbers only.** He also named the thing under all of it: **the padding is margin, not laziness**, and inheriting Brannigan's chair inherits Brannigan's sheet. Prior, **2026-08-20 15:33** (`EVT-000572`): sent the address at 14:58 — **The Nook, 1418 W Glenwood**, back room held, order already in — and added, unprompted, **'Not chasing. Just so you've got it in writing.'** Alexander replied with a thumbs up. Wade read it at 15:12, said nothing for twenty-one minutes, then sent *'Back room's held. Order's in.'* and let it go. He put a true thing in text because it would not stick on the phone, got a thumb, and **has not mentioned it and will not**. Prior, **12:26** (`EVT-000566`): took the call, asked straight out whether the paper was being called in, and set **19:15-19:30 tonight on Glenwood** (`OBJ-34`). He did not raise `OBJ-28`'s two delivered names and was not asked about them."
  situation: |-
    **A statutory cooperating source against his own guild, building a clean sheet to inherit it.** He still recruits for Ironline on the Red Line Corridor. Since 2026-08-24 (`EVT-000699`) he has cooperated formally with BGM against Ironline through Desmond Farraday (`ENT-000223`). His immunity was filed as statutory protection on 2026-09-04, and BGM opened a formal case against Ironline itself on the strength of what he filed (`EVT-000836`). His cover inside the guild holds. On 2026-09-06 (`EVT-000853`) he agreed to position himself for Brannigan's chair once the case matures, not before: *"clean sheet starting now, ready to move when there's an actual opening."* After the broadcast he texted congratulations with a needling note about who was recruiting first (`EVT-001056`).

    **What lies between them.** On 2026-08-14 he ran Alexander into a B-Rank harvest trial with four combat-rated hunters against a legal floor of eight, then handed over a forged roster report padded with three bench names and said so before he was asked (`EVT-000345`, `EVT-000384`). Alexander gave the unfiled report back outright at the grain terminal and told him he wants him in Brannigan's chair (`EVT-000583`). Wade runs the `OBJ-28` rejection pipeline, and Alexander's own 2026-08-15 arrangement with Ironline is contractor-only with Wade as point of contact (`EVT-000404`). Three recruits he signed have died on thin rosters over six years; he went to two of the funerals. The dated history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
moved_by_events: "`EVT-000236` `EVT-000259` `EVT-000370` `EVT-000537`"
```

### ENT-000147 — Walt Adamik (the pawnbroker)

Owner of an unnamed pawn-adjacent shop in Chicago's warehouse district, dealing in mundane salvage, licensed small goods, and — quietly — items with murkier provenance. Named in play 2026-08-05.

**EVT-000611 (2026-08-22):** returned the Bastion Torso free from `OBJ-29` partner stock (nothing had sold, nothing to unwind) and sold two pieces of his own upgraded stock — a mana-null disc and a 400-capacity mana reservoir — the first real inventory the partnership's money has produced. Noted, dry: "Three for three today. Almost feels normal."

```yaml
id: ENT-000147
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
# EVT-000611 (2026-08-22): returned the Bastion Torso free from OBJ-29 partner stock;
#   sold a mana-null disc and a 400-capacity mana reservoir from his own upgraded stock.
# EVT-000702 (2026-08-24): OBJ-29's first demonstrable result delivered; the three things
#   that buy speed named and left with him; a wristguard appraised free and declined; a
#   standing free-appraisal arrangement opened.
# EVT-000703 (2026-08-24): Alexander left by vanishing from a standing position mid-goodbye
#   -- a second first-hand entry on his knowledge, and the first not offered as proof.
provenance:
  source: EVT-000139
  game_date: "2026-08-04, mid-morning, warehouse district"
  real_date: "2026-07-27"
moved_by_events: >
  `EVT-000767` `EVT-000804`
  `EVT-000212` `EVT-000214` `EVT-000280` `EVT-000324` `EVT-000333` `EVT-000372` `EVT-000373`
type: Character
subtype: pawnbroker / grey-market dealer
scope: local
lifecycle: active
aliases:
  - name: "Walt Adamik"
    quality: current
  - name: "the pawnbroker"
    quality: prior
relationships:
  - REL-000069
canonical_state:
  affiliation: "Independent — pawnbroker, Alexander's business partner"
  home: "Chicago, USA (warehouse district)"
  location: "His shop, Chicago's warehouse district (`worlds/gatefall/`, `ENT-000087`); exact address unestablished"
  condition: "Healthy; not established as combat-active."
  knowledge: "**What he knows about Alexander — read this before any line where he asserts something about him.** Every entry cites the Event that established it; anything not listed here he has not been told, which is the boundary rather than a gap (Resident Core, *Load a Recorded NPC Before Playing It*). Walt is the sharpest case in the campaign: **he has been shown something no one else has, and has a standing habit of not asking about it.**\n\n  - **That Alexander stores and retrieves objects from nowhere.** First-hand, deliberate, unhideable — Alexander withdrew a Quickknife [C-Rank] into the air above his counter and caught it falling, in front of him. He did not flinch and asked no follow-up, saying only that it answered a question he had been too polite to ask for weeks. Before that, the half-second sleight he caught and let go at `EVT-000139`. **This is a live Section 19 exposure thread, entered knowingly.**\n  - **That Alexander can vanish from a standing position outright.** `EVT-000700`, 2026-08-24 ~10:51 — Alexander stepped away mid-goodbye and was simply gone, no warning given and none asked for this time. Unlike the dagger demonstration, this one wasn't offered as proof of anything; it read as Alexander no longer bothering to manage what Walt sees. **No channel to how, to a destination, or to why the caution dropped.**\n  - **His grey-market dealings with the shop** — every transaction across the visits from `EVT-000157` onward: unprovenanced cores sold, gear handled, Cicero's Quiet inspected at $35,000 with scavenger provenance.\n  - **That Alexander funds the Marnie operation and supplied the material**, and that he holds the pieces connecting Sal Prykowski, Marnie, and the money — Walt's own `secret` records that **nobody has been told they connect.**\n  - **The CONSULT enquiry and what it cost him** — he ran it at Alexander's ask and a thirty-year contact told him to lose the number (`EVT-000352`), which he reported back.\n  - **That the arrangement was not working as it stood**, told to him plainly and taken without argument.\n\n  **What he does not have, and it is narrow and specific.** **No channel to the System by name, to Flux Sight, or to anything Alexander read off his counter** — nothing beyond what he physically watched happen. He has no Bearer-only quantity on the Profile §14.4.1 register: not the level, not a skill name, not a number. **The distinction that matters for playing him:** he has seen an impossible thing and knows it is impossible, and he still has no word for it and has never asked. Write the not-asking as characterisation, not as ignorance."
  capabilities: "Runs a shop stocking mundane salvage, licensed small goods with appraisal certificates, and a locked case of higher-value items of ambiguous origin. Competent at reading condition and wear on ranked gear and artifacts by handling alone; not a licensed BGM appraiser and does not claim to be. Willing to buy unprovenanced goods (including at least one E-Rank core) at a discount reflecting his own risk in moving them — a real black-market transaction under Profile Section 12.2."
  appearance: "Older, apron, reading glasses pushed up into thinning hair. Unhurried, watchful in the way of someone who has dealt with every kind of customer and stopped being surprised by most of them. **Extended 2026-09-23 (real date), for portrait reference:** Early seventies, white, Polish-American, stocky and a little stooped. Thinning white hair, reading glasses pushed up into it; watery pale-blue eyes behind heavy brows; a broad, lined face with a nose that has been broken once, long ago. A worn canvas shop apron over a flannel shirt with the sleeves rolled. Reference setting: behind the counter of his pawnshop, shelves of tagged oddments and a glass case of awakened-adjacent gear softly blurred behind him, warm tungsten light."
  portrait: "assets/portraits/Walt_Adamik_ENT-000147.png"
  personality: "Careful and fair rather than grasping — quotes an honest number and explains his reasoning rather than padding it, doesn't chase a declined price, and doesn't ask more about a good's origin than he needs to know to move it safely. Discreet: noticed something uncanny about Alexander's handling of his own gear and chose, visibly and deliberately, not to pursue it."
  want: "**Something for Nadia.** His granddaughter (`ENT-000207`) is Gate-touched, and it is the reason a careful thirty-year fence started brokering an introduction to an unlicensed artificer and then took $40,000 of a hunter's money to fund an operation (`OBJ-29`). He has not said so in those words. **He gave Alexander his real phone number — a first in thirty years of business**, which is the size of the bet stated in the only currency he has."
  fear: "**Whatever frightened a man who does not frighten.** Asked to run the CONSULT enquiry, he did — and a contact of three decades told him to lose his number if he ever said the word again (🎲 3, `EVT-000352`). **Frightened rather than annoyed**, which Walt understood immediately as the worse of the two findings. He now knows there is something in this city that scares people in his trade, and he has a granddaughter in it. The flaw: he keeps asking anyway."
  secret: "**Nadia, and what the money is actually for.** He surfaced Sal Prykowski's name and Marnie's, funded an operation, and framed all of it as business. **Known to:** Alexander holds the pieces; nobody has been told they connect. Also carried — Marnie has gone genuinely quiet against her own established pattern, six messages unanswered, and he is more worried than he says."
  voice: "**Narrates his own inventory like it's a bedtime story** — Owen's warning, and accurate; budget an hour. Quotes an honest number and explains the reasoning rather than padding it, never chases a declined price, and asks no more about a good's origin than he needs to move it safely. **Notices and visibly declines to pursue** — he clocked something uncanny in how Alexander handles his gear and let it go where a lesser dealer would have fished."
  beliefs:
    - claim: "Alexander is the best thing to walk into this shop in thirty years, and worth being straight with."
      ground: "Every transaction between them, and the real phone number he handed over unasked."
      confidence: certain
      accuracy: true
      since: EVT-000282
    - claim: "Marnie's silence is a real problem rather than her ordinary disappearing."
      ground: "Six unanswered messages against a thirty-year read of her pattern."
      confidence: confident
      accuracy: unresolved
      since: EVT-000320
  agenda: "**2026-09-23 (`EVT-001077`), term 1 checked after 18 days and owned honestly.** Alexander called and pressed directly — 'go bigger' hadn't produced a call in over two weeks. Walt conceded it plainly rather than defending himself: second vouch solid and working clean, storage real, one dealer channel opened (outbid two competitors on a lot), but 'monopoly on mana-touched goods' was always a longer build than three weeks. **Owned a real lapse the same visit**: an unbound rune had sat in the locked case three days under standing first refusal without a call — no minimum-bundle excuse holds, and he said so himself. Shown in person: an unbound-awakened Keen Sense [D-Rank] rune (Flux Sight read) and an unidentified band that resolved to a **Hunter's Band [A-Rank]**, both from the same dealer contact. **A new market-pricing framework worked out together and adopted as standing campaign convention**: an unbound rune's fair value reads against the combined crystal/core haul of a Gate two Ranks above its own — 1x for defensive/utility, 1.5x for offensive — never against its own Rank's haul or as ordinary stock, on the logic that a rune is non-renewable (one boss, one drop, ever) where crystal supply is not. Alexander declined both items for himself (already holds duplicates/better) and instructed Walt to find real buyers under the new framework and standing profit-share terms. Prior: **`OBJ-29` RESOLVED, 2026-09-05/06 (`EVT-000849`-`EVT-000850`).** Alexander called after the run of silence, gave a fully honest accounting of where the partnership actually stood, and set a hard deadline for the next day rather than let it drift again — the first time either of them has put a real date on the operation instead of a standing 'soon.' Walt met it: the goods-shown visit happened on schedule, the material-supply term of their original agreement was activated for the first time (rather than left as a paper clause), and Alexander sold him eight gear pieces (Longsword [B], Reacharm [B] x2, Adaptive Titan Coif [B], Adaptive Titan Legs [B], Ascendant Warlord's Loop [A], Arcanist Feet [A], Greatarm [A], Ghost Quickknife [A]) and five material lines (A-Rank Beast Core x15, B-Rank Beast Core x13, C-Rank Beast Core x38, C-Rank Mana Crystal x30, D-Rank Mana Crystal x30) for **$3,581,700.00 cash**. Walt's own read, given plainly rather than performed: this is the first time the partnership has moved real inventory at real volume rather than one or two pieces at a time, and it changes what he can promise Nadia rather than just what he can say to her. Marnie's silence and the second vouch stand exactly where they were — neither addressed this span. Prior: **Agenda tick, 2026-08-28 06:00** (`EVT-000804`, absorbed as a world-tick advance rather than a call): the second vouch he committed to inside 2-3 days is confirmed started, and Marnie's silence stands at eight messages now, still nothing back. No new call this span — Alexander is out of Chicago for the National tour. Prior: **Called again 2026-08-27 ~12:50** (`EVT-000797`). Gave the same honest `OBJ-29` accounting as the standing pattern — storage unit holding, Ada's contact in and moving inventory, second vouch still undecided, Marnie still six messages out. Asked how he'd sourced the partnership's storage unit and whether Alexander could use it or needed his own; explained his own arrangement (a twenty-year landlord relationship, cash, no paperwork) and was direct that the partnership's unit isn't Alexander's to use personally — the whole point of keeping it quiet is that nobody has a reason to look, and a second use undoes that. Offered to call around for private space instead; found **Priest** (`ENT-000244`) inside twelve minutes, available same day, no lease. Did not negotiate price on Alexander's behalf once told money wasn't the constraint — read that correctly rather than trying to save a few hundred dollars at the cost of the timeline.

  **Active; advances on the clock.** `Advanced` through **2026-08-27 09:15** (`EVT-000767`), settling the eight days silent since the last write.\n\n  - **`OBJ-29` — the one-week mark (2026-08-24) passed unmet; called directly by Alexander this span and asked to move faster.** Honest accounting given rather than a fresh promise: storage unit holding, paid through, nothing moved on it that shouldn't have; the first vouched person (Ada's contact) started proper end of last week and is in; the second still undecided, not pushed; one of two dealer feelers came back asking who's backing the operation — left unanswered, didn't like the shape of the question. **Pressed for speed, he offered two concrete moves rather than a vaguer promise**: force the second vouch's hand (\"now or somebody else gets the seat\") and drop the dealer lead that asked the wrong question, working the other harder instead. Committed to the second vouch actually starting inside **2-3 days** rather than by his own widened Sunday (2026-08-31) deadline — explicit that the rest of the operation still doesn't move faster than that. Marnie: still six messages out, none back, no new movement — not manufactured this call.\n  - **Finding Marnie.** Unchanged this span — six messages out, none back. The coffee stall near the Metro rail yards off Cermak remains the one fixed lead he has.\n  - **Ordinary shop trade** — salvage, licensed small goods, and the locked case.\n\n  Prior: `Advanced` through **2026-08-19 14:35** (`EVT-000538`)."
  situation: |-
    **Alexander's funded business partner (`OBJ-29`, `REL-000069`), and running it honestly rather than fast.** Terms since 2026-08-17 (`EVT-000446`-`EVT-000447`): Walt runs the floor; Alexander funds scale and takes a profit share and first refusal; anything with real money or real risk in it, Alexander hears *before* it happens. The operation now has a storage unit, two vouched people, and one working dealer channel. It moved real volume once, $3,581,700 in gear and materials on 2026-09-06 (`EVT-000850`). At the 18-day check on 2026-09-23 (`EVT-001076`-`EVT-001077`) he conceded "go bigger" had not produced a call in two weeks, owned a lapse on first refusal (an unbound rune three days in the case without a call), and adopted the rune-pricing convention worked out with Alexander. He holds two pieces Alexander declined, an unbound-awakened Keen Sense [D-Rank] rune and a Hunter's Band [A-Rank], to sell to real buyers on standing profit-share terms. Free appraisal for Alexander is a standing arrangement (`EVT-000702`).

    **What the money is for.** His granddaughter, Nadia Adamik (`ENT-000207`), Gate-touched three years ago, whom licensed medicine has not helped. He was told the right artificer working high-Rank cores could build something that helps. That artificer was Marnie (`ENT-000189`), who went silent in mid-August and has not answered since (eight messages by `EVT-000804`). He protected her supplier, Sal Prykowski (`ENT-000206`), for three days out of fear before handing him over at `EVT-000446`, and owned it as fear rather than judgment.

    **What he has seen and not asked about** is owned by `knowledge`: a knife drawn from nowhere over his counter (`EVT-000446`) and Alexander vanishing mid-goodbye (`EVT-000700`). The visit-by-visit history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
```

---

### ENT-000206 — Sal Prykowski

Salvage-and-surplus importer in Chicago's light-industrial belt; Walt Adamik's supplier of roughly thirty years, and the man who went silent on the word CONSULT. Named to Alexander 2026-08-17. **Unmet.**

```yaml
id: ENT-000206
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000446
  game_date: "2026-08-17, ~10:40, warehouse district"
  real_date: "2026-08-05"
type: Character
subtype: salvage and surplus importer / grey-market supplier
scope: local
lifecycle: active
aliases:
  - name: "Sal Prykowski"
    quality: current
relationships: []
canonical_state:
  affiliation: "Independent — licensed salvage and surplus importer"
  home: "Chicago, USA"
  location: "Works out of a licensed salvage-and-surplus import operation in a light-industrial stretch of Chicago, two neighborhoods over from Walt Adamik's shop. **Street-level address established by public business registry (`EVT-000448`); Alexander has it and has not gone there.**"
  condition: "Healthy so far as anyone knows. **Frightened** — see `situation`. Not established as awakened, and no Flux Sight read has ever been taken of him."
  knowledge: "**Nothing established, and the asymmetry is the point.** Unmet. Alexander was given his name on 2026-08-17, and Walt Adamik ran the CONSULT enquiry through him at Alexander's ask — but the enquiry went through **Walt**, not from Alexander, and what came back was a thirty-year contact telling Walt to lose his number if he ever said the word again (`EVT-000352`).\n\n  So: **he knows someone asked about CONSULT through Walt. He has not been told who, and there is no record that Alexander's name reached him.** Default to not-known on every specific — the name, the reason, that a hunter is behind it — until a played scene or an owner ruling establishes otherwise.\n\n  Written rather than left absent because this record is a live thread with a real risk of the boundary being assumed away: it is easy to narrate him as having connected the enquiry to Alexander, and nothing in canon supports it."
  capabilities: "Runs a real, licensed importer of salvage and surplus on the surface — the clean paperwork a careful man in the grey trade keeps. Thirty years supplying Walt Adamik with stock of mixed provenance. **His actual reach, his other customers, and whether he handles mana-touched material himself are all unestablished.**"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early sixties, white, Polish-American, heavyset and slow-moving, a man who has run the same licensed business for thirty years. Thin grey hair combed straight back; small, wary brown eyes under heavy lids; a jowly, clean-shaven face. A navy work jacket with a faded company name stitched over the pocket. Expression guarded and tired, a man who has just been frightened and is trying not to show it. Reference setting: a salvage-and-surplus import warehouse in light-industrial Chicago, pallets and steel racking blurred behind him, overhead sodium light."
  portrait: "assets/portraits/Sal_Prykowski_ENT-000206.png"
  personality: "Unestablished by direct contact. Two secondhand data points, both Walt's: thirty years of ordinary business dealing without incident, and one call in which he was **frightened rather than annoyed** — a distinction Walt named explicitly and said he had never heard from the man before."
  disposition_status: "**Partially authored — never met, never read.** Decision 091 requires the full set only of a Character a Runtime will play. The one real datum is the phone call, and it is a large one; everything else is unauthored and should stay that way until he is met. **He is an unopened door and the record keeps him one.**"
  want: "**Unauthored.** Thirty years of supplying Walt with mixed-provenance stock establishes a trade, not a motive. His actual reach, his other customers, and whether he handles mana-touched material himself are all explicitly unestablished."
  fear: "**Established, and it is the whole of what canon holds about him.** Asked to run the CONSULT enquiry, Walt did — and Sal, a contact of thirty years, **told him to lose his number if he ever said the word again** (🎲 3, `EVT-000352`). **Frightened rather than annoyed**, which Walt named explicitly and said he had never heard from the man before. Whatever CONSULT is, a careful grey-market importer would rather end a thirty-year relationship than be near it. **What he is afraid of is not established** — only that he is."
  secret: "**He knows what CONSULT means.** That is the inference the fear supports and the limit of it: a man does not burn a thirty-year contact over a word he does not recognise. **Nothing in canon establishes what he knows, who told him, or what it would cost him to say.** **Known to:** Walt knows only that the reaction happened; Alexander knows only Walt's account of it. Do not author the content of this secret at the table — it is the door, and opening it is a scene rather than a field."
  voice: "**Unestablished.** No line of his has ever been narrated and no Flux Sight read has ever been taken of him. The single behavioural fact available is that under pressure he **ended the conversation rather than negotiated it** — which is a datum about conduct, not about register, and a Runtime should not extrapolate a manner from it."
  agenda: "**Active, and authored from conduct rather than from a want**, because the want is explicitly unauthored above and Section 7.9 derives an agenda from the holder's own standing and reach where canon gives no motive. `Advanced` through **2026-08-14** (`EVT-000352`); it has not been advanced since.\n\n  - **Staying away from CONSULT, at the cost of a thirty-year trade.** He told Walt to lose his number if he ever said the word again and has not answered him since. That is not a plan he has stated; it is what he has done with every contact since, and it holds until something in the fiction changes it.\n  - **Whatever his ordinary trade is**, which canon establishes as supplying Walt with mixed-provenance stock and establishes nothing else about. His other customers, his reach, and whether he handles mana-touched material himself remain unestablished and must not be filled in to give this agenda more shape than it has."
  situation: |-
    **An unopened door with a shape to it; nothing has moved him since 2026-08-19.** Asked about **CONSULT** and a temp badge by Walt Adamik on 2026-08-14 (`EVT-000352`), he went silent, told Walt to lose his number if he ever said the word again, and hung up frightened rather than annoyed. He has not answered Walt since. About two months earlier he had mentioned, as trade gossip, a professional "processing operation" moving through the district that paid well and did not linger (`EVT-000333`). Nobody has established that the two are the same thing.

    **What Alexander holds.** The name, from Walt on 2026-08-17 (`EVT-000446`), with two warnings: Prykowski is not the one who took Marnie, and he will not talk cold and will know at once who sent him. A clean registry entry, a licensed salvage-and-surplus import outfit, and an address (`EVT-000448`). A two-hour stakeout on 2026-08-19 (`EVT-000539`) found ordinary dock traffic, plus one windowless van through a side gate at 15:40, walked in personally, three crates handled with care into a separately secured back room, gone in eleven minutes. Keen Sense traced two identical earlier deliveries, about nine and sixteen days before, at no predictable interval. Flux Sight returned no Rank on the man who met it, which was never confirmed to be Prykowski. Alexander has not approached, called or been seen. The dated history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
```

### ENT-000207 — Nadia Adamik

Walt Adamik's granddaughter; Gate-touched three years ago and not helped since. The reason behind his standing want for high-Rank cores. **Unmet, and no one but Walt has ever mentioned her.**

```yaml
id: ENT-000207
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000446
  game_date: "2026-08-17, ~10:35, warehouse district"
  real_date: "2026-08-05"
type: Character
subtype: civilian; Gate-touched
scope: local
lifecycle: active
aliases:
  - name: "Nadia Adamik"
    quality: current
name_note: "Shares a surname with `ENT-000147` Walt Adamik. `tools/check_name_collision.ps1` returns REVIEW on that overlap by design; here the coincidence is the point — she is his granddaughter — so the shared name is deliberate rather than a collision to avoid."
relationships: []
canonical_state:
  affiliation: "Unaffiliated — civilian"
  home: "Chicago, USA (implied)"
  location: "Unestablished. Chicago is implied by Walt's account and by his own presence; nothing narrower has been said, and no address, facility, or household has been named."
  condition: "**Gate-touched, not awakened** — Walt's own words, distinguishing the two deliberately. Wrong place, wrong time, roughly three years ago (≈2023). **Nothing licensed medicine offers has fixed it**, and BGM does not cover it because their books do not classify it as a combat injury. **What her condition actually is — symptoms, severity, whether it is stable or degenerative, whether she is independent — is entirely unestablished.** Walt gave the shape of the problem and none of its detail, and nobody asked."
  knowledge: "**Nothing. She does not know Alexander exists.** Unmet, and **no one but Walt Adamik has ever mentioned her** — the channel runs entirely in the other direction. Nothing Alexander has done, funded, or supplied has been attributed to him in her hearing, and Walt's own `secret` records that nobody has been told the pieces connect.\n\n  Written rather than left absent so the emptiness reads as established. If a scene ever puts them in a room, **everything she knows will have to come from that scene or from Walt deciding to say it** — there is no prior channel to draw on."
  capabilities: "Unestablished. Not awakened; no Rank, no System, no combat relevance."
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early twenties, white, Polish-American, slight and quiet. Straight light-brown hair to the shoulders, tucked behind one ear; grey-green eyes a little too still, as if listening for something; a faint pale mark at the hairline from a three-year-old injury. A soft oversized cardigan over a plain T-shirt. Expression reserved, not unhappy, turned slightly inward. Reference setting: a small, lamp-lit Chicago apartment kitchen, evening light through a rain-streaked window."
  portrait: "assets/portraits/Nadia_Adamik_ENT-000207.png"
  want: "**Unauthored, and deliberately so.** She has never spoken on the page. Everything canon holds about her is **Walt's account of her circumstances**, not of her — and what she wants for herself is exactly the thing his account cannot supply. **Author this at the turn she is first played**, from that scene. She is the most load-bearing unauthored actor in the campaign and the easiest to fill in wrongly, because her situation is so heavily written that a Runtime will be tempted to derive a person from it."
  fear: "**Unauthored.** See above. Do not derive one from her condition — a person is not their diagnosis, and canon has never let her speak to the difference."
  secret: "**Unauthored.** What her condition actually is remains unestablished in canon, which is a gap in the record rather than something she is keeping."
  voice: "**Unestablished by contact, and a Runtime should not supply it.** No line of hers has ever been narrated. If she is met, what she sounds like is authored by that scene rather than before it."
  agenda: "**Authored from condition rather than from a want**, because none is established. `Advanced` through **2026-08-17** (`EVT-000446`); it has not been advanced since.\n\n  - **Living with it.** Gate-touched and not awakened, roughly three years, nothing licensed medicine offers has fixed it, and BGM does not cover it because their books do not classify it as a combat injury.\n  - **Whatever she is doing about that is unestablished**, including whether she knows what her grandfather is spending on her behalf. **Do not narrate her as knowing about the cores, the artificer, or the $40,000** — no channel gives her any of it."
  personality: "Unestablished. She has never spoken on the page and Walt described her circumstances rather than her."
  situation: |
      **Disclosed 2026-08-17 (`EVT-000446`)**, in answer to a question Walt had deflected since `EVT-000157` — why an old pawnbroker with thin margins wants **C-Rank cores and above** specifically, when the shop cannot profitably move them.

      **The mechanism, as Walt has it:** he has been told quietly that the right artificer, working the right material — **high-Rank cores, not crystals, not gold** — could build something that *helps*. He was careful and repeated it: **help, not cure.** Whether that is true, who told him, and what such a device would actually be are all unestablished; it is a grieving man's secondhand hope, not a verified world fact, and nothing in the profile has been consulted against it.

      **Marnie (`ENT-000189`) was going to be that artificer.** This is the load-bearing consequence of the disclosure and it reframes the whole Marnie thread from Walt's side: her disappearance is not a business inconvenience to him and never was. It also means **two separate people now need Marnie found for reasons that have nothing to do with each other** — Alexander for the S-Rank dagger, the maker's stamp, and what CONSULT is; Walt for this.

      **Nobody outside Walt and Alexander knows any of it.** She has not been mentioned to Owen, Fenn, Nakamura, or anyone else, and Alexander has made no commitment regarding her — he has neither promised the cores nor refused them. What he did do is keep supplying the material and fund the operation, without either of them naming the connection out loud.
```

### ENT-000208 — Yusuf Baptiste

A C-Rank striker Wade Bishop pitched for Ironline and who turned it down. Named to Alexander 2026-08-19 as an `OBJ-28` pipeline delivery. **Unmet — known only through Wade's read.**

```yaml
id: ENT-000208
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000537
  game_date: "2026-08-19 ~14:25 -05:00"
  real_date: "2026-08-12"
type: Character
subtype: striker (declined Ironline)
scope: local
lifecycle: active
aliases:
  - name: "Yusuf Baptiste"
    quality: current
relationships: []
canonical_state:
  affiliation: "Unaffiliated — declined Ironline Guild"
  home: "Chicago, USA (implied)"
  location: "Unestablished — Chicago is implied by working an Ironline pitch; nothing narrower is known."
  condition: "Healthy so far as anyone knows. Never seen; the only datum is Wade's account of the call."
  knowledge: "**Nothing about Alexander is established.** He has never heard the name; the pipeline delivery ran through Wade to Alexander, not the reverse."
  capabilities: "C-Rank striker, six years carded. No further detail established."
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early thirties, Haitian-American, tall and long-limbed with a striker's reach. Short twisted black hair; dark, measuring eyes; a trimmed beard along the jaw. A dark-olive field jacket over a black T-shirt, a worn duffel strap across one shoulder. Expression skeptical and direct, a man waiting for the honest number. Reference setting: a Chicago street corner outside a hunters' café, blurred traffic and brick behind him, overcast afternoon light."
  portrait: "assets/portraits/Yusuf_Baptiste_ENT-000208.png"
  want: "**To know the roster before he signs it.** He asked Wade directly how Ironline's average roster runs against the legal floor, and the pause before the answer was the answer. Six years carded and he walked on arithmetic rather than on a feeling. That is the one thing canon establishes about him and it should not be extended past it."
  fear: "**Unauthored.** He checks numbers before signing; what he is afraid of behind that is not established and must not be assumed to be death or injury specifically."
  secret: "**Unauthored.** Never met. One secondhand account of one phone call."
  voice: "**Unestablished by direct contact.** The only datum is Wade's account: a direct question about the roster against the floor, and a decision made on the pause rather than on the reply. **A Runtime should not extrapolate a manner from that** — it is conduct, not register. If he is met, his voice is authored by that scene."
  agenda: "**Authored from conduct rather than from a want**, because no contact has established one. `Advanced` through **2026-08-19** (`EVT-000537`); it has not been advanced since.\n\n  - **Not signing with Ironline**, which he has already acted on.\n  - **Available and uncontacted.** His contact information sits on Alexander's phone, passed by Wade under the `OBJ-28` retainer; Alexander has not called. That is Alexander's open lead rather than an expectation of his."
  personality: "Unestablished by direct contact. One secondhand datum: he asked Wade how Ironline's average roster runs against the legal floor and did not like the pause before the answer — a man who checks the numbers before signing."
  disposition_status: "**Unauthored — never met, never read.** A single behavioural fact (declined on a direct question about staffing) is all the record holds. Do not author a want, fear, secret, or voice until a played scene establishes them."
  situation: |
      **Turned down an Ironline pitch, 2026-08-19 (`EVT-000537`), reported to Alexander by Wade Bishop same-day per the `OBJ-28` retainer.** Asked Wade directly how Ironline's average roster runs against the legal floor; the pause before Wade's answer was itself the answer, and he walked. Contact information passed to Alexander's phone by Wade the same call. Not contacted by Alexander.
```

### ENT-000209 — Bettina Ochoa

A C-Rank breach/heavy hunter Wade Bishop pitched for Ironline and who turned it down. Named to Alexander 2026-08-19 as an `OBJ-28` pipeline delivery. **Unmet — known only through Wade's read.**

```yaml
id: ENT-000209
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000537
  game_date: "2026-08-19 ~14:25 -05:00"
  real_date: "2026-08-12"
type: Character
subtype: striker (declined Ironline)
scope: local
lifecycle: active
aliases:
  - name: "Bettina Ochoa"
    quality: current
relationships: []
canonical_state:
  affiliation: "Unaffiliated — declined Ironline Guild"
  home: "Chicago, USA (implied)"
  location: "Unestablished — Chicago is implied by working an Ironline pitch; nothing narrower is known."
  condition: "**Injured, per Wade's secondhand account** — a shoulder that healed wrong, eleven months off the boards as of this call. Never seen directly."
  knowledge: "**Nothing about Alexander is established.** He has never heard the name; the pipeline delivery ran through Wade to Alexander, not the reverse."
  capabilities: "C-Rank, breach and heavy work. No further detail established."
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Mid-thirties, Mexican-American, compact and muscular, the build of a striker coming back after a long layoff. Dark-brown hair in a thick braid; deep-brown eyes with a steady, slightly wary set; a small gold stud in one ear. A faded maroon hoodie under a scuffed leather jacket, hands in the pockets. Expression reserved and self-possessed. Reference setting: an empty municipal gym in Chicago, folded bleachers and high windows blurred behind her, late-day light."
  portrait: "assets/portraits/Bettina_Ochoa_ENT-000209.png"
  want: "**Not to be a body again.** Wade's read of why she declined Ironline, and the only motive canon supplies: eleven months off the boards after a shoulder that healed wrong, and a pitch that would have used her rather than accommodated her. It is secondhand and it is Wade's framing, which the record should carry as such rather than as her own words."
  fear: "**Unauthored.** Distinct from the want above and not derivable from it; an injured hunter refusing bad terms is not the same as one afraid of the work."
  secret: "**Unauthored.** Never seen directly. Nothing established."
  voice: "**Unestablished by direct contact**, and there is not even a reported line — only Wade's account of her reasoning. **A Runtime should not supply one.** If she is met, her voice is authored by that scene."
  agenda: "**Authored from conduct rather than from a want**, because no contact has established one. `Advanced` through **2026-08-19** (`EVT-000537`); it has not been advanced since.\n\n  - **Off the boards, eleven months and counting**, on a shoulder that healed wrong.\n  - **Available and uncontacted.** Her contact information sits on Alexander's phone from the same Wade call; he has not used it. **Her condition is Wade's secondhand account and has never been seen directly** — do not narrate its current state as known."
  personality: "Unestablished by direct contact. One secondhand datum, Wade's read of her reason for declining: Ironline is where she'd be a body again, not a hunter."
  disposition_status: "**Unauthored — never met, never read.** A single behavioural fact (declined on the reasoning her injury would be exploited, not accommodated) is all the record holds. Do not author a want, fear, secret, or voice until a played scene establishes them."
  situation: |
      **Turned down an Ironline pitch, 2026-08-19 (`EVT-000537`), reported to Alexander by Wade Bishop same-day per the `OBJ-28` retainer.** Eleven months off the boards after a shoulder that healed wrong; declined on the read that Ironline would use her as a body rather than accommodate the injury. Contact information passed to Alexander's phone by Wade the same call. Not contacted by Alexander.
```

### ENT-000210 — The Old Grain Terminal, Bridgeport

A confirmed B-Rank Gate site, Brannigan's office's own posting for Friday 2026-08-21. Named and located by Wade Bishop over the phone, 2026-08-19; unvisited.

```yaml
id: ENT-000210
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000537
  game_date: "2026-08-19 ~14:28 -05:00"
  real_date: "2026-08-12"
type: Place
subtype: confirmed Gate site
scope: local
lifecycle: active
aliases:
  - name: "the old grain terminal, Bridgeport"
    quality: current
canonical_state:
  location: "South end of Bridgeport, Chicago, river side — the loading pit under a collapsed conveyor housing at a disused grain terminal."
  condition: "Unvisited. Wade's description: a confirmed B-Rank Gate, filed properly this time, checked by him personally before the call. No further physical detail established."
  situation: "**Posted by Brannigan's office, surfaced to Alexander by Wade Bishop, 2026-08-19 (`EVT-000537`).** Strike element carded at five, short of Section 9.4's legal floor of eight; harvest element unstaffed. **Staging 06:30, breach 07:00, Friday 2026-08-21.** Alexander has elected to attend unlisted — no manifest entry, no insurance — per `140_OBJECTIVES.md` `OBJ-30`. Nothing about the Gate's true archetype, population, or the strike crew's composition beyond 'five, carded, real' is established."
```

### ENT-000264 — The Denver Containment Facility

A decommissioned BGM-surplus regional holding facility outside Denver, bought outright by Alexander (`OBJ-49`) rather than leased, to be retrofitted to Sorcha Bellweather's no-interior-access, fail-closed-forever containment design.

```yaml
id: ENT-000264
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000900
  game_date: "2026-09-09T20:30:00-05:00"
  real_date: "2026-08-30"
type: Place
subtype: containment facility, purchased
scope: national
lifecycle: active
aliases:
  - name: "the Denver facility"
    quality: current
canonical_state:
  location: "Outside Denver, Colorado — exact site address not yet established. Decommissioned BGM regional holding facility, empty since a budget cut roughly two years prior to purchase."
  condition: "Structural shell and power intact, built for staffed access (doors, interior monitoring already installed). Purchase price $2,800,000 (internal federal transfer via Sorcha Bellweather's office, `EVT-000900`). Usable immediately in its current staffed-facility-grade form; not yet fail-closed. **Furnished 2026-09-11 (`EVT-000918`)** — a bed, space heater, and desk carried in from the Rockwell bay via the dimensional inventory, the first personal furnishing the site has had."
  ownership: "Bought outright, $2,800,000, by internal federal transfer through Sorcha Bellweather's office, 2026-09-09 (`EVT-000900`). A retrofit to the `OBJ-49` no-interior-access spec was commissioned the same day for $9,200,000, estimated 6-8 weeks. Restated here from this record's own condition and situation, 2026-09-23 (real date), so the ownership reads in one field like the other holdings."
  photo: "assets/places/Denver_Facility_ENT-000264.png"
  photo_alt: "assets/places/Denver_Facility_ENT-000264_retrofit.png"
  situation: "**2026-10-01 (`EVT-001216`, `EVT-001220`, `EVT-001221`).** Retrofit read: seal array phase 2 of 3, east access sealed, west in progress, interior not fail-closed (the owner may use it as-is; a note asking him to ring Sorcha first was a Runtime invention, struck). **A live S-Rank Glasswalker, carried out of an instant dungeon, lies bound in the cage room (Containment Room 1)** under Binding Grip, watched by his anchor sense and a Keen Sense standing watch. **The retained monitoring is air-gapped**: its alert on the creature routed to the local console only, no uplink (🎲 65); he declined to connect one. PRIOR: **Purchased 2026-09-09 (`EVT-000900`), retrofit commissioned same day.** Sorcha Bellweather is retrofitting it to the `OBJ-49` no-interior-access spec — sealing existing access points, rebuilding the seal array — for $9,200,000, estimated **6-8 weeks**. **Existing on-site interior monitoring (self-contained servers) is being retained rather than stripped**, pending Sorcha's verification that it is genuinely air-gapped with no external network dependency. Alexander may use the facility as-is during the retrofit; Sorcha will flag which parts are safe to rely on as fail-closed and which aren't while work is ongoing. Title expected to clear within the week per Sorcha's own estimate."
```

### ENT-000149 — The Cutting Edge Proprietor

Owner-operator of Cutting Edge (`ENT-000132`), the custom gear shop in Chicago's warehouse district. A working artisan rather than a shopkeeper, and rigidly licensed. Not yet given a proper name in play.

```yaml
id: ENT-000149
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000156
  game_date: "2026-08-05, ~11:20-11:32, warehouse district"
  real_date: "2026-07-28"
type: Character
subtype: gear artisan / licensed vendor
scope: local
lifecycle: active
aliases:
  - name: "the Cutting Edge proprietor"
    quality: current
canonical_state:
  affiliation: "Cutting Edge — proprietor"
  home: "Chicago, USA (warehouse district)"
  location: "Cutting Edge (`ENT-000132`), Chicago's warehouse district (`worlds/gatefall/`, `ENT-000087`); exact address unestablished"
  condition: "Healthy; not established as combat-active."
  capabilities: "Builds and fits custom E-Rank and D-Rank hunter gear on commission (Profile Section 12.8). Reads a hunter's loadout accurately at a glance — identified Alexander's mixed Ghost Quickknife / Gale coif / Bastion gauntlets kit on sight as assembled fast rather than planned. Not established as an artificer himself; whether he forges or subcontracts the mana work is unestablished."
  appearance: "Mid-forties, sleeves rolled to the elbow, a loupe pushed up into close-cropped hair, hands that go back to a bench the moment a conversation stops being useful. Works at the back of a narrow deep shop lit by warm overheads, gear displayed like specimens under glass rather than stock on racks."
  want: "**To keep his mark meaning something.** He logs a core's provenance before it touches anything carrying his mark and pressed Alexander three times for a count and a source, taking the refusal without chasing him. The paperwork is not caution — it is the asset, and everything else about him is priced around protecting it."
  fear: "**Work of his turning up attached to material he cannot account for.** He said the shape of it himself: genuinely unusual work needs unusual material and draws review, especially at B-Rank and above. A vendor whose mark appears on a reviewed piece he cannot document loses the licence and the mark together."
  secret: "**Whether he forges the mana work himself or subcontracts it.** Canon explicitly does not establish that he is an artificer, and he has never volunteered which he is. **Known to:** whoever does the work, if anyone does. Treat the answer as unauthored — this records that he keeps it to himself, not what the answer is."
  voice: "**Explains the rule and its reason, once, then stops.** Blunt to the point of sounding cold, which is pricing rather than rudeness. Asks the same question up to three times without raising his voice, and **does not chase a customer who walks** — a parting insult gets no reaction at all."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-05** (`EVT-000156`), the last span this record settles; it has not been advanced since.\n\n  - **Taking commissions at Cutting Edge** under his stated rules: the supplied core's Rank is the hard ceiling, combining cores is volume and never Rank.\n  - **Alexander's core count and source are still unanswered.** He asked three times and was refused three times, and he did not chase it. It stays an open question of his rather than a demand."
  personality: "Blunt, unhurried, and cold in a way that reads as pricing rather than rudeness. Explains his own reasoning rather than posturing, does not chase a customer who walks, and is unbothered by a parting insult. Absolutely inflexible on one point: he logs a core's provenance before it touches anything carrying his mark, because the paperwork is the difference between a shop and a liability — and he says so plainly rather than hiding behind policy."
  situation: "Met Alexander for the first time on 2026-08-05 (`EVT-000156`). Explained the commissioning rules in full: the supplied core's Rank is the hard ceiling; combining cores is volume, never Rank; genuinely unusual work needs unusual material and draws review, especially at B-Rank and above. Pressed three times for Alexander's core count and source and was refused three times; conceded the framing when Alexander pointed out he had been asked to disclose resources without being shown anything, and narrowed to an offer — one core physically on the counter, no interrogation, and he would say what could be done with it. Alexander declined that too and left. Nothing bought, sold, or commissioned; no standing relationship formed. He does not know Alexander's name, holdings, or the System, and holds no suspicion beyond an ordinary vendor's read that a customer is being cagey about sourcing. Named by the pawnbroker (`ENT-000147`) the same day as straight and good at the work, but permanently useless for unprovenanced material."
```

### ENT-000150 — Ferro's Reclamation

A salvage and scrap dealer two blocks north of the pawn shop in Chicago's warehouse district. Named to Alexander by the pawnbroker as the one place in the district that talks. No relation to Denise Ferro (`ENT-000148`).

```yaml
id: ENT-000150
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000157
  game_date: "2026-08-05, ~11:40-12:15, named at the pawn shop"
  real_date: "2026-07-28"
type: Institution
subtype: salvage dealer
scope: local
lifecycle: active
aliases:
  - name: "Ferro's Reclamation"
    quality: current
canonical_state:
  location: "Chicago's warehouse district (`worlds/gatefall/`, `ENT-000087`), two blocks north of the pawn shop (`ENT-000147`); exact address unestablished"
  function: "Buys and resells mundane scrap and salvage. Presents as an ordinary reclamation yard."
  standing: "**Named as an informant risk, not a business option.** Per the pawnbroker (`EVT-000157`), its owner trades favors in both directions with Coalition compliance staff and repeats what is said in the shop. Nothing unprovenanced should be sold there and nothing said there that Alexander would not want relayed to a badge. The name is coincidental — no established relation to Denise Ferro (`ENT-000148`), whose crew Alexander worked for on 2026-08-04.

  **Visited, 2026-08-11 (`EVT-000286`).** Owner identified: **Petra** (`ENT-000183`), see her own entry for the meeting and the standing arrangement formed. The yard itself is exactly what it presents as — stacked scrap, sorted hardware bins — with nothing overtly unusual visible on a normal walkthrough."
```

### ENT-000168 — Milo

A hunter met at the Windy City Hunters Coalition's training grounds, 2026-08-05. Sensor-adjacent with minor perception ability but no notable combat skill; trains reaction footwork as compensation. **Surname `Brandt`, on the ledger's record — but he did not give it to Alexander**, who has only ever had "Milo"; the ledger is world-canon, not the protagonist's knowledge, and nothing has yet put the full name in front of him.

```yaml
id: ENT-000168
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000167
  game_date: "2026-08-05, ~14:20-14:40, Coalition training grounds"
  real_date: "2026-07-28"
type: Character
subtype: sensor-adjacent hunter
scope: local
lifecycle: active
aliases:
  - name: "Milo Brandt"
    quality: current
  - name: "Milo"
    quality: current
canonical_state:
  affiliation: "Windy City Hunters Coalition — training grounds"
  home: "Chicago, USA"
  signature_ability: "**None — correctly.** Under Profile Section 13.6 (1.42) a signature ability is authored for named NPC hunters at **D-Rank or above**. Milo is E-Rank: the gift is not absent, but too slight to name, file, or build a reputation on, which is why the boards record hunters at this Rank by working type and licence number instead. An empty field here is correct, not a gap. It may be named later if the fiction ever needs it, under the same no-magnitude limit as any other signature."
  rank: "**E-Rank** — **Authored at the 1.41 follow-up.** Awakened — he carries a minor perception-adjacent ability — but by his own account has no combat skill worth naming, and trains reaction footwork as a deliberate substitute for the striking gift he lacks. Resolved by that Rank under Section 13.1."
  pool_variance: "**−5%** — authored under Profile Section 6.1.2 (`EVT-000249`). Permanent, never rerolled. A small gift, honestly described by its owner as small. The shallow well is the character."
  pools: "**Maximum Health 38, maximum Mana 19** — Section 6.1 table (40 / 20) × 0.95, floored. Section 5.2 tier costs, read from their own maximum: **Minor 1, Signature 4, Boss-tier 9**. Section 5.3 running-dry threshold **4**."
  location: "Windy City Hunters Coalition training grounds (`ENT-000102`), staged at the Lakefront Gate Corridor (`ENT-000089`)"
  condition: "Healthy; athletic build, no notable combat capability by his own account."
  knowledge: "**What he knows about Alexander — read this before any line where he asserts something about him.** Anything not listed here he has not been told, which is the boundary rather than a gap (Resident Core, *Load a Recorded NPC Before Playing It*). **This record is nearly empty on purpose, and it is the cleanest example of the boundary in the campaign.**\n\n  - **His first name, and nothing else of his identity.** A Closed Channels row records that Milo has no channel to the surname *Pendragon*; their only contact was a first-name exchange over training drills on 2026-08-05, and nothing since gave it to him. **`Brandt` is on this ledger as world-canon and Alexander has never been given it either** — the two of them know each other as *Milo* and *Alexander*, and the ledger knowing more is not the characters knowing more.\n  - **That Alexander read his drill correctly on the first attempt**, which he noticed and deliberately did not press (`EVT-000309`).\n  - **Reaction-footwork training talk**, and that is the whole of the acquaintance.\n\n  **What he does not have.** Everything else: no file access, no crew history, no Bearer-only quantity on the Profile §14.4.1 register. **He is the test case for the default:** when a line needs Milo to know something, the answer is almost always that he does not, and his own `personality` — not curious enough to press when something does not add up — is what makes that playable rather than awkward."
  capabilities: "Minor perception-adjacent ability, unspecified. No combat skill worth naming, by his own admission. Trains reaction footwork — reading a partner's weight shift and calling pattern to react before the movement completes — as a deliberate substitute for the striking ability he lacks."
  appearance: "Roughly Alexander's age, wiry build, clearly conditioned for agility rather than bulk. **Extended 2026-09-23 (real date), for portrait reference:** Mid-twenties, Black, wiry and light on his feet, the lean definition of someone who trains agility daily. Close-cropped black hair with a clean line-up; warm dark-brown eyes; an easy, open grin. A sleeveless grey training top, taped wrists, a Coalition-issue sweat towel over one shoulder. Reference setting: the Coalition training grounds at the Lakefront Gate Corridor, marked footwork cones and lake haze behind him, bright morning light."
  portrait: "assets/portraits/Milo_Brandt_ENT-000168.png"
  personality: "Direct, easygoing, comfortable being watched and asked about his training. Not curious enough to press when something doesn't add up — noticed Alexander's uncanny first-attempt read of his drill and let the deflection ('I like running') stand without pushing."
  want: "**A way to be useful in a fight without the gift for it.** He is awakened with a minor perception-adjacent ability and, by his own account, no combat skill worth naming — and he has answered that by training reaction footwork as a deliberate substitute. Inviting Alexander back to the cones anytime is the same impulse: he would rather have people on the drill than be the only one on it."
  fear: "**That the substitute does not actually substitute.** He has built his usefulness on a workaround and has never tested it where it would matter. He does not say this and it does not make him anxious; it makes him keep drilling."
  secret: "**Unauthored.** He was startled twice by Alexander's reads and let the deflection stand — which is incuriosity rather than concealment, and the record is explicit that he did not push."
  voice: "**Easy and unguarded, comfortable being watched.** Explains his own drill in detail to a stranger without being asked twice. **Lets a thing that does not add up go** — visibly noticing and visibly choosing not to ask is his most characteristic move."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-05** (`EVT-000167`), the last span this record settles; it has not been advanced since.\n\n  - **Working the cones at the Coalition training grounds**, which is where he is whenever the fiction puts him nowhere else.\n  - **The standing invitation is open** — he told Alexander he is welcome back anytime. It is casual acquaintance and not a standing arrangement; no relationship record exists."
  situation: "First meeting, 2026-08-05 (`EVT-000167`). Ran his reaction-footwork drill for Alexander twice — a legendary-success first pass and a strong-success second pass on a harder, feint-laced pattern — and was visibly startled both times. Told Alexander he's welcome back on the cones anytime. No relationship record yet; a casual acquaintance, not a standing arrangement.

  **Second meeting, 2026-08-12 ~14:15-15:00 (`EVT-000309`).** Alexander mentioned recruiting higher-Ranked hunters; Milo took it without self-pity, amused rather than stung — 'figured you weren't looking for footwork guys.' Ran three harder reps: the first clean, the second genuinely caught Alexander out (a real miss, satisfying to Milo — 'means you're human after all'), the third clean again. Openly unsettled by the third rep specifically — 'that's not normal,' said flat rather than accusing — but let it go without pressing, consistent with his established character. Doesn't know why Alexander is uncannily good at this; hasn't asked."
```


### ENT-000211 — The Sidecut

A narrow bar on Cermak Road, chosen by Dale Pruitt (`ENT-000135`) for exactly one property: nobody in the hunting trade drinks there. Established `EVT-000614` when he finally sent the address he had promised that morning.

```yaml
id: ENT-000211
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000614
  game_date: "2026-08-22 14:26 -05:00"
  real_date: "2026-08-20"
type: Place
subtype: bar
scope: local
lifecycle: active
aliases:
  - name: "The Sidecut"
    quality: current
relationships: []
canonical_state:
  location: "2211 W Cermak Road, Chicago — the industrial stretch of Lower West Side, well clear of the Coalition, the guild halls, and every bar the trade actually uses."
  condition: "Open and operating. Ordinary neighbourhood bar, no awakened clientele, no Gate-adjacent trade."
  capabilities: "None. A mundane place with no mechanical function; it exists because Dale needed somewhere a conversation would not be overheard by anyone who files rosters for a living."
  situation: "**Named and located at `EVT-000614`**, 2026-08-22 14:26, in the second of two texts. Dale had settled on it on 2026-08-20 (`EVT-000561`) as the venue for the beer he has owed Alexander since the Frozen Gallery, choosing it *precisely because nobody in the trade goes there* — and undertook to send the address Saturday morning. He did not, and said so himself when he finally sent it.\n\n  **Never visited.** Alexander cancelled the 19:00 at `EVT-000615` without offering a replacement. Dale said he would be there anyway — *'Booked the night for it'* — so the place stands in canon as somewhere he is drinking alone on the evening of 2026-08-22, and somewhere Alexander has an address for and has not been."
  knowledge: "Not applicable — a Place holds no knowledge. What is known *about* it is held by Dale Pruitt (`ENT-000135`), who chose it, and by Alexander, who has the address and nothing else."
```

### A note on the shared apartment's identifier

**No campaign-scope Object Block is minted for "the Rogers Park apartment" here.** `ENT-000087` — the number the campaign's own ledgers have used colloquially for it since `EVT-000549` first set a rift-step anchor there — is already allocated at world scope to **Chicago itself** (`worlds/gatefall/210_PLACES.md`, a Settlement/Kingdom entity). Every campaign reference to "the Rogers Park apartment, `ENT-000087`" has therefore been citing the wrong identifier for years; the apartment itself has never had one. Discovered and left unresolved this session (2026-09-07) rather than assigning a fresh identifier under save-time pressure — that's a real allocation decision (new Entity, registry bump, and a pass over every existing citation) and belongs in its own session, not folded into a checkpoint. The history correction stands regardless of the identifier question: this is the lakefront apartment Alexander and Owen rented together deliberately (`EVT-000241`, 2026-08-09), each having had his own place first — not Owen's original lease, which the earliest session exports correctly described only for the period before that Event.

---

## Campaign Relationships

### REL-000062 — Windy City Hunters Coalition (institutional affiliation)

Defined in `110_WORLD_LEDGER.md` (`REC-000075`). Alexander's freelancer registration with the Coalition; as of 2026-07-23 it is the channel through which he was placed on Tanya Voss's crew.

### REL-000063 — Alexander's membership in Tanya Voss's crew

```yaml
id: REL-000063
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000058
  game_date: "2026-07-23, contract signed"
  real_date: "2026-07-23T15:03:14+02:00"
endpoints:
  - ENT-000125
  - ENT-000126
type: former-crew
qualities: "Closed. Alexander's first Gate crew, for one contract: the Red Line Corridor clear of 2026-07-24 (`EVT-000060`), paid on the standard split. Tanya parted with genuine respect and an open invitation onto her next posting, never taken up."
qualities_as_of: EVT-000060
state: "Contract closed 2026-07-24 (`EVT-000060`): full clear, loot declared at exit, standard split applied ($10,000 contract + ≈$2,850 crystal/core value, Alexander's equal-fifth ≈$2,313), filed with Kesha Morrison at the Coalition on 2026-07-25 and pending payment (1–2 business days). The crew dispersed the evening of the clear; Tanya told Alexander he's welcome on the next posting whenever the crew looks at the boards again, expected in a few days. Her regard for him remains genuine respect, reinforced by his sincere goodbye and candor about being new to hunter income."
history: "Formed at the Coalition case table on 2026-07-23 when Alexander, directed by Kesha Morrison, committed to Voss's undersubscribed crew and signed the standard five-hunter contract (EVT-000058). Proved out on 2026-07-24 in the crew's first Gate together, the Red Line Corridor clear (EVT-000059)."
```

### REL-000064 — Alexander's harvest-hire standing with the corporate-adjacent contractor

```yaml
id: REL-000064
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000063
  game_date: "2026-07-25, Coalition desk and Cicero Scar staging"
  real_date: "2026-07-24T13:54:03+02:00"
endpoints:
  - ENT-000125
  - ENT-000134
type: harvest-hire
qualities: "Lapsed. Two C-Rank harvest jobs for the contractor Ada coordinates, Cicero Scar and the Frozen Gallery (July 2026), taken per job through the Coalition with no standing contract. The Frozen Gallery pool was short of the crystals he sold privately and undeclared, which nobody on her side knows. No contact since."
qualities_as_of: EVT-000068
state: "Two jobs completed: the Cicero Scar C-Rank clear (2026-07-25, `EVT-000063`) — 7 declared C-Rank crystals, ≈$5,700 harvest share pending — and the Frozen Gallery C-Rank clear (2026-07-26, complete, `EVT-000065`–`EVT-000068`), staffed by a different site coordinator (Dale, `ENT-000135`) who already knew Alexander by reputation from Ada Reyes. Three vein assignments worked at the Frozen Gallery, the third to genuine exhaustion: **41 C-Rank crystals formally declared**, the highest single total of the crew, yielding a computed harvest-share payout of ≈$24,663 (Section 13.2, `EVT-000068`) — his largest to date. Six separate private sales (98 crystals, four of 12 and two of 50) were sold through the System shop across the job and never entered this contract's declared pool — undeclared theft under the standard support-contract terms, unknown to Dale or the contractor despite two close calls, both deflected. Dale confirmed the contractor occasionally posts B-Rank harvest work and named Alexander a strong future candidate. No standing contract beyond a per-job basis; each job is taken individually through Kesha Morrison at the Coalition desk."
history: "Formed 2026-07-25 when Kesha Morrison surfaced the Cicero Scar harvest slot after Alexander asked specifically about C-Rank mining work, following the correction that his E-Rank card does not bar harvest work at any Rank (`EVT-000062`)."
```

### REL-000065 — Alexander's pending crew slot with Priya Menon's crew

```yaml
id: REL-000065
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000069
  game_date: "2026-07-27, arranged by phone through Kesha Morrison"
  real_date: "2026-07-24T20:38:46+02:00"
endpoints:
  - ENT-000125
  - ENT-000136
type: former-crew
qualities: "Outgrown. One contract together, the mis-posted Ashfield clear of 2026-07-28, where field command passed to Alexander by Priya's own ruling while she kept the lead and the signature. He left to found his own crew and has not worked with hers since; the Pendragon Guild flagged her five-hunter crew for priority intake (`EVT-001069`), and she reconnected with him at the Chicago open house."
qualities_as_of: EVT-001069
state: |-
  **Complete, and outgrown.** The one contract this tie was made for, the Ashfield clear of 2026-07-28, was mis-posted a full Rank low. Alexander killed the elite and the boss and went from Level 3 to 7. The crew settled it on 2026-07-29 under the agreed "no hero" account (`EVT-000076`-`EVT-000083`): $9,450 each and $14,700 to Priya, and the Longshot [C-Rank] to be sold and split. By Priya's own ruling, field command passed to Alexander while she kept the contractual lead, the signature and the leader's share. He trained the crew once, on 2026-08-02 (`EVT-000116`). He fixed the call form as *who, what, where* and the spend-call rule, and gave each member a personal correction: Priya's late third beat, Julian's missing second answer, Renata's stop-don't-end reflex, and Owen's four-inch flinch.

  **Why it is not live.** He told himself on 2026-08-02 that he would not stay, because the command shift would collide with Priya. He went on to found his own crew (`OBJ-26`), and Owen left Priya's crew for it on 2026-08-11 (`EVT-000291`). The Pendragon Guild later flagged Priya's five-hunter crew for priority intake (`EVT-001069`). Alexander has not worked a contract with this crew since Ashfield. The dated history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
history: "Formed 2026-07-27 when Kesha Morrison, following up on her promised morning callback (`EVT-000069`), reported two open E-Rank–D-Rank waiver-tier crew slots; Alexander asked after Menon's posting specifically and committed to it over the phone. Confirmed and activated in person 2026-07-28 (`EVT-000070`)."
moved_by_events: "`EVT-000080` `EVT-000111` `EVT-000112`"
```

### REL-000066 — Alexander and Owen

```yaml
id: REL-000066
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000147
  game_date: "2026-08-05, ~08:15, a diner in Rogers Park"
  real_date: "2026-07-27"
endpoints:
  - ENT-000125
  - ENT-000139
type: former-partner
qualities: "Ended 2026-09-15 (`EVT-000999`): no longer together, no longer living together, and Owen did not accept the offered friendship on the day. Since then civil, sparse, and his to open: a proud text after the broadcast, and a real question about running his Bridgeport crew, answered (`EVT-001102`). He still knows the System by name and has watched Alexander rift-step; the break took none of that back."
qualities_as_of: EVT-001102
state: |-
  **Ended, 2026-09-15 (`EVT-000999`).** Alexander and Owen are no longer together and no longer live together. The break followed an unresolved fight on 2026-09-11 (`EVT-000918`): Alexander misstated the history of Owen's crew thread (`OBJ-12`), Owen named it plainly and would not be baited, and Alexander left for the Rockwell bay and Denver. He bought the Winnetka house (`ENT-000270`, `EVT-000923`) and the two exchanged one practical text about a charger (`EVT-000957`). At the Rogers Park apartment on 2026-09-15 Alexander proposed "just friends", said he still loved him and that living together had been the wrong call, and declined to give any cause: *"there is no rest of it."* Owen did not accept the friendship on the spot: *"Then I guess that's that... not today, not five minutes after there's no rest of it."* The lease passed to Owen alone, Alexander's deposit share forfeited, and Alexander withdrew every personal holding. No reconciliation was offered or attempted by either of them.

  **Since then: civil, sparse, and Owen's to open.** After the broadcast (2026-09-21, `EVT-001056`) he texted a minute behind everyone else: *"Saw it. All of it. You looked, I don't know. Proud of you, for what it's worth. Take care of yourself, Alexander."* To Alexander's *"Thank you"*, after visibly typing twice: *"Yeah. Take care of yourself."* On 2026-09-25 he asked a real question about running his Bridgeport crew; Alexander answered it (be honest, work, follow the chain of command, never enter unprepared or understaffed, never take a job that cannot be finished) and Owen replied at 19:12 (`EVT-001102`). Nothing is owed either way.

  **What outlives it.** Owen knows the System by name (`EVT-000145`) and has watched Alexander rift-step and draw from his dimensional inventory; nothing about the break took that back. Their old crew tie through Priya's crew is `REL-000065`. `texture` below is the register the two were played in while the relationship was live, and stays as their shared history; the break is the fact that governs a scene between them now. The dated history of the relationship is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
history: "Formed over roughly twenty hours. Owen was assigned as Alexander's rear-position partner at staging on 2026-07-28 (`EVT-000070`) and spent the clear watching him do impossible things: intercepting a beast to protect him, taking a fatal hit and standing up unharmed, summoning a dagger from nothing twice, and producing a healing potion he had not been carrying. Alexander's first genuine warmth toward anyone in this campaign was directed at him mid-Gate (`EVT-000077`) — a joke about an owed beer, declining Owen's healing to bank it for worse need, an arm around his shoulder, and the first smile the crew had seen from him. Owen then cleared Alexander's Severe rib injury with a C-Rank treatment touch (`EVT-000080`), the first exercise of the Profile 1.5 mender rule. The beer followed the clear, and the rest followed the beer (`EVT-000081`)."
texture: "**How these two actually are together — the register a Runtime should play, not just the fact of the relationship.**\n\nIt is *funny* before it is anything else. They tease constantly and neither wins. Alexander calls him 'mister no-sparks' and 'O great mage'; Owen is genuinely affronted by 'mage' ('there's no wand, there's no — *sparkles*'), insists 'mender' with the weary precision of a man who has lost this argument before, and takes it as a compliment anyway. Alexander charged him a fee to use his own shower. There was a pillow fight the morning after, which Owen lost catastrophically to a bedsheet while hungover, and about which he demanded the record show he was ambushed by a man who had killed a boss the previous day.\n\n**Owen's tell is his hands.** When he is composed he turns his glass a quarter-turn on the wood; when he isn't, he finds somewhere to put a hand — flat on Alexander's chest, curled into his shirt, absent-minded on the back of his head. His dryness is armor and it stops working around Alexander: he goes red from the collarbone up, his voice climbs, he starts a sentence and reroutes it, he laughs at things that aren't quite jokes. He is habitually the one who stays sober to drive everyone home and has almost no tolerance, and he is aware this makes him appalling at drinking.\n\n**Alexander is unguarded here and nowhere else.** He is cold or merely correct with Priya, Julian, and Renata — he overruled Julian flatly over the boss drop within the same hour he was warm with Owen. The smile he can't control is Owen's alone; the crew has seen him smile exactly once, and it was aimed at Owen. He initiates the physical contact every time (an arm around the shoulder, a hand taken in both of his, a kiss on the cheek, blocking the doorway to tease), and Owen's reaction is consistently *startled, then delighted* — he does not expect to be someone's person and says so: 'People are grateful to me... I get thanked a lot and it isn't the same thing at all.'\n\n**The unspoken thing is handled with deliberate care on both sides.** Alexander began a sentence — 'I...' — and stopped; Owen heard it, went still for half a second, and said only 'Mm,' meaning *I know, whenever, I'm not going anywhere*. He keeps that promise even when it visibly costs him. Warmth is the medium through which the secret is *not* discussed, not the lever used to extract it.\n\n**Owen looks after him in small practical ways** that are not mender's work: telling him to eat, noting he's had eggs and beer since yesterday, releasing him from promises made while exhausted, and pointing out that Alexander is carrying six things at once. Alexander's reciprocal gesture is to give things away without accounting for them — the potion, the tab, his bed.\n\n**Added 2026-07-30 (`EVT-000084`) — the morning-after register, which is the one they default to when nothing is on fire.**\n\n*Physical play, and Owen always loses.* Owen shoves, wrestles, and attempts flips with roughly a third of his actual weight behind them and is put down every time without effort, whereupon he demands the record show he was ambushed, outnumbered, or concussed — 'by the pillow, earlier.' He never stops trying it. Alexander answers by picking him up bodily and kissing his face until the protest collapses, which works every time.\n\n*The jurisdiction bit.* Alexander's new field command over the crew is a standing joke between them: told he can do as he likes because he is Owen's leader, Owen argues jurisdiction — 'Priya gave you *the field*, in a *Gate*, that is a specific and limited jurisdiction, it does not extend to my *head*' — and threatens to request written clarification. He loses this argument too and enjoys it.\n\n*Owen keeps score in his own units.* Having completed a scaled version of a regimen that cost Alexander nothing, he claimed the win 'in percentage of personal maximum' against the man who killed a boss on Tuesday, and wanted it noted formally.\n\n*The instructor's voice is a separate thing and Owen named it.* Coached through form — a hand between the shoulder blades, a tap under the chin — he identified it immediately as not the voice Alexander uses for people he likes but the one he uses for people he is **responsible for**, said he liked it, and instructed Alexander not to make that weird.\n\n*Alexander goes red now too.* Previously the blushing was entirely Owen's tell. Asking the boyfriend question put Alexander scarlet and grinning like a teenager, and Owen — who has never seen him lose composure for any other reason — commented on it out loud: 'You know you've killed a boss, don't you? You know that about yourself?'\n\n*And Alexander asks him for help.* Having told Owen he is the most valuable asset in the crew, he said plainly that he is still new at this and will need Owen's help — a sentence he has said to nobody else in this campaign, and which Owen answered by handing over five years of accumulated professional grievance as usable requirements in about eleven seconds. Owen's own framing of the whole arrangement, delivered as a warning: 'I'm going to be so annoying about this.'

**Added 2026-07-30 evening (`EVT-000088`) — the register when one of them says something true.**

*Owen's dryness fails in a fixed sequence and Alexander can now read it.* He goes red from the collarbone up, starts a sentence, abandons it, reroutes, and only gets there on the third attempt. When it fails completely he stops talking and puts a hand somewhere — flat on Alexander's chest, closed into the front of his shirt, both hands round his wrist to hold it in place. When it fails *and* he's out of jokes he goes quiet, which is rare enough that Alexander notices it as an event.

*He defuses every serious moment exactly three seconds after it lands, never before.* He will take a real thing seriously, answer it honestly, and then immediately audit the towels, complain about the stairs, or demand something be entered into the record — 'I'd like it noted', 'I want it on record', 'percentage of personal maximum'. The joke is not avoidance; it arrives only after he has actually said the true thing.

*Alexander gives things away and Owen gives space.* Alexander's gestures are transfers — the potion, the tab, his bed, dinner, and now the offer of a crew built for Owen rather than for himself. Owen's are room: a drawer emptied onto the bed, the top bathroom shelf cleared, a promise not to ask. Neither keeps count out loud and both are keeping count.

*Teasing is the load-bearing structure.* 'Greedy mender', 'my little cute Chansey', 'colonist' (for the toothbrush), the dog towel, the stairs, the jurisdiction bit. Owen loses every exchange and prosecutes the next one anyway. The one thing neither has ever made a joke of is the unasked question.

**Added 2026-07-30 night to 2026-07-31 morning (`EVT-000089`) — the domestic register, and the second morning of the same silence.**

*The shirt bit, and what it is actually about.* Owen wore one of Alexander's shirts to bed out of the pile that arrived in his room, and defended it in three escalating positions — it was on the chair, there is no longer a defensible border, and finally, on the third attempt as always, the true one: *it smells like you.* Alexander tore the shirt off him outright, effortlessly, and Owen — a C-Rank mender who knows exactly what cotton costs a body to tear — looked at his hands, said nothing about it, and made a joke about the treaty three seconds later. **That is now the established shape of the exposure thread between them:** he registers each impossible thing, declines to name it, and reroutes into warmth. Alexander's counter-register is proclamation and play (*King of Menace*, tickling declared as a diplomatic overture, a decree that Owen shall not wear a shirt to bed while he doesn't).

*Physical play, unchanged and load-bearing.* Owen initiates, loses instantly and comprehensively, and demands the record show he was ambushed. He does not stop trying it. In the bathroom the next morning he elbowed Alexander over the sink and lost that one too, in under three seconds, while brushing his teeth.

*The `Chansey` bit is now a term of address.* Alexander called him *sweet egg Pokémon mage* at lights-out; Owen went under mid-objection, defending Chansey's professional standing as a nurse with a satchel. `mage` remains the reliable detonator, and he still corrects it to *mender* every single time.

*Training is becoming a shared thing rather than an imposition.* He argued his way out of ten kilometres and into four and thirty of everything, and Alexander conceded with '+2k every day seems like good progress' — an explicit coaching arc, which Owen accepted without noticing he was accepting one. Afterward Alexander told him he would not stay for breakfast because he had errands; Owen did not ask what they were, said he would get his coffee alone 'like a widower', and let it go. **He does not ask about the errands the way he does not ask about the rest.**

**Firsts recorded this evening.** Owen has never given anyone a drawer. Alexander has never had one — he keeps his life in a backpack, in a flat with bare walls, a fact Owen noticed silently at Alexander's apartment and named out loud at his own. Alexander told Owen he wanted him **before knowing he held any card**, which is the exact inverse of Owen's stated wound. Alexander initiated the evening's kiss, said 'thank you', and left his toothbrush behind on purpose, announcing it in advance as a threat.

**Added 2026-07-31 (`EVT-000093`) — the first unweighed thing.** Every gesture recorded above was, on some level, decided: the potion, the tab, the drawer's answer, the boyfriend question rehearsed enough to go scarlet over. Mid-conversation with a Coalition coordinator, Alexander sent Owen *\"I already miss you\"* before he had time to calculate it — the first time in this relationship he said something true without weighing it first. Owen's reply moved from a startled beat (*\"...oh\"*) to plain instruction (*\"good. don't take it back.\"*) rather than a tease, matching the register he uses only when something has actually landed.

**Added 2026-07-31 evening (`EVT-000103`) — a gap filled, and the text finally answered.** Two things settled in banter over a text exchange and a car ride: the boat kiss (`EVT-000087`, 2026-07-30) is now established as their **first real kiss** — deliberate, sober, in daylight — distinct from the physical intimacy of the night before it, which the record already had running first; and a previously blank night is filled in — **Owen stayed over at Alexander's own apartment on 2026-07-28**, after the beer/exposure conversation that followed the Ashfield clear, the one and only time the stay has run that direction rather than to Owen's. Picked up by car (a fact Owen has apparently owned for two years without it ever coming up), teased about the pointlessness of driving a walkable distance, and walked in on cooking dinner, Alexander crossed the kitchen without finishing a sentence and kissed him for real — unplanned, the first thing all day that wasn't calculated, and the closest either of them has come to actually answering the unweighed *\"I already miss you\"* from that afternoon. Owen's reaction was the same fixed sequence as always — surprise, then giving in, then a joke three seconds later (*\"hi. also hello, what was that\"*) — but the kiss itself broke the pattern: longer, less controlled, and not one he pulled back from first.

**Added 2026-07-31, dinner and night (`EVT-000104`) — the first real disclosure, and the gear conversation.** Over dinner, unprompted and grinning first rather than confessing, Alexander told Owen the actual number: **three bosses**, that afternoon, alone. Owen's reaction ran the full real sequence rather than the deflecting one — visible alarm, a proper mender's read that found nothing wrong, a flat \"three is a lot of not-asking\" — before landing on the same promise he's kept from the start: he won't ask how. This is the largest single piece of true information Alexander has volunteered about what he actually is, still short of naming the System but a real escalation past \"something happened to me.\" Alexander then added, half as a joke and half as real financial anxiety, that the day's shopping had run his gold in the wrong direction — Owen didn't buy the crisis framing for a second and pointed out he's dressed in gear that could stop a bus.

The conversation turned practical and stayed there: Alexander stated plainly, for the second time, that he wants to properly equip Owen — real protective gear, not standard mender kit, addressing the exact gap Owen named at the bar (never positioned to take a hit, never actually budgeted for by any crew he's worked). Owen's request, once he understood it was a real plan and not a nice sentiment: something for the hands, real boots, actual protection. Alexander also proposed bringing Owen along to a future Dale-brokered mining job as easy, well-paid manual work — Owen's reaction was delighted horror at the idea of manual labor, agreed anyway. Alexander added, unguarded, that he isn't interested in sharing how handsome Owen is with anyone else on site; Owen went visibly red and didn't argue.

**A weekend planned.** Owen confirmed he's free the whole weekend but for two short pending items — looking at Renata's glitching sensor rig, and giving Priya an actual date for the recurring crew training (`OBJ-11`) — both under an hour, both still owed. Tomorrow: the lake again, but jet skis first, at Owen's enthusiastic and openly competitive insistence ('I will not be taking it easy on you'), boat after.

**The evening's least calculated line.** Cleaning up together, Alexander said *\"I'll give you all the evenings\"* — off guard, the same unweighed register as the afternoon's text, not a line he planned. Owen went still in the real way rather than the deflecting one, put a hand on his shoulder, and didn't produce his usual three-seconds-later joke at all this time.

Showered and went to bed together, nothing left owed to the System, the crew, or anyone else until 06:00 the next morning.

**Added 2026-08-02 evening (`EVT-000116`) — the register when the private thing goes public, and when he is the one being built.**

*The elaborate stupid gesture, and how he hid it.* Offered a lift, told *Are you seriously going by a CAR to a TRAINING*, he texted that his keys were back on the hook — and had in fact already driven to the Coalition and then ridden the train back the wrong way so they would walk in together. Twenty-five minutes each way. He defended it, when caught, as *the single most humiliating fact about me currently in existence*, and admitted he had done the maths and decided it was worth it. Alexander's read of it out loud — *either the stupidest thing I have ever seen or the most romantic moment in my entire life* — was answered with *it's both.*

*He does not deflect praise about the work.* The tease survives everything else, but told he had done well, and later that Alexander is proud of him, the joke did not arrive at three seconds or at all. He went wet-eyed, put his forehead on Alexander's shoulder, and said that in five years people have only ever said thank you, which is a different thing entirely. Told he has more growing in him than the other three combined, he answered *say that to me again in a month and I'll believe it* — which is not a deflection but a deferral, and new.

*Being hit by him is a thing Alexander arranged on purpose, and he understood it.* He stopped four inches short the first time and said so honestly rather than covering it; on the second attempt he threw the punch he had been taught, landed it, and then repaired it. He was genuinely angry afterwards — a register he does not otherwise use — and he defended the method to Priya in the same breath. *I'd like it noted that I'm still furious about it and it worked.*

*The announcement was his, done his way.* He told Priya first, in front of everyone, at ordinary volume, on the specific grounds that they should hear it from him rather than deduce it — and he had been looking forward to watching her recalculate for four days. Renata had already worked it out from the stretches.

*Alexander's counter-disclosure.* Asked where his own thinking sits, Alexander told him for the first time that he does not see himself staying on this crew, expects the command shift to break against Priya eventually, and then refused to use any of that as leverage: stay if you are happy with them, this is not my first crew, and — the load-bearing line — ***I will still be in your bed. That's not going to change any decision.*** For a man whose stated wound is being valued as equipment, that is the exact sentence that decouples the decision from the relationship, and he visibly came down an inch when he heard it.

*And the ordinary ending.* He complained about his hand, his shoulders, his legs and the word 'shot' for twenty-five minutes of driving, every complaint a brag wearing a coat, parked badly, and asked *yours or mine* at a red light. The answer was his, on the grounds that all of Alexander's things are already in it.

**Added 2026-08-03 (`EVT-000119`–`EVT-000121`) — the register inside a Gate, and the one where he draws his own line.**

*He is not gentle in there, and neither is Alexander with him.* No hedging in the briefing, no soft landing — Alexander told him what to do and let him do it, and Owen, for the first time, was not the one being protected. Coming out the other side of his first kill he looked at his own hands the way Alexander has never once seen him do outside of a wound closing; neither of them said anything about it, and Alexander put a weapon in his hand instead of a comment.

*He does not take the truth passively.* Handed the actual explanation he'd been owed for weeks — pocket gates, the whole private mechanism — he didn't flinch, didn't ask for more than he'd been given, and didn't simply accept whatever Alexander proposed doing with it either. He set a term of his own inside someone else's secret: a number he could defend, not the whole truth laundered wholesale. *That's the last one I do on instinct.* It is the first time in the relationship he has drawn a line rather than declined to ask one.

*Composure holds under real stakes now, and buckles somewhere new instead.* No red-from-the-collarbone moment in the Gate itself — the dry humor and the reflexive teasing simply weren't present, replaced by the same clinical focus he brings to a wound. It came back on the walk out, all at once, in the shape of *first weapon that's actually mine* said quietly enough that Alexander had to lean in to hear it.

**Added 2026-08-03 evening (`EVT-000122`–`EVT-000123`) — the register when the disclosure isn't about the secret at all.** Every previous impossible thing Owen has absorbed and set aside without comment. This one he didn't set aside — he went quiet in the different way, the one that isn't a joke arriving late but a joke simply not existing for this, and answered a dead parent's death by naming the street back once, softly, and pulling Alexander inside by the jacket rather than asking a single follow-up question. He amended his own 'stay as long as you want tonight' mid-sentence into no limit at all, catching his own qualifier the way Alexander catches his.

*Being fed is a bigger deal to him than being told he's loved would be.* Put to work setting the table 'decorative and handsome,' he took the joke and ran with it — an exaggerated bow, an offer to be 'purely decorative' — but the actual meal landed somewhere else entirely: *nobody's cooked for me after a clear in five years.* He said it plainly, no joke arriving after, then immediately proposed making it a standing thing rather than sit with how much he meant it.

*He indulges the ridiculous version of a real question.* Told the plan is Gates as dates, he built out the bit himself — the picnic table, the courses, the butter knife against an alpha — entirely delighted rather than performing tolerance, and only underneath it said the true thing: *I'd do it. Not the picnic table. But whatever the real version of that is — yeah.* He tests seriousness by first seeing if it survives being made fun of.

*He catches Alexander self-correcting now, and enjoys it more than the correction itself.* Watching Alexander start to say he needed to find a key and then stop, working back through his own memory in real time, Owen's read wasn't relief that a key existed — it was delight at watching him catch himself: *so it's not soon, it's whenever you want, and you almost talked yourself out of admitting that.*

**Added 2026-08-04 morning (`EVT-000136`) — a nickname arrives, and a debt gets named out loud for the first time.** 'Owwiiiie,' delivered with total gravity over two good-morning kisses, got the exact treatment 'mage' gets — flat refusal, immediate repetition to test how bad it actually is, no real objection underneath. New this morning: Alexander naming discomfort about something *he* did, unprompted, rather than Owen naming a boundary and Alexander accepting it. Owen's answer wasn't reassurance-as-deflection — he took the actual distinction seriously (trusted with a choice, not used) and gave it back cleanly rather than making a joke of it, which is new for a conversation this close to the wound it's about. The 'one km per complaint' rule is now an established bit: Owen will fight it every morning it's invoked and lose every time, the same shape as the pillow fights and the jurisdiction argument.

**Added 2026-08-05 morning (`EVT-000147`) — the word itself, finally, and neither of them planned it.** Over breakfast, mid-tease, Owen said Alexander was insufferable about cardio *and that he loved him anyway* — buried in the joke the way his true things always arrive, not built up to, not rehearsed. Alexander froze completely, visibly processing, for long enough that Owen noticed and asked if he was going to say something. He didn't answer with words: he crossed the diner floor mid-conversation and kissed him on Sheridan Road, saying it back plainly — *I love you too* — twice, laughing between them, entirely unbothered by the sidewalk audience. **This is the first time either of them has used the word, in any register, in the roughly two weeks this has been a relationship.** Owen confirmed it once more before they sat back down, dry as ever: 'I love you too, by the way. Since apparently we're just saying it constantly now.'\n\n**Added 2026-08-05 evening (`EVT-000170`) — the word 'marry' enters the record, unplanned, and neither of them retracts it.** Over dinner at his own kitchen table, half-hiding behind the moment ('seemed like the moment' — take-in, beer, a question about bacon), Owen said 'Marry me.' Called on it directly, he didn't fully walk it back: 'Here. Now... I reserve the right to bring it up again when I'm not running on four hours of sleep, though — figure it deserves better than my kitchen table.' Alexander's unhedged 'Yes. Eventually. Du'h' visibly landed somewhere the joke framing hadn't prepared him for — he went still, set down what he was holding, and answered honestly rather than covering: 'Okay. Yeah. Eventually,' testing the word, then, quieter, dropping the performance entirely: 'I wasn't actually — I mean I *was*, but I didn't think you'd—', cut off by the door buzzer before finishing the sentence. Neither has raised it again since; both know it's sitting there. 'I love you' repeated once more over the same meal, without any of the morning's nerves. Fell asleep on the couch afterward, missing Alexander's quiet text releasing the held Lakefront booking to Kesha Morrison rather than waking him to ask first — woke just enough to be walked to bed.\n\n**Added 2026-08-06, ~15:12-16:00 (`EVT-000186`) — the walk to Edgewater, and a Character First.** A kiss in his own stairwell before either of them had said a word about leaving, and Owen laughing into it rather than pulling back, catching himself with 'okay, now we can go' the way he catches himself every time Alexander does something he wasn't braced for. Walking hand in hand, told plainly that he was underestimating himself and had proven it that same afternoon, **Owen did not defuse it the way he defuses every serious moment three seconds after it lands** — no towel-auditing, no record-noting, no joke arriving late. He sat with it, restated the day's numbers back accurately from inside his own head rather than Alexander's, and said aloud that he didn't think anyone had ever believed in him quite that specifically before, and that he didn't know what to do with it but heard it anyway. This is new: every previous serious beat in this relationship has closed on a joke he supplies himself, on schedule, like clockwork. This one just sat there, unclosed, and he let it.\n\nHe also, for the first time, let a real professional insecurity run past the usual deflection — why he refuses a promotion he's been offered for a year, why he never opened his own clinic — and connected both, unprompted, back to the rocks: he doesn't trust himself as the last line alone, in a room with nobody behind him to catch what a pause costs. Named without being asked, and without the joke that usually follows a real thing landing.

**Added 2026-08-08, ~13:15 (`EVT-000208`) — the near-two-day silence, and Owen naming his own avoidance pattern as a Character First.** Owen went quiet after the walk to Edgewater — no text the promised evening, then a full day of nothing — not from doubt about the relationship but from sitting alone with Alexander's still-unanswered `OBJ-19` question (fighting under his own license) until one missed night became avoidance of the phone entirely. Alexander called after the D-Rank trial, worried and plain about it (*I can't do this, Owen*, clarified immediately as the silence rather than the relationship). Owen did not defend himself or deflect: he named the pattern outright — *the same four seconds, just stretched out over two days* — the exact fear he confessed at Nikitas about pausing when it matters, recognized here turning up in his own hands rather than at the rocks. Confirmed without hesitation that he wants to see Alexander, agreed to call the moment he's off shift, and closed the call still saying it — *I love you. Talk soon.* First time the rocks-fear has been named as something he is actively doing, in real time, rather than something that happened once years ago."
moved_by_events: "`EVT-000217` `EVT-000218` `EVT-000241` `EVT-000243` `EVT-000245` `EVT-000271` `EVT-000274` `EVT-000291` `EVT-000294` `EVT-000334` `EVT-000340` `EVT-000381` `EVT-000382` `EVT-000383` `EVT-000386` `EVT-000389` `EVT-000398` `EVT-000404` `EVT-000491` `EVT-000493` `EVT-000495` `EVT-000496` `EVT-000549` `EVT-000551` `EVT-000572` `EVT-000575` `EVT-000578` `EVT-000581` `EVT-000827` `EVT-000860` `EVT-000864` `EVT-000918` `EVT-000957` `EVT-000106` `EVT-000108` `EVT-000110` `EVT-000111` `EVT-000118` `EVT-000124` `EVT-000146`"
```

---

## Campaign-Local Figures — Sable & Kern (2026-07-31)

### ENT-000141 — Sable

Co-owner of Sable & Kern, a small two-partner harvest contractor posting its first job through the Windy City Hunters Coalition. Late thirties, weathered, brisk; runs the crew side of the business while Kern runs the numbers.

```yaml
id: ENT-000141
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000093
  game_date: "2026-07-31, Coalition case table and Halsted Depot"
  real_date: "2026-07-26T02:05:57+02:00"
type: Character
subtype: contractor co-owner
scope: local
lifecycle: active
aliases:
  - name: "Sable"
    quality: current
canonical_state:
  affiliation: "Sable & Kern — co-owner"
  home: "Chicago, USA"
  rank: "**Not authored — awakened status is not established.** Sable manages or brokers Gate work without any record of being awakened, and Section 9.4's support tier plus Preston Vaughn (`ENT-000108`, a guild chief executive who is explicitly not awakened) both show that a senior operator in this trade need not be. Assigning a Rank here would be inventing canon, so none is: no Rank, no pools, no Section 6.1.2 variance, and Section 13.6 does not reach a non-hunter. **Flagged for a ruling** rather than filled in."
  location: "Halsted Depot site, Chicago (ENT-000087); departed by car after the job"
  condition: "Healthy; not established as combat-active"
  capabilities: "Runs the crew and fieldwork side of Sable & Kern's harvest-hire operation; briefs and manages harvesters directly, works from a paper map rather than a tablet."
  appearance: "Late thirties, sun-weathered from real outdoor time, dark hair pulled back tight; ink-stained first knuckle. Sizes people up fast and briskly."
  portrait: "assets/portraits/Sable_ENT-000141.png"
  personality: "Brisk, no wasted motion, professionally direct. Doesn't do a long introduction before a job."
  want: "**Sable & Kern to become a contractor the Coalition posts to by default.** The Halsted Depot job was the operation's **first Coalition posting** — everything she does on a site is a firm auditioning, and telling Alexander she would likely call him again is her building a bench before she has work to put on it."
  fear: "**A job going wrong while the firm is still new enough to be defined by it.** A first-year operation does not have a track record to absorb an incident, which is why she confirms licences herself, calls the crew back on time, and tallies before anyone leaves."
  secret: "**How thin the operation's margin is.** She quotes the split confidently — ten percent off the top, remainder four ways even — and nothing in canon establishes that the firm is comfortable. **Known to:** Kern, necessarily. This is an inference from a first posting and a two-person firm, and must not harden into a stated financial fact."
  voice: "**Works from a paper map and points at it** rather than describing. Instructions in the imperative with no preamble; the introduction is the assignment. Praise arrives as being asked back, never as a sentence."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-07-27** (`EVT-000095`), the last span this record settles; it has not been advanced since.\n\n  - **Winning and running Coalition-posted harvest work** as the fieldwork half of the partnership.\n  - **She said she would likely call Alexander again**, and canon records no such call. That is an unspent intention of hers, not an obligation he is owed, and it advances on her clock rather than on his asking."
  situation: "Ran the Halsted Depot C-Rank harvest job (`EVT-000093`, `EVT-000095`), Sable & Kern's first Coalition posting. Confirmed Alexander's license, assigned the shared vein with Ruth, called the crew back at time, tallied the declared haul, and quoted the payout terms (10% off top, remaining four-way even split). Told Alexander she'd likely call him again."
```

### ENT-000142 — Kern

Co-owner of Sable & Kern; older than Sable, handles logistics, scale, and the numbers. Quiet, dryly practical.

```yaml
id: ENT-000142
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000093
  game_date: "2026-07-31, Coalition case table and Halsted Depot"
  real_date: "2026-07-26T02:05:57+02:00"
type: Character
subtype: contractor co-owner
scope: local
lifecycle: active
aliases:
  - name: "Kern"
    quality: current
canonical_state:
  affiliation: "Sable & Kern — co-owner"
  home: "Chicago, USA"
  location: "Halsted Depot site, Chicago (ENT-000087); departed after the job"
  condition: "Healthy; not established as combat-active"
  capabilities: "Handles logistics and the portable scale for declared hauls; opened and sealed the aperture from the gray box truck."
  appearance: "A decade or so older than Sable, glasses pushed up into thinning hair, works a battered calculator by hand."
  portrait: "assets/portraits/Kern_ENT-000142.png"
  personality: "Quiet, dryly practical — offered one piece of advice (bring water) and otherwise let Sable run the introductions."
  want: "**The numbers to come out even.** He handles logistics, the portable scale, and the aperture, which is every part of the job where a mistake is arithmetic rather than judgement. He let Sable run the introductions and then tallied every declared crystal himself."
  fear: "**Unauthored.** Canon establishes what he does and almost nothing about what he is protecting. Do not derive one from his quietness."
  secret: "**Unauthored.** One job, one line of dialogue, no concealment established."
  voice: "**One useful sentence, offered once** — *bring water* — and silence otherwise. Speaks to the task rather than to the room. Where Sable states terms, Kern produces the number."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-07-27** (`EVT-000095`), the last span this record settles; it has not been advanced since.\n\n  - **The logistics half of Sable & Kern**, on whatever the partnership's next posting is.\n  - **His stake in the firm's standing is the same as Sable's** and is not separately established. If the two are ever played apart, that gap is authored then rather than assumed now."
  situation: "Worked the second assigned vein alongside Denny during the Halsted Depot job (`EVT-000095`); tallied the crew's declared crystal count on his portable scale at wrap-up."
```

### ENT-000143 — Ruth

Experienced harvester on the Sable & Kern crew; more C-Rank vein experience than the rest of the crew combined per Kesha Morrison's referral. Tested Alexander's technique on the shared first vein and vouched for him afterward.

```yaml
id: ENT-000143
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000093
  game_date: "2026-07-31, Halsted Depot"
  real_date: "2026-07-26T02:05:57+02:00"
type: Character
subtype: harvester
scope: local
lifecycle: active
aliases:
  - name: "Ruth Kowalczyk"
    quality: current
  - name: "Ruth"
    quality: current
canonical_state:
  affiliation: "Sable & Kern — harvest hire"
  home: "Chicago, USA"
  rank: "**C-Rank** — stated in her own entry as a highly experienced C-Rank harvester; resolved by that Rank under Section 13.1."
  pool_variance: "**+5%** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). Her characterisation is endurance and read: she works a shifting heat vein rather than waiting for it to settle, which is a long-pool discipline."
  pools: "**Maximum Health 262, maximum Mana 131** — Section 6.1 table (250 / 125) × 1.05, floored. Section 5.2 tier costs: **Minor 13, Signature 32, Boss-tier 65**. Section 5.3 running-dry threshold **32**."
  signature_ability: "**Warm Hands.** Her mana reads heat and pressure through stone by touch, so she finds a live seam with a palm laid on rock rather than waiting for a rig to settle — which is exactly the shifting-resonance technique her entry already credits her with on Foundry-type ground. Descriptive; it decides method, never magnitude, and triggers none of Section 13.5's three effects."
  location: "Halsted Depot site, Chicago (ENT-000087); departed after the job"
  condition: "Healthy; not established as combat-active"
  capabilities: "Highly experienced C-Rank harvester, especially on heat-vein (Foundry-type) ground — reads a vein's own shifting resonance rather than waiting for it to settle, unlike cold-seam technique. Older than Alexander, unspecified further."
  appearance: "Older woman in worn coveralls, unhurried, watches her surroundings rather than her crewmates."
  portrait: "assets/portraits/Ruth_Kowalczyk_ENT-000143.png"
  want: "**The technique to survive her.** She reads a heat vein's own shifting resonance rather than waiting for it to settle, which is not how cold-seam work is done, and she taught it to Alexander on a shared vein by doing it next to him. Vouching for him to Sable afterwards — *that's not nothing, she doesn't hand it out* — was about whether he could take the method, not whether she liked him."
  fear: "**Unauthored.** Canon gives a great deal of what she values and nothing about what she is protecting."
  secret: "**Unauthored.** Her approval is sparing rather than concealed, and the record is explicit that a short nod is her version of a compliment. Do not convert reticence into a secret."
  voice: "**A short nod or an unremarked silence in place of praise.** Corrections delivered by demonstration rather than instruction. When she does speak on someone's behalf it is to a third party and in one sentence, which is why it carries."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-07-27** (`EVT-000095`), the last span this record settles; it has not been advanced since.\n\n  - **Working heat-vein ground for whoever is posting harvest work**, which is where her established expertise puts her.\n  - **Her vouch for Alexander stands with Sable** and has not been withdrawn or spent."
  personality: "Reserved, evaluative, sparing with approval — a short nod or an unremarked silence is her version of a compliment."
  situation: "Assigned the shared first vein alongside Alexander at the Halsted Depot job (`EVT-000095`); demonstrated heat-vein extraction technique, watched him adapt to it on one attempt (success), and told Sable afterward that she vouches for him — 'that's not nothing, she doesn't hand it out.'"
```

### ENT-000144 — Denny

Harvester on the Sable & Kern crew; younger, wiry, worked the second assigned vein alongside Kern. **Disambiguation: not `ENT-000179` Denny Osei**, a different harvest-element miner on the unrelated corporate-adjacent contractor's crew. The shared first name is coincidence, and both are live — prefer the full name in narration.

```yaml
id: ENT-000144
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000093
  game_date: "2026-07-31, Halsted Depot"
  real_date: "2026-07-26T02:05:57+02:00"
type: Character
subtype: harvester
scope: local
lifecycle: active
aliases:
  - name: "Denny Prosser"
    quality: current
  - name: "Denny"
    quality: current
canonical_state:
  affiliation: "Sable & Kern — harvest hire"
  home: "Chicago, USA"
  location: "Halsted Depot site, Chicago (ENT-000087); departed after the job"
  condition: "Healthy; not established as combat-active"
  capabilities: "Harvester, unspecified specialty; worked the second vein alongside Kern."
  appearance: "Younger, wiry build; handled a coil of rope restlessly before the job began."
  portrait: "assets/portraits/Denny_Prosser_ENT-000144.png"
  want: "**Unauthored.** He worked the second vein with Kern and the record states outright that **no further interaction with Alexander is established**. A nod at introductions and a distracted wave on parting is the whole of it. **Author this at the turn he is next played**."
  fear: "**Unauthored.** See above."
  secret: "**Unauthored.** See above."
  voice: "**Unestablished.** No dialogue is recorded. *Distracted, easygoing* describes how he was present, not how he speaks, and a Runtime should not extrapolate one from the other."
  agenda: "**Authored from role rather than from a want**, because none is established. `Advanced` through **2026-07-27** (`EVT-000095`); it has not been advanced since.\n\n  - **Working veins on Sable & Kern's harvest postings.**"
  personality: "Distracted, easygoing — gave Alexander a quick nod at introductions and a distracted wave on parting."
  situation: "Worked the Halsted Depot job's second vein with Kern (`EVT-000095`); no further interaction with Alexander established."
```

### ENT-000145 — Sable & Kern

A small, two-partner harvest-hire contractor, its first job posted through the Windy City Hunters Coalition board. Distinct from the corporate-adjacent contractor Ada Reyes and Dale work for (`ENT-000134`, `ENT-000135`, `REL-000064`).

```yaml
id: ENT-000145
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000093
  game_date: "2026-07-31, named at the Coalition desk"
  real_date: "2026-07-26T02:05:57+02:00"
type: Institution
subtype: harvest-hire contractor
scope: local
lifecycle: active
aliases:
  - name: "Sable & Kern"
    quality: current
canonical_state:
  location: "Halsted Depot site, near the old rail cut, Chicago (ENT-000087); exact address unestablished"
  function: "Small two-partner harvest-hire outfit, posting confirmed Gate jobs through the Windy City Hunters Coalition board and taking a 10% coordination cut off the declared pool, remainder split evenly among the working crew."
  standing: "First-time Coalition poster; no prior track record with Alexander before the Halsted Depot job (`EVT-000093`, `EVT-000095`). Sable indicated she would likely post again and call on him."
```

---

## Campaign Relationships (continued)

### REL-000067 — Alexander's harvest-hire standing with Sable & Kern

```yaml
id: REL-000067
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000095
  game_date: "2026-07-31, Coalition desk and Halsted Depot"
  real_date: "2026-07-26T02:05:57+02:00"
endpoints:
  - ENT-000125
  - ENT-000145
type: harvest-hire
qualities: "Lapsed. One C-Rank harvest job for Sable & Kern (Halsted Depot, 2026-07-31), with four crystals sold privately and undeclared. Sable said she would likely call on him again; nothing stands between them beyond per-job work."
qualities_as_of: EVT-000095
state: "One job completed: the Halsted Depot C-Rank harvest job (2026-07-31, `EVT-000093`, `EVT-000095`) — 6 crystals formally declared to the crew pool (10 mined solo, 4 sold privately and undeclared, unknown to Sable, Kern, Ruth, or Denny), ≈$9,000 even-fourth share pending 1–2 business days. Ruth vouched for Alexander to Sable afterward; Sable indicated she would likely post again and call on him. No standing contract beyond a per-job basis."
history: "Formed 2026-07-31 when Kesha Morrison referred Alexander to Sable & Kern's first-time Coalition posting after he asked about immediate same-day work."
```

### REL-000068 — Alexander's pending recruitment overture from Ironline Guild

```yaml
id: REL-000068
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000138
  game_date: "2026-08-04, late morning, Red Line Corridor"
  real_date: "2026-07-27"
endpoints:
  - ENT-000125
  - ENT-000146
type: cooperating-source
qualities: "No longer a recruitment overture. Alexander held Ironline's forged-roster violation, handed the report back, and turned Wade toward Brannigan's chair; Wade is now a BGM cooperating source with immunity on record while BGM runs a formal case against Ironline (`EVT-000836`). Since 2026-09-06, in his own words: *clean sheet starting now, ready to move when there's an actual opening* (`EVT-000853`)."
qualities_as_of: EVT-000853
state: |-
  **Resolved into leverage, then into a cooperating source.** The overture itself closed on 2026-08-15 (`EVT-000404`, `OBJ-23`): Alexander works with Ironline only as a contractor, with no salary and no card, and Wade is his point of contact and nominal supervisor of record. What made it more than an overture was the 2026-08-14 B-Rank trial, run with four combat-rated hunters against a legal floor of eight, and the forged roster report Wade disclosed unprompted (`EVT-000345`, `EVT-000384`). Both said out loud what the arrangement was: not a partnership, but a man holding a filed violation over Ironline who wants things Wade can supply, useful exactly as long as that stays true on both sides.

  **What it produced**: the trial's payout figures (`EVT-000371`), the Watcher Torso, the `OBJ-28` rejection pipeline, the artificer introduction (`ENT-000203`), and a properly filed B-Rank posting that Alexander ran off-manifest (`EVT-000537`, `OBJ-30`). What it became: Alexander gave the report back and asked Wade to aim at Brannigan's chair (`EVT-000583`). Wade now cooperates formally with BGM, which has opened a case against Ironline itself (`EVT-000836`; `ENT-000146`). The dated history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
history: "Formed 2026-08-04 when Wade Bishop approached Alexander unprompted at the Red Line Corridor, having heard favorable word from Ada Reyes and Dale Pruitt."
moved_by_events: "`EVT-000201` `EVT-000207` `EVT-000284` `EVT-000338` `EVT-000346`"
```

### REL-000069 — Alexander and Walt Adamik: silent partner, not fence

```yaml
id: REL-000069
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000447
  game_date: "2026-08-17, ~10:45, warehouse district"
  real_date: "2026-07-27"
endpoints:
  - ENT-000125
  - ENT-000147
type: business-partnership
qualities: "A funded partnership on stated terms (partners, no undercuts, no secrets): Alexander supplies capital and holds first refusal, Walt runs the floor (`OBJ-29`). Running and honestly accounted. It moved real volume once ($3,581,700 on 2026-09-06), and at the 18-day check Walt conceded the monopoly is a longer build and owned a first-refusal lapse (`EVT-001076`-`EVT-001077`). Both are exposed to felony risk together, and Nadia (`ENT-000207`) sits unspoken under it."
qualities_as_of: EVT-001077
state: |-
  **A funded partnership, running and honestly accounted (`OBJ-29`).** Made 2026-08-17 (`EVT-000446`-`EVT-000447`) out of a confrontation rather than a negotiation. Alexander gave a C-Rank Beast Core first, with no price attached. Walt disclosed why he wants high-Rank cores: Nadia (`ENT-000207`). He then handed over Sal Prykowski's name, three days late, and owned the delay as fear. Alexander told him the arrangement as it stood was not working and offered a stake instead of a favour.

  **The terms, unchanged since.** Walt goes bigger: outbid other grey-market dealers, build real capacity, and aim at a monopoly on mana-touched goods. Alexander funds it, takes a profit share and holds first refusal on anything interesting. Three conditions, stated as conditions: partners, no undercuts, no secrets. Walt runs the floor and asked for a structure that keeps both of them off a radar. Contact runs both ways and is obligatory rather than courteous, bad news included. $40,000 of starting capital was delivered with the Quickknife demonstration (`ENT-000147` `knowledge`).

  **Where it stands (2026-09-23, `EVT-001076`-`EVT-001077`).** The operation has storage, two vouched people and one dealer channel. It moved real volume once, $3,581,700 on 2026-09-06, after Alexander set a hard deadline following a silence (`EVT-000849`-`EVT-000850`). At the 18-day check Walt conceded that the monopoly is a longer build and owned a first-refusal lapse, and the two adopted the rune-pricing convention. The dated history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
history: "Formed 2026-08-04 when Alexander, window-shopping ahead of a 14:00 harvest job, entered the shop, asked about the locked case, and later tested the pawnbroker's willingness to buy unprovenanced goods. Deepened 2026-08-05 into an ongoing arrangement with an information trade and a pending artificer introduction (`EVT-000157`). **Became a funded business partnership 2026-08-17 (`EVT-000447`)**, after a confrontation over three days of a withheld contact name — the first time either of them has raised a grievance with the other rather than trading around it."
moved_by_events: "`EVT-000352` `EVT-000538` `EVT-000565`"
```

### ENT-000148 — Denise Ferro

Harvest-crew lead running a Coalition-posted C-Rank job at a warehouse-district rail-corridor site; brisk, professional, unbothered by a solo freelancer working his own marked-off section. Checked Alexander onto the manifest, briefed him on the site's four-hour window, and processed his declared count without comment beyond confirming it.

```yaml
id: ENT-000148
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000140
  game_date: "2026-08-04, afternoon, rail-corridor harvest site"
  real_date: "2026-07-27"
type: Character
subtype: harvest-crew lead
scope: local
lifecycle: active
aliases:
  - name: "Denise Ferro"
    quality: current
relationships:
  - REL-000070
canonical_state:
  affiliation: "Ferro's Reclamation — runs Coalition-posted harvest crews"
  home: "Chicago, USA"
  rank: "**Not authored — awakened status is not established.** Denise Ferro manages or brokers Gate work without any record of being awakened, and Section 9.4's support tier plus Preston Vaughn (`ENT-000108`, a guild chief executive who is explicitly not awakened) both show that a senior operator in this trade need not be. Assigning a Rank here would be inventing canon, so none is: no Rank, no pools, no Section 6.1.2 variance, and Section 13.6 does not reach a non-hunter. **Flagged for a ruling** rather than filled in."
  location: ENT-000087
  condition: "Healthy; hard hat and Coalition-branded harvest vest, clipboard and tablet manifest"
  want: "**Unauthored.** Canon establishes a role — she runs Coalition-posted harvest-labor crews, brisk and process-driven rather than personable — and nothing about what she is after. No personality field has ever been written for her. **Author this at the turn she is first played**, from her conduct in that scene, rather than deriving a motive from the job title now."
  fear: "**Unauthored.** See above."
  secret: "**Unauthored.** See above."
  voice: "**Unestablished by contact.** The only register canon supplies is *brisk and process-driven rather than personable*, which is a manner of running a crew and not a way of speaking. A Runtime should not extrapolate one; if she is met, what she sounds like is authored by that scene."
  agenda: "**Authored from role rather than from a want**, because no want is established and Section 7.9 bounds an agenda by the holder's own standing and reach. `Advanced` through the last span this record settles; it has not been advanced since.\n\n  - **Running Coalition-posted harvest-labor crews**, which is the entirety of what canon gives her to be doing."
  capabilities: "Runs Coalition-posted harvest-labor crews; brisk and process-driven rather than personable. Not established as a combatant."
  appearance: "Fifties, white, short and square-built, with the flat-footed stance of someone who runs a staging line standing up all day. Iron-grey hair cut bluntly at the ear; reading glasses she pushes up and forgets about; a brisk, unsmiling face that is not unfriendly so much as fully occupied. A clipboard she still prefers to a tablet, and a hi-vis vest worn over ordinary clothes. Says a hire's name once, at intake, and does not say it again unless there is a problem."
  portrait: "assets/portraits/Denise_Ferro_ENT-000148.png"
situation: "Ran the 2026-08-04 C-Rank harvest posting near the old rail corridor — two other freelancers plus Alexander, each with an individually marked section, standard 80/20 split (her cut off the top). Checked Alexander's twenty declared crystals against her own tally without discrepancy and closed the manifest on schedule at 18:00. Later named him 'near the top of her list for future work needing a hitter who doesn't need his hand held' (`OBJ-20`).

  **Texted 2026-08-12 evening (`EVT-000312`).** Answered honestly rather than encouragingly: nothing available, her crew's mid-contract for two more weeks. Confirmed Alexander stays on her list regardless."
```

### REL-000070 — Alexander's harvest-hire standing with Denise Ferro's crew

```yaml
id: REL-000070
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000140
  game_date: "2026-08-04, afternoon, rail-corridor harvest site"
  real_date: "2026-07-27"
endpoints:
  - ENT-000125
  - ENT-000148
type: harvest-hire
qualities: "Lapsed but warm. One C-Rank harvest job (2026-08-04); Denise put him at the top of her list and promised to call him herself when work came in (`EVT-000257`, `EVT-000283`). No job has come since."
qualities_as_of: EVT-000283
state: "One completed C-Rank job (2026-08-04): twenty C-Rank crystals declared from Alexander's own marked section, standard 80/20 split, ≈$40,000 net pending Coalition processing (still processing as of 2026-08-05, under 24 hours old). No standing arrangement for future postings. **2026-08-05 follow-up (`EVT-000148`):** Alexander texted asking to be kept in mind for further work; Denise replied briskly that nothing is confirmed yet but two leads might firm up this week, and she'd ping him first if either does. **2026-08-05 in person (`EVT-000167`):** met by chance at the Coalition; her crew is between jobs, chasing paperwork on the last one, nothing to offer today, but she named him near the top of the list for a future job needing 'a hitter who doesn't need his hand held.' **2026-08-10, text follow-up (`EVT-000257`):** nothing on her board today, same as the others he checked, but her reply escalated past the earlier brisk warmth — *'You're still top of my list when something comes in. I'll call you myself, don't wait on a posting.'* The closest thing to an explicit standing promise she has made him yet. **2026-08-11, text follow-up (`EVT-000283`):** still nothing to report — *'still sorting the next one out, promise I haven't forgotten you'* — the same standing promise reaffirmed, no new information."
history: "Formed 2026-08-04 when Kesha Morrison booked Alexander onto Denise Ferro's Coalition-posted C-Rank harvest job near the old rail corridor."
```

---

## Referenced World-Layer Institutions

| Institution | Record | Relevance to Alexander |
|---|---|---|
| Windy City Hunters Coalition | `ENT-000102` (`worlds/gatefall/institutions/windy-city-coalition/250_INSTITUTION_LEDGER.md`), `REL-000062` | His registered freelancer affiliation; coordinated his placement on Tanya's crew. |
| BGM Region V | `ENT-000099` (`worlds/gatefall/institutions/bgm-region-v/250_INSTITUTION_LEDGER.md`) | His licensing authority; issued his E-Rank card, and filed his signed crew contract. |
| Horizon Guild, Ironline Guild | `ENT-000100`, `ENT-000101` | Chicago's two major guilds; neither has expressed interest in fielding him. Horizon also operates the outfitter (`ENT-000133`) named to him. |

---

## Campaign-Local Figures — Nikitas (2026-08-06)

### ENT-000169 — Voula Stamatis

```yaml
id: ENT-000169
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000177
  game_date: "2026-08-06 ~11:50 -05:00"
  real_date: "2026-07-28"
type: Character
scope: campaign
lifecycle: active
aliases:
  - name: "Voula Stamatis"
    quality: current
  - name: "Voula"
    quality: current
relationships: []
canonical_state:
  affiliation: "Unaffiliated — civilian, runs a Greek diner"
  home: "Chicago, USA (Sheridan Road)"
  location: ENT-000087
  condition: "Healthy; working the counter at Nikitas (`ENT-000170`), Rogers Park"
  capabilities: "Unawakened civilian. Runs a Greek diner on Sheridan Road four blocks from the Loyola Park lakefront, and has for at least twelve years. Reads people fast and does not soften the reading."
  appearance: "Sixties, Greek, shorter than she carries herself as. Hair up, pencil behind the ear, apron. Wipes her hands on it before she touches anyone, and touches people readily — took Owen by both forearms on sight and held him at arm's length to check him over."
  portrait: "assets/portraits/Voula_Stamatis_ENT-000169.png"
  want: "**People fed, on her terms.** She orders their food, clears their table, refuses their money, and hands a box of ketchup bottles to a customer mid-stride. Twelve years of a Greek diner on Sheridan Road is not a business she is running so much as a jurisdiction, and feeding someone is how she exercises it."
  fear: "**Unauthored.** Nothing in canon establishes what she is protecting. Her bluntness is unembarrassed rather than defensive, and a fear should not be derived from it."
  secret: "**Unauthored.** She is the least concealed actor in the campaign — she says the reading out loud as she takes it."
  voice: "**Decides for people rather than asking them.** Blunt, unembarrassed by feeling, entirely unhurried by anyone else's discomfort. **Registers a closed door without pushing on it** — she asked Alexander to introduce himself, got only a first name, noticed, and let it go without comment. Reads people fast and does not soften the reading."
  agenda: "**Active; advances on the clock.** `Advanced` through the last span this record settles; it has not been advanced since.\n\n  - **Running the counter at Nikitas** (`ENT-000170`), Rogers Park, as she has for at least twelve years.\n  - **She noticed the closed door and let it go**, which is a standing posture rather than a plan. If Alexander returns she will not have forgotten it and will not raise it."
  personality: "Direct to the point of bluntness and entirely unembarrassed by feeling. Decides for people rather than asking them: orders their food, clears their table, refuses their money, hands a box of ketchup bottles to a customer mid-stride without breaking step. Registers a closed door without pushing on it — asked Alexander to introduce himself, got only a first name, noticed, and let it go."
  standing_toward_alexander: "Neutral-warm by association with Owen. Knows only his first name; he volunteered nothing else and she did not ask twice. Refused his money."
  known_associates: "**Kostas** — works the kitchen with her; wants the corner booth taken out for more covers and has been overruled indefinitely. **Andreas** — her sister's boy, died 2026 or thereabouts, memorialised on a sun-bleached laminated notice taped inside the front door which she has not taken down and does not intend to. She volunteered that it was *not the lake*, specifically and unprompted, because she could see Owen doing arithmetic about it on the pavement."
  history_with_owen: "Fed the Loyola Park lifeguard staff across the three summers Owen worked the beach, on an off-menu plate for four dollars, and stopped charging some of them entirely while lying about it. Recognised him instantly on the door bell after nine years, named him without hesitation, and corrected his 'nine years' to twelve — nine is when the *last* of the guards stopped coming, which is not the same date as when Owen did. She has kept the corner booth by the kitchen — the guard table — permanently unseated ever since, storing newspapers and ketchup on it, and cleared it for him in front of the whole room."
```

### ENT-000170 — Nikitas

```yaml
id: ENT-000170
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000177
  game_date: "2026-08-06 ~11:50 -05:00"
  real_date: "2026-07-28"
type: Place
scope: campaign
lifecycle: active
aliases:
  - name: "Nikitas"
    quality: current
relationships: []
canonical_state:
  location: ENT-000087
  condition: "Open and trading"
  description: "A narrow Greek diner mid-block on Sheridan Road in Rogers Park, four blocks north of the Loyola Park lakefront, wedged between a currency exchange and a shuttered storefront. Dull chrome trim, eight vinyl booths, a counter with six stools, a slow ceiling fan. No website. The sign over the door reads `NIK TAS` — the eta burnt out long before Owen worked the beach and never replaced. Run by Voula (`ENT-000169`) with Kostas on the griddle; a radio in the back plays Greek."
  significance: "The lifeguard staff's canteen across Owen Callahan's three summers on the beach, and the reason he has not walked through that door in nine years despite living four blocks away. The corner booth beside the kitchen door — furthest from the cold, close enough for Voula to hear them — is the guard table, and nobody sits there."
  known_to: "Owen Callahan (`ENT-000139`), intimately and historically. Alexander Pendragon (`ENT-000125`) as of 2026-08-06. Kesha Morrison named neither this place nor Voula to Alexander at any point."
```

### ENT-000172 — Curtis Marsh

An employee of Titan Secure (`ENT-000171`), reached by phone during Alexander's guard-job pretext call, 2026-08-06 (`EVT-000188`). Ordinary, brisk, and entirely uninterested beyond correcting the mismatched pretext and politely declining to name a client.

```yaml
id: ENT-000172
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000188
  game_date: "2026-08-06 ~16:45 -05:00"
  real_date: "2026-07-29"
type: Character
subtype: security-company employee
scope: local
lifecycle: active
aliases:
  - name: "Reyes"
    quality: false-claim
  - name: "Curtis Marsh"
    quality: current
  - name: "Marsh"
    quality: current
canonical_state:
  affiliation: "Titan Secure — employee"
  home: "Chicago, USA"
  location: "Chicago's warehouse district (`worlds/gatefall/`, `ENT-000087`); reached by phone only, exact location unestablished"
  condition: "Healthy; voice only, never met in person"
  capabilities: "Ordinary employee of Titan Secure, handles phone inquiries. Not established as combat-active or otherwise notable."
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late twenties, Black, average height and slightly soft around the middle, a desk worker in a security company. Short neat hair with a low fade; calm brown eyes behind rectangular black glasses; a headset pushed down around his neck. A navy Titan Secure polo with the company logo on the chest. Expression bored-professional, polite and unbothered. Reference setting: a Titan Secure call-centre cubicle in Chicago, monitors and grey partition walls blurred behind him, flat office light."
  portrait: "assets/portraits/Curtis_Marsh_ENT-000172.png"
  personality: "Bored-professional, helpful within limits, genuinely unbothered by a stranger's confused pretext. Holds a clean line on client confidentiality without needing to be pressed twice."
  want: "**To finish the call.** He is an ordinary employee handling phone inquiries, and everything canon records him doing is the efficient disposal of one: correcting the caller's premise, volunteering the harmless general answer, refusing the specific one, and hanging up first."
  fear: "**Unauthored.** Nothing establishes what he is protecting beyond the client line, which he holds as policy rather than as stake."
  secret: "**Unauthored.** He declined to name the client at the fenced warehouse — that is a confidentiality line held openly, not something concealed, and the two must not be conflated."
  voice: "**Corrects the premise before answering the question.** Volunteers the general and refuses the specific in the same breath, without irritation and without being pressed twice. **Ends the call first.**"
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-06** (`EVT-000188`), the last span this record settles; it has not been advanced since.\n\n  - **Answering Titan Secure's phone.** That is the whole of what canon gives him.\n  - **A second call from Alexander on the same pretext would not land the same way**, and that is a consequence of the first call rather than a plan of his."
  situation: "Answered Alexander's call under his guard-job pretext (`EVT-000188`); corrected him that Titan Secure does access control, not staffing, volunteered the company's general client base (commercial, warehouses, car lots), and declined outright to name which client sits at the fenced warehouse (`ENT-000166`). Ended the call first. A second call from Alexander on any pretext is now materially harder."
```

### ENT-000173 — Reggie Calloway

Point man on Wade Bishop's borrowed four-hunter D-Rank trial crew, 2026-08-08. Named in play.

```yaml
id: ENT-000173
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000201
  game_date: "2026-08-08 ~09:10 -05:00"
  real_date: "2026-07-29"
type: Character
subtype: D-Rank hunter, point element
scope: local
lifecycle: active
aliases:
  - name: "Reggie Sutton"
    quality: current
  - name: "Reggie Calloway"
    quality: former
canonical_state:
  affiliation: "Ironline Guild — trial crew"
  home: "Chicago, USA"
  rank: "**D-Rank** — licensed D-Rank hunter on Ironlines 2026-08-08 trial crew; resolved by that Rank under Section 13.1."
  pool_variance: "**+5%** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). Point element — he reads and takes doors first, which makes him the man who absorbs first contact for the crew."
  pools: "**Maximum Health 105, maximum Mana 52** — Section 6.1 table (100 / 50) × 1.05, floored. Section 5.2 tier costs: **Minor 5, Signature 13, Boss-tier 26**. Section 5.3 running-dry threshold **13**."
  signature_ability: "**Threshold.** For the moment he crosses an opening, his mana reads what is on the other side of it. It is why he takes doors first, why the crew lets him, and why he is dry about it. Reach and method only; his strikes remain D-Rank standard hits and no Section 13.5 effect attaches."
  location: "4110 W Fullerton, Chicago — the confirmed D-Rank Gate site (`worlds/gatefall/`); left the Gate at trial's close"
  condition: "Favoring a bruised shoulder taken crossing the elites' chokepoint; upright, no injury tier, untreated"
  capabilities: "D-Rank licensed hunter, point-element specialist — reads and takes doors first. Dry, understated manner under pressure."
  appearance: "Late thirties, Black, tall and long-limbed with a spare, economical build — no more muscle on him than the job requires and none of it for show. Close-shaved head, a short beard going patchy grey at the chin, heavy-lidded eyes that make him look bored right up until they don't. Serviceable D-Rank kit, scuffed hardest across the left shoulder and forearm where a man who goes through doorways first would wear it. Stands slightly angled to whatever door is nearest, out of habit rather than intent."
  portrait: "assets/portraits/Reggie_Sutton_ENT-000173.png"
  want: "**To take doors first and have it mean something.** He is a point-element specialist, which is the slot that eats the ambush when nobody has called a lead — and on the trial that is exactly what happened to him. He was not resentful about it afterwards; he was grateful, which is the tell about what he actually wants from a crew."
  fear: "**Walking into another one unwarned.** Not the door itself; the silence behind it. He ate the first cluster's ambush because no lead had been called, and he was pulled off it by someone else's read rather than by his own crew's."
  secret: "**Unauthored.** He names his own bad habit out loud and corrects it unprompted, which is the opposite of concealment."
  voice: "**Dry deflection the instant the adrenaline spikes** — a joke arriving before he has finished being rescued — followed by catching himself and correcting it without being asked twice. Direct otherwise, and self-aware about the pattern in a way that is neither performed nor apologetic."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-08**, the last span this record settles; it has not been advanced since.\n\n  - **Working point on whatever roster will have him**, which for now is Wade Bishop's.\n  - **He owes Alexander an unrepaid one** — pulled off an ambush by a read that was not his crew's. Canon records no standing relationship formed, so this is a debt he holds rather than an arrangement between them."
  personality: "Direct, self-aware about his own bad habits (dry deflection under adrenaline); genuinely grateful rather than proud once corrected on it."
  situation: "Assigned point by Wade for the trial. Ate the first cluster's ambush unwarned — no lead had been called — and was pulled off it by Alexander's Exploit-Pattern-read Twin Fang kill before the creature could do worse. Snapped dry immediately after being freed; caught and corrected himself unprompted once Alexander called it out, thanking him plainly. Confirmed to Alexander, honestly, that Ironline crews normally have an assigned lead before entry and that this trial's lack of one was Wade's deliberate omission, not standard practice. Contributed to the declared loot pool from the ten kills (11 crystals, 3 cores, split under the standard leader's-cut convention once filed). No standing relationship formed; Alexander does not intend further contact."
```

### ENT-000174 — Bhavna Iyer

Support gunner and sensor operator on Wade Bishop's borrowed D-Rank trial crew, 2026-08-08. Named in play.

```yaml
id: ENT-000174
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000201
  game_date: "2026-08-08 ~09:10 -05:00"
  real_date: "2026-07-29"
type: Character
subtype: D-Rank hunter, ranged/sensor element
scope: local
lifecycle: active
aliases:
  - name: "Bhavna Iyer"
    quality: current
canonical_state:
  affiliation: "Ironline Guild — trial crew"
  home: "Chicago, USA"
  rank: "**D-Rank** — licensed D-Rank hunter on Ironlines 2026-08-08 trial crew; resolved by that Rank under Section 13.1."
  pool_variance: "**None** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). Ranged support and sensor-rig operator; nothing in her record pulls her off the median in either direction."
  pools: "**Maximum Health 100, maximum Mana 50** — Section 6.1 table (100 / 50), flat. Section 5.2 tier costs: **Minor 5, Signature 12, Boss-tier 25**. Section 5.3 running-dry threshold **12**."
  signature_ability: "**Tally.** Her mana counts living things in a space rather than placing them — a number before a direction. It is the gift behind the population read she delivered at Gate entry on the 2026-08-08 trial (twelve commons, two elites, a boss), which matched Alexander's independent Keen Sense confirmation exactly. Descriptive; no magnitude, no Section 13.5 effect."
  location: "4110 W Fullerton, Chicago — the confirmed D-Rank Gate site (`worlds/gatefall/`); left the Gate at trial's close"
  condition: "Untouched, no injury"
  capabilities: "D-Rank licensed hunter, ranged support and sensor-rig operator — first population read at Gate entry (twelve commons, two elites, boss, matching Alexander's independent Keen Sense confirmation)."
  appearance: "Thirties, South Asian (the Iyer name), of average height and neatly, unremarkably built. Black hair cut to the jaw and clipped back off her face; steady dark eyes; an even, professional expression that does not shift much whether she is being thanked or contradicted. Carries a shoulder-mounted sensor rig she treats as expensive equipment rather than as a prop, and keeps a hand near it. The tidiest-looking member of a borrowed crew, in a way that reads as competence rather than fussiness."
  portrait: "assets/portraits/Bhavna_Iyer_ENT-000174.png"
  want: "**A line to shoot down.** She gave the opening population read and then never fired a shot in the entire trial — columns denied her an angle at the first cluster, and the boss died to an ambush before she had one either time. She is a ranged specialist who spent a whole Gate not being able to do the thing she is for."
  fear: "**Being blamed for the angle she was not given.** It already happened once: Alexander criticised her for not firing and she pushed back directly rather than absorbing it. What she is defending is the distinction between not shooting and not being able to."
  secret: "**Unauthored.** She holds her ground openly when criticised, which is the opposite of an actor with something to protect."
  voice: "**Reports the read as a count** — twelve commons, two elites, a boss — and lets it stand without embellishment. **Holds her ground plainly when criticised rather than deferring**, and does it without heat: states the constraint, does not apologise, does not escalate."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-08**, the last span this record settles; it has not been advanced since.\n\n  - **Working ranged support and the sensor rig** on whatever roster she is on.\n  - **The correction she made to Alexander stands unretracted.** Canon records no standing relationship formed and no apology given; that exchange is where the two of them are."
  personality: "Professional, unbothered by pressure, holds her ground plainly when criticized rather than deferring."
  situation: "Provided the opening sensor read and covered from range throughout, though columns denied her a clean line at the first cluster and she never fired a shot in the whole trial — the boss died to Alexander's ambush before she had an angle either time. Pushed back directly when Alexander criticized her for not firing sooner, correctly noting she'd had no clean shot through structural cover without risking her own crew. Contributed to the declared loot pool. No standing relationship formed; Alexander does not intend further contact."
```

### ENT-000175 — Foster Nakashima

Perimeter/overwatch element on Wade Bishop's borrowed D-Rank trial crew, 2026-08-08. Named in play.

```yaml
id: ENT-000175
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000201
  game_date: "2026-08-08 ~09:10 -05:00"
  real_date: "2026-07-29"
type: Character
subtype: D-Rank hunter, overwatch/perimeter element
scope: local
lifecycle: active
aliases:
  - name: "Foster Nakashima"
    quality: current
canonical_state:
  affiliation: "Ironline Guild — trial crew"
  home: "Chicago, USA"
  rank: "**D-Rank** — licensed D-Rank hunter on Ironlines 2026-08-08 trial crew; resolved by that Rank under Section 13.1."
  pool_variance: "**−5%** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). Perimeter and rear-guard, with a faded self-stitched BGM sensor-training patch — the least front-line of the four, and the one whose role has never asked for depth."
  pools: "**Maximum Health 95, maximum Mana 47** — Section 6.1 table (100 / 50) × 0.95, floored. Section 5.2 tier costs: **Minor 4, Signature 11, Boss-tier 23**. Section 5.3 running-dry threshold **11**."
  signature_ability: "**Backstop.** His mana fixes a line behind the crew and tells him the instant anything crosses it — a perimeter **sense**, not a barrier. **This deliberately does not trigger Section 13.5's warden effect:** that effect attaches to a signature that raises a held barrier or physically holds a line, and his does neither. He knows what came through; he does not stop it. The faded, self-stitched BGM sensor-training patch on his sleeve is the same story told in cloth."
  location: "4110 W Fullerton, Chicago — the confirmed D-Rank Gate site (`worlds/gatefall/`); left the Gate at trial's close"
  condition: "Untouched, no injury"
  capabilities: "D-Rank licensed hunter, perimeter awareness and rear-guard — a faded BGM sensor-training patch on his sleeve, self-stitched."
  appearance: "Forties, Japanese-American, of middling height and solidly built, with the settled heaviness of a man who has stopped growing into the job and simply does it. Greying black hair worn a little shaggy, a wide flat face, dark eyes that keep moving over the edges of a space rather than its middle. Older D-Rank kit, well past fashionable and immaculately kept, with a faded BGM sensor-training patch stitched back onto the sleeve by hand — the stitching visibly his own, and visibly redone more than once. Habitually stands where he can see the way everyone came in."
  portrait: "assets/portraits/Foster_Nakashima_ENT-000175.png"
  want: "**Nothing to come from behind.** He held the six for an entire trial without incident, which reads as an uneventful post and is the outcome he was working for. He also drew an elite off its post with deliberate noise so it could be isolated and killed alone — the rear guard choosing to make something happen exactly once, on his own judgement."
  fear: "**Unauthored.** Canon establishes him as the crew's steadiest presence under chaos and nothing about what would unsteady him."
  secret: "**Unauthored.** A faded BGM sensor-training patch on his sleeve, self-stitched, is the only thing his record carries about a past — and it is a detail, not an established concealment. **Author what it means at the turn it matters**, rather than deciding now."
  voice: "**Says little and holds position.** What he contributes to a fight is usually a decision nobody heard him make. When he does act unprompted it is a single deliberate noise in the right place rather than a call."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-08**, the last span this record settles; it has not been advanced since.\n\n  - **Holding perimeter and rear-guard** on whatever roster he is on.\n  - **No standing relationship formed with Alexander**, and canon records no intention on either side to form one."
  personality: "Quiet, watchful, says little; the crew's steadiest presence under the chaos of the first ambush."
  situation: "Held the six the entire trial without incident; nothing ever came from behind. Drew one elite off its post with deliberate noise during the compressed second-cluster clear, letting it be isolated and killed apart from its partner. Contributed to the declared loot pool. No standing relationship formed; Alexander does not intend further contact."
```

### ENT-000176 — Callie Dunmore

Floater/flex striker on Wade Bishop's borrowed D-Rank trial crew, 2026-08-08. Named in play.

```yaml
id: ENT-000176
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000201
  game_date: "2026-08-08 ~09:10 -05:00"
  real_date: "2026-07-29"
type: Character
subtype: D-Rank hunter, flex striker
scope: local
lifecycle: active
aliases:
  - name: "Callie Dunmore"
    quality: current
canonical_state:
  affiliation: "Ironline Guild — trial crew"
  home: "Chicago, USA"
  rank: "**D-Rank** — licensed D-Rank hunter on Ironlines 2026-08-08 trial crew; resolved by that Rank under Section 13.1."
  pool_variance: "**None** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). Flex striker who goes wherever the fight opens; a median pool is what lets her be everywhere rather than decisive anywhere."
  pools: "**Maximum Health 100, maximum Mana 50** — Section 6.1 table (100 / 50), flat. Section 5.2 tier costs: **Minor 5, Signature 12, Boss-tier 25**. Section 5.3 running-dry threshold **12**."
  signature_ability: "**Slip.** A short mana-driven acceleration into a gap that has just opened, which is why she is never quite where she was. It is the whole of her flex-striker habit of going wherever the fight opens rather than holding a post. Positioning only — her strikes land as D-Rank standard hits and no Section 13.5 effect attaches."
  location: "4110 W Fullerton, Chicago — the confirmed D-Rank Gate site (`worlds/gatefall/`); left the Gate at trial's close"
  condition: "A shallow forearm gash, self-treated/ignored, no injury tier"
  capabilities: "D-Rank licensed hunter, flex striker — goes wherever the fight opens rather than holding a fixed post."
  appearance: "Mid-twenties and reading younger, white, small and quick and never entirely still — up on the balls of her feet more often than not. Reddish-brown hair cut short and messily, freckles across the nose, wide pale eyes that go straight to whoever in a room has the most reputation. Mismatched D-Rank kit, some of it obviously secondhand, worn with more enthusiasm than system. The newest-looking hunter on any crew she is on, and the first to say so."
  portrait: "assets/portraits/Callie_Dunmore_ENT-000176.png"
  want: "**To be where the fight opens.** She is a flex striker by choice rather than assignment — she goes wherever it breaks instead of holding a post. She closed on the ambushed Reggie fastest of anyone on the crew and arrived after it was already resolved, which is the shape of her: first to move, not yet first to matter."
  fear: "**Arriving after it is over again.** She has not said this and may not have named it. It is what being fastest and still late does to someone who is openly impressed by other people's reputations."
  secret: "**Unauthored.** She is the most transparently readable member of the borrowed crew; nothing establishes anything held back."
  voice: "**Openly impressed and unembarrassed about it** — reputation gets acknowledged out loud rather than played cool. Restless in the gaps, eager at the start of things. The youngest-reading person in any room she is recorded in, without that being about her actual age."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-08**, the last span this record settles; it has not been advanced since.\n\n  - **Taking flex-striker slots on borrowed rosters**, going wherever a fight opens.\n  - **No standing relationship formed with Alexander**, and canon records that he does not intend further contact. That is his position, not hers, and she is not established as knowing it."
  personality: "Restless, eager, openly impressed by reputation; the youngest-reading member of the borrowed crew."
  situation: "Closed on the ambushed Reggie fastest of the crew but arrived after Alexander had already resolved it. Backed Reggie on the left-side beast during the first cluster's clear without landing the finishing blow. Contributed to the declared loot pool. No standing relationship formed; Alexander does not intend further contact."
```

**Correction, recorded for provenance:** this NPC was first narrated under the name "Reyes" before the Runtime caught the collision with the already-established `ENT-000134` Ada Reyes. No canon was written under the wrong name; the alias above records the false start for the transcript's sake only.

### ENT-000177 — Elias Ward

Seller at an unnamed surplus/pawn shop in Chicago's warehouse district. The shop remains incidental and has not been promoted to its own persistent place object.

```yaml
id: ENT-000177
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000216
  game_date: "2026-08-08 ~16:00 -05:00"
  real_date: "2026-07-30"
type: Character
subtype: surplus and pawn seller
scope: local
lifecycle: active
aliases:
  - name: "Elias Ward"
    quality: current
canonical_state:
  affiliation: "Independent — surplus and pawn seller"
  home: "Chicago, USA (warehouse district)"
  location: "an unnamed surplus/pawn shop in Chicago's warehouse district"
  condition: "No injury or impairment established."
  want: "**Unauthored.** Canon records two transactions and a standing informal offer, and states outright that his motives remain unestablished. **Author this at the turn he is next played**, from that scene, rather than inferring a motive from having sold a device."
  fear: "**Unauthored.** See above."
  secret: "**Unauthored.** The Gate Direction Finder's origin is explicitly unestablished — that is a gap in canon about the object, not a thing he is established as hiding, and the two must not be conflated into a secret he holds."
  voice: "**Unestablished by contact.** No personality field has ever been written for him and no dialogue of his is recorded in a form that fixes a register. If he is met again, what he sounds like is authored by that scene rather than before it."
  agenda: "**Authored from conduct rather than from a want**, because none is established. `Advanced` through **2026-08-11**, the last span this record settles; it has not been advanced since.\n\n  - **Selling miscellaneous awakened-adjacent surplus**, which is the whole of his established trade.\n  - **The standing informal offer he made at the original sale remains open**, and it is his position rather than an obligation owed to him."
  capabilities: "Seller of miscellaneous awakened-adjacent equipment; no Rank, faction, history, or technical specialty established."
  appearance: "Sixties, white, thin and slightly stooped, with the pallor of a man who keeps shop hours in a building with no windows worth the name. Wispy grey hair combed over without conviction; a long face; watery eyes behind smeared glasses he cleans on his shirt and does not improve. A cardigan gone through at both elbows over a shirt buttoned to the throat. Sits behind the counter of a crowded surplus shop among stock he can locate by memory and not by system."
  portrait: "assets/portraits/Elias_Ward_ENT-000177.png"
  situation: "Sold Alexander Pendragon a Gate Direction Finder [E-Rank] with its calibration key and a six-month warranty for $800 cash. The device's origin and Elias's motives remain unestablished. He was not told about the System or the private Keen Sense result.

  **Repair, 2026-08-11 — an omission from the original sale.** At that same sale he also made a standing informal offer, never previously recorded: he occasionally gets other unusual stock through — grey-market items, sometimes information — and told Alexander to come back and ask first rather than let him fence it out to whoever walked in. Corrects an under-recorded gap in `EVT-000216`; no new fictional time or state, only the missing fact.

  **Second visit, 2026-08-11 ~11:15 (`EVT-000285`).** Alexander returned on that standing offer. Elias showed two pieces: a compact resonance dampener (cruder than Alexander's own Suppression Emitter, declined) and a sealed envelope — a name and a pattern he'd heard repeated near the district's cold-storage lot, source unspecified. Sold the envelope for $400 cash. Honest about the limits of his own network when pressed for hunter contacts — pointed to Ferro's Reclamation (`ENT-000150`) as more socially connected than himself, corroborating Walt Adamik's earlier warning about its owner's Coalition compliance ties independently."
```

### ENT-000181 — Corinne Whitlock

Leasing agent for Lakeline Residential, handling the Rogers Park two-bedroom listing central to `OBJ-15`. Renamed by owner ruling from a briefly-authored 'Denise' that collided with harvest-crew lead Denise Ferro (`ENT-000148`); only her recorded voicemail greeting had been heard before this session.

```yaml
id: ENT-000181
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000256
  game_date: "2026-08-10 ~14:00 -05:00"
  real_date: "2026-07-31"
type: Character
subtype: leasing agent
scope: local
lifecycle: active
aliases:
  - name: "Corinne Whitlock"
    quality: current
canonical_state:
  affiliation: "Lakeline Residential — leasing agent"
  home: "Chicago, USA"
  location: "the Rogers Park two-bedroom listing, second-floor front"
  condition: "No injury or impairment established."
  want: "**A signed lease, and the viewing to go well for the people in it.** She gave Alexander and Owen room on the balcony and in the second bedroom without being asked, which is a leasing agent reading a decision being made and getting out of its way. That is the only motive canon supports and it should not be deepened past it."
  fear: "**Unauthored.** Nothing establishes what she is protecting."
  secret: "**Unauthored.** One viewing, conducted straightforwardly; terms quoted exactly as listed."
  voice: "**Brisk, professional and tactful** — walks the space and states the facts of it, quotes terms without adjusting them, and **stops talking when the people she is with need to think.** The tact is spatial rather than verbal: she leaves the room."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-10** (`EVT-000256`), the last span this record settles; it has not been advanced since.\n\n  - **Letting Lakeline Residential's units**, which is the whole of what canon gives her.\n  - **The flat she showed them is an open matter on her side** until it is taken or let to someone else."
  capabilities: "Leasing agent for Lakeline Residential; brisk, professional, tactful — gave the couple room on the balcony and in the second bedroom without being asked. No Rank, faction, or combat capability established; a civilian."
  appearance: "Late forties, white, trim and carefully put together — a good blazer, low heels she can actually walk a building in, a lanyard of unit keys she manages without rattling. Blonde hair cut to the shoulder and blown out; light eyes; a warm, practiced, entirely professional smile that arrives on cue and leaves the same way. Carries a tablet with the listings on it and glances at it far less than she pretends to. Steps out onto a landing at exactly the right moment to give people a minute alone."
  portrait: "assets/portraits/Corinne_Whitlock_ENT-000181.png"
  situation: "Met Alexander and Owen in person for the first time 2026-08-10, 2:00 PM (`EVT-000256`), after a front-desk coordinator (unnamed, same firm) booked the slot off Alexander's morning callback. Walked them through the full flat — balcony, second bedroom, bathroom — confirmed the unit was updated four years back (plumbing and electric), quoted terms exactly as listed ($1,950/mo, first and last plus one month's deposit, no broker's fee), and took the application on the spot at the couple's request. Told them landlord sign-off is typically fast, two to three business days for standard processing. No further history established."
```

### ENT-000182 — Reyna Castillo

C-Rank striker, currently without a crew. Kesha Morrison named her on the spot as the first real candidate for Alexander and Owen's crew, 2026-08-11.

```yaml
id: ENT-000182
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000273
  game_date: "2026-08-11 ~09:55 -05:00, Coalition desk"
  real_date: "2026-08-01"
type: Character
subtype: striker
scope: local
lifecycle: active
aliases:
  - name: "Reyna Castillo"
    quality: current
relationships:
  - REL-000095
canonical_state:
  affiliation: "Pendragon Guild — member, from the pre-guild crew"
  home: "Chicago, USA"
  rank: "**C-Rank**, Coalition-registered — one of the Coalition's 22 (`worlds/gatefall/institutions/windy-city-coalition/250_INSTITUTION_LEDGER.md`, `membership_rank_distribution`). Resolved by that Rank under Profile Section 13.1."
  signature_ability: "**Measure.** Her mana runs down the blade into whatever it touches and comes back with what is left in the thing — how much fight is still standing in front of her, read through the weapon at the moment of contact. A striker's gift that is really an assessor's, and the reason her insistence on seeing a plan before she signs onto it reads as professional judgment rather than nerves: she is the member of a crew who knows *first*, and by the hit rather than the guess, that a pull has gone wrong. Method and reach only; no magnitude beyond a C-Rank standard hit and no Section 13.5 effect attaches."
  location: ENT-000087
  condition: "Healthy; not currently engaged on any posting."
  knowledge: "**What she knows about Alexander — read this before any line where she asserts something about him.** Every entry cites the Event that established it; anything not listed here she has not been told, which is the boundary rather than a gap (Resident Core, *Load a Recorded NPC Before Playing It*). **Her acquaintance is one meeting long**, and she is the newest significant contact in the campaign.\n\n  - **Whatever Kesha Morrison said when she named her as a candidate** (`EVT-000296`) — that Alexander and Owen are founding a C-Rank-floor crew and wanted a crewless C-Rank striker. The record does not enumerate Kesha's exact words, so **do not treat this as licence for any specific fact about him.**\n  - **The crew pitch as he made it**, at the Loyola lakefront (`EVT-000409`) — the intended shape of the crew, Owen as eventual field command, and that she would not commit without meeting both leads in person first, which she said in her own words (`EVT-000298`).\n  - **His conduct in that one conversation**, and nothing before it.\n\n  **What she does not have.** Any Bearer-only quantity on the Profile §14.4.1 register. She has no history with him, no shared clear, and no channel to his file — **she has not seen him fight.** Her `want` is a plan she can see before she is inside it, which is precisely the posture of someone who does not yet know what he can do.\n\n  **Ambiguous, deliberately not resolved here:** whether Kesha disclosed Alexander's carded Rank when naming her. Kesha reads his file as a matter of role and had every reason to mention it, but the chronicle does not record that she did. Default is not-told until an owner ruling says otherwise."
  capabilities: "C-Rank striker, six years licensed — an experienced hand currently choosing not to take combat crew work rather than being unable to get it."
  appearance: "Early thirties, Latina, of average height and compactly, durably built — six years of the work with none of the showiness some of it produces. Black hair cut to the shoulder and tied back out of the way; steady dark eyes that hold contact a beat longer than is comfortable when she is deciding something; a level, unhurried face that does not spend expression it doesn't need to. Her kit is good, thoroughly maintained, and has plainly not been worn in anger for about six weeks. **Authored ahead of the first face-to-face meeting** (locked for 2026-08-15 19:00, `EVT-000318`), so the entry is table-ready when it happens; nothing here has been shown to Alexander yet."
  portrait: "assets/portraits/Reyna_Castillo_ENT-000182.png"
  personality: "Businesslike and economical, in text and by report — brief replies, no small talk, and a flat refusal to commit to anything she has not seen for herself. Not gun-shy in the sense of frightened: she waited five extra days to meet both crew leads together rather than take the faster meeting, which is a person exercising judgment rather than avoiding a decision. Says the uncomfortable thing plainly ('I got burned trusting a plan I never saw') instead of working around it."
  want: "**A plan she can see before she is inside it.** She is not avoiding crew work — she is refusing to join one on trust alone, which is a different thing and the distinction matters to her. Six years licensed, currently choosing solo-eligible support over combat crews. She waited five extra days to meet **both** leads together rather than take the faster meeting: that is investment, not avoidance."
  fear: "**Trusting another lead's plan she never saw** — in her own words, *'I got burned trusting a plan I never saw.'* Her crew broke six weeks ago after a lead walked them into a D-Rank pull under-prepared and two people quit over the near-death that followed. The flaw it produces is that she **tests people rather than asks them**, so a straight answer given early still has to survive being checked later, and she will not say when it has passed."
  secret: "**Her own part in the pull that broke her crew.** The record establishes what the lead did and that two members quit; **what she has never said is where she was in it, or what she did or failed to do.** She has not been asked directly and does not volunteer it. **Known to:** the four other people who were there. Expect her to move past the question rather than refuse it."
  voice: "**Brief, businesslike, no small talk** — in text and in person. Says the uncomfortable thing plainly rather than working around it. **Drops a wrong read the moment it is corrected, without argument or apology** — told she had misjudged Alexander as clock-watching, she said *'Fine. Wrong read'* and moved on. Stood rather than sat at the lakefront, watching the water instead of the path. Opens by stating exactly what she was given and asking for the rest directly."
  beliefs:
    - claim: "A lead who will not show you the plan will eventually get you killed."
      ground: "Six weeks ago, her own crew, and the two who quit."
      confidence: certain
      accuracy: unresolved
      since: "standing; roughly 2026-07-01"
      note: "**True of her last lead. Untested against this one**, which is the whole of what she is deciding by 2026-08-19."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-18 21:20**.\n\n  - **Deciding, by 2026-08-19** (`REL-000095`) — tomorrow. She said she would answer and she will; she does not need chasing and would read a chase as a tell.\n  - **Solo-eligible E/D-Rank support work** off Kesha's desk in the meantime, which is what she has done for six weeks.\n  - **Checking what she was told.** She tests rather than asks, so the interval between the meeting and her answer is not idle."
  situation: |-
    **In, since 2026-08-20 (`EVT-000552`; `REL-000095`).** She answered by text at 05:52, a day late and saying why: she had wanted to sit with it rather than give a fast answer she would walk back. *"I'm in. Corbin and Felix both good with it too, for what it's worth."* She was folded into Pendragon Guild membership with the pre-guild crew (`EVT-001073`).

    **Why it took what it took.** Her five-hunter crew broke six weeks before, after a lead walked them into a D-Rank pull under-prepared and turned the bad call into a training moment nobody named (`EVT-000273`, `EVT-000296`). She would not commit over text or without meeting both Alexander and Owen. At the Loyola lakefront (`EVT-000409`) she pressed three times on one question, whether a bad call gets named in front of everyone or quietly managed, and took his third, sharp, unmanaged answer as the credible one. At the first training (`EVT-000453`-`EVT-000458`) she watched him name his own botched entry unprompted, and closed with *"good session, I mean that."* Alexander's own read of her, *not sure about her*, has never been said to her. The dated history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
moved_by_events: "`EVT-000306` `EVT-000450` `EVT-000451`"
```

### ENT-000183 — Petra

Owner-operator of Ferro's Reclamation (`ENT-000150`), the salvage yard two blocks north of Walt Adamik's shop. Previously unnamed and unmet; met in person 2026-08-11.

```yaml
id: ENT-000183
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000286
  game_date: "2026-08-11 ~11:45 -05:00, Ferro's Reclamation"
  real_date: "2026-08-01"
type: Character
subtype: salvage dealer / informant
scope: local
lifecycle: active
aliases:
  - name: "Petra Nowak"
    quality: current
  - name: "Petra"
    quality: current
relationships:
  - REL-000087
canonical_state:
  affiliation: "Ferro's Reclamation — salvage, and an independent informant"
  home: "Chicago, USA"
  location: ENT-000150
  condition: "Healthy; not established as combat-active."
  capabilities: "Runs Ferro's Reclamation's mundane scrap and salvage business on the surface. Trades information for information or favors, not for cash — corroborated Walt Adamik's and Elias Ward's independent warnings that she also trades favors both directions with Coalition compliance staff, and disclosed this herself unprompted rather than let Alexander find out later. Reads people quickly and undersells her own attentiveness with a deliberately ordinary shopkeeper manner."
  appearance: "Fifties, reading glasses pushed into greying hair, works from a converted shipping-container office cluttered with ledgers rather than digitized records. **Extended 2026-09-23 (real date), for portrait reference:** Late fifties, white, Polish-American, solid and square-shouldered. Greying dark-blonde hair cut to the jaw, reading glasses pushed up into it; sharp light-green eyes that are already reading you; a faint web of smile lines she rarely uses. A quilted work vest over a heavy knit sweater, a pencil behind one ear. Reference setting: her converted shipping-container office at Ferro's Reclamation, ledgers stacked on steel shelving behind her, a work lamp's yellow light."
  portrait: "assets/portraits/Petra_Nowak_ENT-000183.png"
  want: "**To stay the person both sides come to.** She trades information for information or favors and never for cash, and she trades favors **both directions** with Coalition compliance staff — which only works while neither side decides she belongs to the other. Disclosing that herself, unprompted, rather than letting Alexander discover it, is that position being maintained rather than a confession."
  fear: "**Being owned by one side of it.** A dealer who is understood to be compliance's is no longer useful to anyone else, and the reverse is worse. The exposure is not legal; it is that the whole trade rests on a balance she cannot fully control."
  secret: "**What she has traded in the other direction, and to whom.** Walt Adamik and Elias Ward independently warned about it and she confirmed the shape of it herself — the contents she has never named. **Known to:** the compliance staff concerned."
  voice: "**Calls the cover story rather than letting it run** — small talk, then the read, delivered flatly and without triumph. States her terms plainly and without apology: nothing given without something traded first. **Warms genuinely** the moment someone trades real information instead of trying to talk her out of it for free."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-11** (`EVT-000286`), the last span this record settles; it has not been advanced since.\n\n  - **Running Ferro's Reclamation's surface trade** in mundane scrap and salvage, which is the cover the rest of it sits under.\n  - **Keeping her ledger even in both directions** — the Coalition compliance relationship, and whoever else pays in information.\n  - **Alexander is now a live account rather than a stranger.** He traded the full warehouse investigation and got a real hunter lead back; nothing establishes a further obligation either way, and she does not extend credit."
  personality: "Direct once past the opening small talk — called Alexander's cover story within a few exchanges rather than let it run. Plainspoken about her own terms (nothing given without something traded first) without being mercenary about it; genuinely warmed once Alexander traded real information rather than tried to talk her into it for free."
  situation: "First meeting, 2026-08-11 (`EVT-000286`). Alexander approached under a thin 'just browsing for gear upgrades' cover, which she saw through by partial success and called out directly rather than let the small talk continue. Traded the full warehouse investigation (Meridian Cold Storage LLC, Titan Secure, the Suite 14 dead end) for a real hunter lead in return: named **Marcus Whitlow** (`ENT-000184`), a restless C-Rank striker. Confirmed independently that the warehouse name means something to her — 'adjacent to two other things that never quite lined up before' — without saying what. Disclosed her own compliance ties unprompted as a condition of the trade being honest rather than a threat. **Standing arrangement formed** (`REL-000087`): Alexander brings further warehouse developments, she keeps an ear out for C-Rank-and-above hunters looking for something off-book. No Coalition names passed either direction by explicit agreement."
```

### ENT-000184 — Marcus Whitlow

C-Rank striker, first candidate for Alexander and Owen's new crew, recruited through Petra's referral. Met in person 2026-08-11. **Disambiguation: not `ENT-000127` Marcus Aldridge**, the sensor on Tanya Voss's crew. Use the surname in narration.

```yaml
id: ENT-000184
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000289
  game_date: "2026-08-11 ~12:15 -05:00, Dobek's Diner"
  real_date: "2026-08-01"
type: Character
subtype: striker
scope: local
lifecycle: active
aliases:
  - name: "Marcus Whitlow"
    quality: current
relationships:
  - REL-000088
canonical_state:
  affiliation: "Pendragon Guild — member, from the pre-guild crew"
  home: "Chicago, USA"
  rank: "**C-Rank**, confirmed directly by Flux Sight (`EVT-000289`). Resolved by that Rank under Section 13.1."
  pool_variance: "**None** — Flux Sight (`EVT-000289`) read the Section 6.1 table values exactly (250 / 125), which is what a variance of none looks like on the card. Permanent, never rerolled."
  pools: "**Maximum Health 250, maximum Mana 125** — Section 6.1 table (250 / 125), flat, as directly confirmed by Flux Sight (`EVT-000289`). Section 5.2 tier costs: **Minor 12, Signature 31, Boss-tier 62**. Section 5.3 running-dry threshold **31**."
  signature_ability: "**Clean Line.** His mana runs the edge as a thin bright line that finishes the cut his arm only started — the stroke completes along the path he chose even where his body's follow-through does not, so the blade arrives on a line his stance should not have been able to give it. Precise rather than spectacular, and that is the whole problem with it: it is exactly the gift that makes a hunter reliable enough to be left on unremarkable contract work for two years, which is the thing he is afraid of. Method and reach only; no magnitude beyond a C-Rank standard hit and no Section 13.5 effect attaches."
  location: ENT-000087
  condition: "Healthy, no injury."
  capabilities: "C-Rank striker, two years with a mid-tier guild doing largely unremarkable contract work. Has twice declined guild-internal transfers because neither offered anything genuinely different from what he already had."
  appearance: "Twenty-six, white, medium height and compactly muscled — the even, maintained build of someone who trains consistently and has never needed to train desperately. Mid-brown hair kept in a plain short cut he has clearly had for years; grey-blue eyes; a steady, pleasant, slightly closed face that takes a moment to warm. Good mid-tier guild kit, properly fitted and unscuffed in the places that suggest he has not been anywhere genuinely bad in a while. Sits still, but his hands don't — a tell that runs directly against the composure of everything above them."
  portrait: "assets/portraits/Marcus_Whitlow_ENT-000184.png"
  personality: "Restless under a competent, steady surface — Keen Sense (legendary read, `EVT-000289`) confirmed his stated boredom is real rather than performed: specifically a fear of stagnation, of being skilled enough to coast and dreading that coasting is all his career amounts to. Direct once past initial wariness; doesn't hide genuine reactions well, including being visibly unsettled by how accurately Alexander read him."
  want: "**Work that asks something of him.** Two years of largely unremarkable contract work and **two declined guild-internal transfers**, neither of which offered anything genuinely different from what he already had. He committed to Alexander's crew on the spot, at a diner, off one conversation — which is what a man does when the pitch is the first interesting thing he has heard in two years."
  fear: "**Stagnation — being skilled enough to coast, and that coasting being the whole of his career.** Not inferred: a legendary Keen Sense read confirmed the stated boredom is real rather than performed (`EVT-000289`). The flaw is that it makes him say yes fast, and he knows it does."
  secret: "**How badly the read landed.** Alexander named his stagnation accurately within minutes of meeting him and Marcus was **visibly unsettled by it** — he does not hide genuine reactions well and did not hide that one either. What he has not said is that being read that precisely is part of why he joined. **Known to:** nobody; Alexander saw the reaction, not the reason."
  voice: "Wary first, then **direct without ceremony**. Does not perform enthusiasm and does not hide a reaction he is having. Speaks about his own career flatly, as a thing that happened to him rather than a thing he chose."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-17** (`EVT-000453`-`EVT-000458`), the last span this record settles; it has not been advanced since and the next scene he enters advances it.\n\n  - **Making the crew turn out to be the thing the pitch described.** He committed on the spot off one conversation, which is a man buying a claim rather than a job, and the first real run is where the claim gets tested. He is not hedging against it; he is waiting to see it.\n  - **Ordinary contract work in the meantime**, which is what he has been doing for two years and what he expects to keep doing if this does not come to anything."
  situation: "**Recruited, 2026-08-11 (`EVT-000284`, `EVT-000286`, `EVT-000288`-`EVT-000289`).** Named by Wade Bishop to Petra's counterpart ask, then independently by Petra herself when Alexander traded her the warehouse lead — same name from two separate sources. Cold-called by Alexander citing Petra's referral; agreed to lunch within the hour. At Dobek's Diner, Alexander read him with Keen Sense and Flux Sight (undisclosed to Marcus) confirming sincerity and Rank, then pitched the crew directly: chain of command, frequent training, a stable roster, real Gate-Rank progression from C upward rather than a ceiling. Marcus committed on the spot — **'I'm in'** — and agreed to a sparring session to follow. First name secured toward the new crew (`OBJ-26`)."
```

### ENT-000185 — Soraya Delgado

C-Rank ranged support hunter, named by Wade Bishop as a crew candidate. Not yet met.

```yaml
id: ENT-000185
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000293
  game_date: "2026-08-11 evening, via text from Wade Bishop"
  real_date: "2026-08-01"
type: Character
subtype: ranged support
scope: local
lifecycle: active
aliases:
  - name: "Soraya Delgado"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — member, from the pre-guild crew"
  home: "Chicago, USA"
  rank: "**C-Rank** — Wade Bishop's secondhand referral, since **independently confirmed by Flux Sight** (`EVT-000319`). Resolved by that Rank under Section 13.1."
  pool_variance: "**None** — Flux Sight (`EVT-000319`) read the Section 6.1 table values exactly (250 / 125). Permanent, never rerolled."
  pools: "**Maximum Health 250, maximum Mana 125** — Section 6.1 table (250 / 125), flat, as directly confirmed by Flux Sight (`EVT-000319`). Section 5.2 tier costs: **Minor 12, Signature 31, Boss-tier 62**. Section 5.3 running-dry threshold **31**."
  signature_ability: "**Downrange.** Her mana rides the shot out and she reads the field from where it lands — she sees the room from her own impact point, which puts the crew's best forward eye at the back of the formation being spent as generic damage. Section 13.5 files a signature that guides a shot under *archer*; hers guides the **shooter** instead, and that is exactly the tactical judgment two years of escort contracts never once called on (`EVT-000319`) and exactly what the shared-picture model she negotiated with Alexander is built to use. Reach and method only; her shots remain C-Rank standard hits and no Section 13.5 effect attaches."
  location: ENT-000087
  condition: "Healthy, no injury — met in person 2026-08-13 (`EVT-000319`)."
  knowledge: "**What she knows about Alexander: only that he exists and is recruiting.** Wade Bishop named her to him as a lead-list candidate (`EVT-000293`), explicitly a list of names rather than a roster, with no promise that any of them would say yes. **They have not met.**\n\n  Whether Wade said anything about Alexander to *her* is not recorded — the delivery is recorded in one direction only. **Default is that she has been told nothing**, including his name, until an owner ruling or a played scene says otherwise. This field is written rather than left absent so the emptiness reads as established, not as a record nobody has got to yet."
  capabilities: "C-Rank ranged support, two years on a guild B-team running escort contracts that never once called on her tactical judgment. Sound, unflashy shooting; the underused half of her is the read behind it."
  appearance: "Late twenties, Latina, of average height and lightly built, standing with the settled, squared stillness of someone trained to shoot from a fixed position. Dark hair pulled back into a low, practical knot; brown eyes that move over a space in a deliberate sweep rather than darting; a composed face that gives away very little until she decides otherwise. Wears her own kit rather than guild issue — lighter than a striker's, chosen around a clear sightline and a fast reload, and visibly maintained by someone who cares about it. Arrives early to places and picks where she stands before anyone else does."
  portrait: "assets/portraits/Soraya_Delgado_ENT-000185.png"
  personality: "Cautious in a considered way rather than a fearful one — asks pointed, specific questions and waits for the whole answer. Has been promised 'real training' before and had it not materialize, and says so plainly instead of testing for it obliquely. Presses once on a thing that matters, then lets it go rather than forcing it."
  want: "**To have the read behind the shooting actually used.** Two years on a guild B-team running escort contracts that **never once called on her tactical judgment**; the shooting is sound and unflashy and the underused half of her is what she sees. She set the same condition Iris did — she will look at the training before she commits to anything."
  fear: "**Being promised real training again and watching it not materialise.** It has already happened to her, and she says so plainly rather than testing for it obliquely. The flaw is that she **presses once and then lets it go** — so a promise she has doubts about gets exactly one question, and silence afterwards is not agreement."
  secret: "**Not established, and her one unanswered question is the live thread instead.** She asked whether gear is mandatory (`EVT-000351`) and never got an answer; she has not asked again and will not. **She has also not answered on the Saturday contract**, which may be that question still sitting there."
  voice: "**Pointed, specific, and willing to wait for the whole answer** rather than filling the pause. Says the awkward history plainly instead of hinting at it. **Presses once, then lets it go** — the absence of a second ask is not acceptance, and reading it as acceptance is the mistake this record exists to prevent."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-19** (`EVT-000483`), the last span this record settles; it has not been advanced since.\n\n  - **Waiting to see the training before she commits to anything**, which is the condition she set and has not withdrawn. She has not answered on the Saturday 2026-08-22 Ashfield contract and is not obliged to.\n  - **Her own question is still unanswered** — whether gear is mandatory (`EVT-000351`). She asked once and let it go, which per her voice is not acceptance; the obligation to answer runs toward her, not away.\n  - **Guild B-team escort work in the meantime**, the two years of it that produced the want in the first place."
  situation: "**Met 2026-08-13 at a private practice lot of her own choosing** (`EVT-000319`) — interested, **contingent on seeing the first training**, the same condition Iris set; her question about whether gear is mandatory was left unanswered (`EVT-000351`). Referred by Wade Bishop as one of four (`EVT-000293`, `OBJ-26`). **She has not answered on the Saturday 2026-08-22 D-Rank Ashfield contract**, and two roster slots are deliberately held open for her or anyone else (`EVT-000483`).

  **Direct contact made, 2026-08-11 ~21:00 (`EVT-000298`).** Alexander texted her the pitch directly. She replied within the hour, genuinely interested but cautious — asked pointed questions about what 'real training' actually means in practice, reading as someone who has heard that promise before and had it not pan out.

  **Met in person, 2026-08-13 14:00-14:45, the Redline Practice Yards (`EVT-000319`).** Redirected the meeting herself to a private lot rather than Founder's Coffee, wanting to see how Alexander carries himself before talking. Flux Sight confirmed C-Rank, Health 250/250, Mana 125/125; a legendary Keen Sense read found her boredom is specific, not generic — two years as generic ranged damage on escort contracts that never once used her actual tactical judgment. Alexander told her plainly he'd looked her up just now; she pressed once on how, got a deliberately vague but honest answer, and let it go rather than force it. Negotiated a shared-picture tactical model — Alexander calls, but every crew member's read (hers included) feeds the same picture, rather than her executing blind or being sidelined. **Interested, contingent on seeing the first training** — same condition as Iris. Offered, unprompted, to help find a private training venue.

  **The contingency is met, 2026-08-14 (`EVT-000351`).** Alexander texted a real date — **Monday 2026-08-17, 18:00**, private site, location to follow by Saturday. She confirmed attendance, converting from conditional interest to committed-to-attend, and asked the one practical question nobody had settled: **is gear mandatory, or is showing up enough?** That question is still unanswered, and it is hers specifically — consistent with someone who wants to know what is actually being tested before she walks in."
```

### ENT-000186 — Grant Okwuosa

C-Rank striker/frontline hunter, named by Wade Bishop as a crew candidate. Not yet met.

```yaml
id: ENT-000186
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000293
  game_date: "2026-08-11 evening, via text from Wade Bishop"
  real_date: "2026-08-01"
type: Character
subtype: striker
scope: local
lifecycle: active
aliases:
  - name: "Grant Okwuosa"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — member, from the pre-guild crew"
  home: "Chicago, USA"
  rank: "**C-Rank** — Wade Bishop's secondhand referral, since **confirmed directly by Flux Sight** (`EVT-000317`). Resolved by that Rank under Section 13.1. Exact pool figures were not recorded at the read; Section 13.1 supplies them from Rank until they are."
  signature_ability: "**Pry.** His mana turns a blow into leverage: what he hits does not merely take the hit, it comes *open* — guard broken, flank turned, footing spoiled — for whoever arrives next. The wound is an ordinary C-Rank standard hit; the opening it leaves behind is the point of him, and it is a frontline gift that only pays if someone else is there to use it. It is why he could answer without hesitating that letting a better-placed crewmate take the killing blow costs him nothing (`EVT-000317`): his gift has never drawn a line between his opening and somebody else's. Method only; no magnitude beyond his Rank and no Section 13.5 effect attaches."
  location: ENT-000087
  condition: "Healthy, no injury — met in person and recruited 2026-08-13 (`EVT-000317`)."
  capabilities: "C-Rank frontline striker, passed over for a lead slot twice on seniority grounds rather than demonstrated skill. Reads and works to other people's openings as readily as his own."
  appearance: "Early thirties, Black, Nigerian-American (the Okwuosa name), tall and heavily built through the shoulders and back — a genuine frontline frame, and one he plainly maintains. Hair cut close, a short beard kept neat, warm dark eyes set in a face that is quick to open and slow to close again. Well-worn frontline kit, scarred across the forearms and chestplate where a man who takes first contact would expect it to be. Carries himself with an easy, unguarded physical confidence that sits oddly against how carefully he chooses his words about his own career."
  portrait: "assets/portraits/Grant_Okwuosa_ENT-000186.png"
  personality: "Steady and willing on the surface, with a specific and well-earned frustration underneath it: not about credit, which he genuinely does not need, but about being pre-judged on tenure before anyone has watched him work. Direct when the subject is finally named out loud, and quick to test whether a promise about it is real."
  want: "**To be judged on what someone watched him do.** Passed over for a lead slot **twice on seniority grounds rather than demonstrated skill**. Alexander gave him one of the three elements at the first crew training (`EVT-000453`-`EVT-000458`) — the promise being tested, and so far kept."
  fear: "**Another two years of being steady and willing and nobody looking.** Not about credit, which he genuinely does not need. The flaw is that he **tests a promise quickly and early** rather than waiting to be disappointed, so a lead who hedges once will lose him faster than a lead who refuses him outright."
  secret: "**How much the element lead mattered.** He is direct about the frustration once it is named aloud and says nothing about what it was worth to have it answered. **Known to:** nobody. He works to other people's openings as readily as his own, and does not expect that to be noticed either."
  voice: "**Steady and willing on the surface**, and direct the moment the real subject is named. Does not raise the grievance himself; answers it fully when someone else does. Quick, concrete questions about whether a commitment is real, asked once and not repeated."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-17** (`EVT-000453`-`EVT-000458`), the last span this record settles; it has not been advanced since.\n\n  - **Holding the element well enough that the promise keeps being kept.** He was given one of the three elements at the first training, which is the promise being tested and so far kept. He tests a promise early rather than waiting to be disappointed, so what he is watching for is the next hedge, not the next slight.\n  - **Ordinary frontline work** — taking first contact, opening for whoever arrives next, and not expecting that to be noticed."
  situation: "**Met and recruited 2026-08-13 at a diner near the Coalition building** (`EVT-000317`) — the third name secured, after Marcus and Theo. Referred by Wade Bishop as one of four (`EVT-000293`, `OBJ-26`). **Led one of the three elements formed at the first crew training, 2026-08-17** (`EVT-000453`-`EVT-000458`), alongside Corbin and Owen. **Confirmed for the Saturday 2026-08-22 D-Rank Ashfield contract** (`EVT-000483`).

  **Direct contact made, 2026-08-11 ~21:00 (`EVT-000298`).** Alexander texted him the pitch, naming the earned-not-seniority framing directly. He replied fast and eager — 'Wade said you actually meant that about earned, not seniority? If that's real I want to talk. When.'

  **Met in person and recruited, 2026-08-13 09:00-09:40, a diner near the Coalition building (`EVT-000317`).** Read with Flux Sight and Keen Sense before speaking — his frustration confirmed real and specific: passed over for lead twice on tenure, never on demonstrated skill. Alexander shared the read aloud. Grant pressed on whether it would bother him to let a better-positioned crewmate take a killing blow — genuinely didn't hesitate: credit was never the wound, being pre-judged by seniority was. Alexander committed to equal evaluation for everyone starting with the first training. **Recruited on the spot.** Third name secured for the crew, after Marcus and Theo. Promised a call by end of the following week regardless of outcome.

  **Given an element to lead at the first crew training, 2026-08-17 (`EVT-000453`-`EVT-000458`) — the exact thing his file said he'd been denied twice on seniority alone.** On the first live sequencing test he read a teammate's set as an ungiven cue and moved early, triggering Iris's first live stop-call; **owned it immediately and without deflection** ('That's on me. Not on my three either — I didn't check with them, I just went'), naming the mistake precisely rather than explaining it away. **Alexander kept him on the element on the spot**, naming the same fast-read instinct that caused the miss as the reason he was given it in the first place. Visibly moved by being told so in front of the other nine — 'Alright,' quieter than anything else he said all night. Second and third drills clean under his lead; closed the night discussing the new nod-signal with Corbin unprompted.

  **2026-08-18 (`EVT-000483`), texted about a real, filed D-Rank contract for Saturday 2026-08-22.** Steady as always: 'Count me in.'"
```

### ENT-000187 — Iris Halvorsen

B-Rank sensor, named by Wade Bishop as a crew candidate — the strongest of the four referrals. Not yet met.

```yaml
id: ENT-000187
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000293
  game_date: "2026-08-11 evening, via text from Wade Bishop"
  real_date: "2026-08-01"
type: Character
subtype: sensor
scope: local
lifecycle: active
aliases:
  - name: "Iris Halvorsen"
    quality: current
relationships:
  - REL-000098
canonical_state:
  affiliation: "Pendragon Guild — member, from the pre-guild crew"
  home: "Chicago, USA"
  rank: "**B-Rank** — Wade Bishop's secondhand referral, since **independently confirmed by Flux Sight** (`EVT-000308`). Resolved by that Rank under Section 13.1. The highest-Ranked hunter on the crew's candidate list."
  pool_variance: "**None** — Flux Sight (`EVT-000308`) read the Section 6.1 table values exactly (600 / 300). Permanent, never rerolled."
  pools: "**Maximum Health 600, maximum Mana 300** — Section 6.1 table (600 / 300), flat, as directly confirmed by Flux Sight (`EVT-000308`). Section 5.2 tier costs: **Minor 30, Signature 75, Boss-tier 150**. Section 5.3 running-dry threshold **75**."
  signature_ability: "**First to Move.** Her mana reads a space by *priority* rather than by census — not only how many things are in it and where, but which of them is going to act next, and which is holding back. A population count is the least of what she can tell a crew, which is exactly why having that read received as a formality has worn on her for as long as it has, and why she wants to be forward rather than parked at the back with it (`EVT-000308`). Reach and method only; no Section 13.5 effect attaches and her strikes remain B-Rank standard hits."
  location: ENT-000200
  condition: "Healthy, no injury — attended and worked the first crew training, 2026-08-17 (`EVT-000453`-`EVT-000458`)."
  capabilities: "B-Rank sensor whose read runs to threat priority and intent, not merely population and position — and whose current crew treats it as a box to tick rather than something to act on. Wants to fight forward as well as read; her present crew placed her at the back without asking."
  appearance: "Mid-thirties, white, Norwegian-American (the Halvorsen name), tall and solidly built — noticeably more physical than the sensor label leads people to expect, which is part of her complaint. Ash-blonde hair cut short and pushed back off her face; light grey eyes with the slightly unfocused middle-distance habit of someone who is always half-reading the room; a strong, guarded face that holds its expression a beat too long before it commits. Kit is better than her crew's and chosen for a fight rather than a vantage point — armored properly, weapon real, none of it decorative. Sits with her back to a wall by preference and does not apologize for moving seats to get one."
  portrait: "assets/portraits/Iris_Halvorsen_ENT-000187.png"
  personality: "Guarded on first contact, and it reads as real caution rather than hostility — she wants this to be genuine considerably more than she is willing to show. Long-frustrated in a specific way, and visibly affected by having that frustration named accurately by a stranger. Asks concrete, verifiable questions and holds the answers to account; agreed to nothing beyond a training session and one supervised run before committing."
  want: "**To be acted on.** Her read runs to threat priority and intent rather than population and position, and her present crew treats it as a box to tick and places her at the back without asking. She wants a crew that moves on what she says — and, past that, **to fight forward as well as read.** Alexander giving her overwatch with an absolute stop-call, and then a second standing authority over gap coverage after she named the defect unprompted (`EVT-000453`-`EVT-000458`), is the first time either has happened."
  fear: "**That this is the same thing again** — another crew that says the right words at the start and puts her at the back by the third job. It is why she agreed to **nothing** beyond one training session and one supervised run before committing, and why she asks concrete, verifiable questions and holds the answers to account rather than taking a good pitch at face value. The flaw is that she **under-shows how much she wants it**, so a crew that is genuine gets the same guarded treatment as one that is not."
  secret: "**How much she wants this to be real.** Guarded on first contact reads as caution rather than hostility, and it is deliberate cover: she was visibly affected by having her frustration named accurately by a stranger and did not want to be. **Known to:** nobody, and she would rather it stayed that way. Small, and the thing she is protecting."
  voice: "**Concrete and verifiable, never rhetorical** — she asks questions with checkable answers and comes back to them later. **Names a defect the moment she sees one**, unprompted and without softening, which is how she got her second standing authority. Does not perform enthusiasm and does not fill a silence to be agreeable. Uses her stop-call without hesitating when it is warranted, which she demonstrated on the first drill."
  beliefs:
    - claim: "A sensor's read is the first thing a crew stops listening to once the fighting starts."
      ground: "Years of it, in her present crew and before."
      confidence: confident
      accuracy: unresolved
      since: "standing; pre-campaign"
      note: "**This crew has not tested it yet.** Saturday's Ashfield run is the first real chance to prove it wrong, which is exactly the supervised run she made a condition."
  agenda: "**Resolved, 2026-08-22 (`EVT-000606`).** The supervised low-stakes run — the last condition she set — is run and cleared. **She committed to the crew unconditionally afterward**, unprompted, first handshake she's initiated. No longer an open recruitment thread. Her two standing authorities (overwatch stop-call, binding gap-coverage calls) carry forward as ordinary crew practice. Her present crew is no longer a live alternative — this one proved itself. Prior: `Advanced` through **2026-08-18 21:20** — the supervised run booked, condition still open."
  situation: |-
    **Committed to the crew, unconditionally, 2026-08-22 (`EVT-000606`), and a Pendragon Guild member since the pre-guild crew was folded in (`EVT-001073`).** The Ashfield D-Rank contract was her promised supervised run: clean formation, her own read opened the boss, no strike role for Alexander, and a fair split paid without being asked. She closed her notebook, said *"I'm in. Properly, not one more run and I'll see,"* and shook on it, the first handshake she has initiated. No open condition remains.

    **Her two standing authorities** carry forward as ordinary crew practice (`REL-000098`). The overwatch stop-call is absolute: *"anything you see, you stop it. Anyone. Including me."* She fired it live on the first drill of the first training (`EVT-000454`). Her gap-coverage calls to any lead are binding instructions, given after she named the crew's structural defect unprompted: three elements each set correctly and covering nothing between them (`EVT-000453`-`EVT-000458`). She is a genuine B-Rank sensor who wants to fight forward too, not only read from the back (`EVT-000308`). Referred by Wade Bishop as the strongest of four names (`EVT-000293`). The recruitment history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
moved_by_events: "`EVT-000298` `EVT-000351` `EVT-000457` `EVT-000483`"
```

### ENT-000188 — Theo Bannerman

C-Rank striker, named by Wade Bishop as a crew candidate — youngest and rawest of the four. Not yet met.

```yaml
id: ENT-000188
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000293
  game_date: "2026-08-11 evening, via text from Wade Bishop"
  real_date: "2026-08-01"
type: Character
subtype: striker
scope: local
lifecycle: active
aliases:
  - name: "Theo Bannerman"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — member, from the pre-guild crew"
  home: "Chicago, USA"
  rank: "**C-Rank** — Wade Bishop's secondhand referral, since **independently confirmed by Flux Sight** (`EVT-000311`). Resolved by that Rank under Section 13.1."
  pool_variance: "**None** — Flux Sight (`EVT-000311`) read the Section 6.1 table values exactly (250 / 125). Permanent, never rerolled."
  pools: "**Maximum Health 250, maximum Mana 125** — Section 6.1 table (250 / 125), flat, as directly confirmed by Flux Sight (`EVT-000311`). Section 5.2 tier costs: **Minor 12, Signature 31, Boss-tier 62**. Section 5.3 running-dry threshold **31**."
  signature_ability: "**All In.** Once he commits, his mana floods the whole sequence at once and burns through it — the combo comes visibly lit, faster and heavier-looking than his frame should manage, and there is no calling any part of it back once it is spent. It is the reason his timing and shape read as near-perfect (he is never hedging) and equally the reason he twice ate an avoidable hit mid-combo at his own boxing club rather than break form (`EVT-000311`). The gift and the flaw are one fact, which is why 'calm down' is not the fix and structure is. Magnitude is unchanged — C-Rank standard hits — and no Section 13.5 effect attaches; what the mana buys is commitment, and it is not optional once poured."
  location: ENT-000087
  condition: "Healthy, no injury — met in person and recruited 2026-08-12 (`EVT-000311`)."
  capabilities: "C-Rank striker: young, raw, and genuinely gifted. Reads an opening roughly half a second early and commits to it completely. Highest upside of Wade's four referrals by Wade's own read, on the condition that someone gives him real structure rather than telling him to rein it in."
  appearance: "Twenty-two, white, of middling height and built like the boxer he is — lean, fast, thick through the wrists and neck, still carrying a little of the gawkiness he has not quite grown out of. Dark hair kept short on the sides and perpetually sweat-damp; a slightly crooked nose that has been broken at least once and set carelessly; bright, restless eyes in a face that shows every single thing he feels. Mismatched kit assembled from whatever was affordable, worn hard and unevenly. Cannot stand still in a conversation and does not appear to notice that he can't."
  portrait: "assets/portraits/Theo_Bannerman_ENT-000188.png"
  personality: "Eager to the point of being unguarded — replies too fast, with too much punctuation, and means all of it. Wants to be shown rather than told, and asked to demonstrate before he would talk. Takes accurate criticism far better than encouragement, and visibly reorganized himself around the first piece of feedback that named what he actually does rather than telling him to rein it in."
  want: "**Structure, from someone who has actually watched him fight.** Wade's read is that he has the highest upside of the four referrals **on the condition that someone gives him real structure rather than telling him to rein it in** — and Theo asked to demonstrate before he would talk, which is a man who has been told to rein it in before."
  fear: "**That the thing he does well is the thing he will be told to stop doing.** He reads an opening half a second early and commits completely; every crew that has met him has seen recklessness rather than timing. The flaw is that he **takes accurate criticism far better than encouragement** — praise slides off him and a correct diagnosis reorganises him on the spot, which makes him easy to lead well and easy to break by being sloppy."
  secret: "**Not established.** He is the least guarded person in the crew — replies too fast, means all of it, and hides nothing including his eagerness. Do not author one."
  voice: "**Too fast and too much punctuation, and every word of it meant.** Eager to the point of being unguarded. **Asks to be shown rather than told**, and would rather demonstrate than describe. Reorganises visibly and immediately around feedback that names what he actually does."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-19** (`EVT-000483`), the last span this record settles; it has not been advanced since.\n\n  - **Getting told what to do by someone who has watched him fight.** He asked to demonstrate before he would talk, and he reorganises immediately around feedback that names what he actually does. What he is pursuing is the structure, not the approval.\n  - **Training at his own boxing club**, which is where he was found and where he goes when nothing else is asked of him."
  situation: "**Met and recruited on the spot 2026-08-12 at his own boxing club** (`EVT-000311`) — the second name secured, after Marcus. Flux Sight confirmed C-Rank, and a live sparring demonstration confirmed raw but genuine talent. Referred by Wade Bishop as one of four (`EVT-000293`, `OBJ-26`). **Confirmed for the Saturday 2026-08-22 D-Rank Ashfield contract** (`EVT-000483`).

  **Direct contact made, 2026-08-11 ~21:00 (`EVT-000298`).** Alexander texted him the pitch. His reply came back rough around the edges — too much punctuation, clearly typed fast — but the enthusiasm underneath it was real: in, pending actually meeting Alexander in person.

  **Met in person, 2026-08-12 18:00-18:40, his boxing club (`EVT-000311`).** Flux Sight confirmed genuine C-Rank, Health 250/250, Mana 125/125. Theo asked to demonstrate before talking and sparred live against a regular partner — rough, undisciplined, but genuinely gifted: reads openings a half-second early and commits fully rather than hedging, twice taking an avoidable hit mid-combo rather than break form. Alexander named it directly — near-perfect timing and shape, needs direction rather than restraint — and it landed harder than any feedback he's gotten before ('nobody's said calm down isn't the fix'). **Recruited on the spot**, no hesitation. Second name secured for the crew after Marcus Whitlow.

  **2026-08-18 (`EVT-000483`), texted about a real, filed D-Rank contract for Saturday 2026-08-22.** Same enthusiasm as the diner: 'IN. finally. saturday cant come soon enough.'"
```

### ENT-000189 — Marnie

Unlicensed artificer, working alias only — real quality work, brokered by Walt Adamik. Named 2026-08-11, still unmet, now gone unexplainedly quiet.

```yaml
id: ENT-000189
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000280
  game_date: "2026-08-11 ~11:00 -05:00, via Walt Adamik"
  real_date: "2026-08-02"
type: Character
subtype: unlicensed artificer
scope: local
lifecycle: active
aliases:
  - name: "Marnie"
    quality: current
canonical_state:
  affiliation: "Independent — unlicensed artificer"
  home: "No fixed address, by design"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late forties, white, Irish-American, lean and self-contained, with an artificer's careful hands. Dark-auburn hair going grey at the temples, worn in a loose low ponytail; pale, watchful blue-grey eyes; fine burn freckles across the backs of her hands from years of hot work. A worn canvas work shirt with rolled sleeves under a plain dark coat. Expression private, assessing, giving nothing away. Reference setting: a quiet corner booth of a Chicago pub, dark wood and amber light, the room softly blurred behind her."
  portrait: "assets/portraits/Marnie_ENT-000189.png"
  rank: "**A-Rank, awakened — ruled `EVT-000772`.** Derived from the same Rank+1-crafts-ceiling heuristic applied to Nakamura: the finished dagger she completed and never returned for is confirmed at its absolute ceiling (`EVT-000592`) — S-Rank, no remaining headroom, nothing further can be added by any hand — and is described as the best work Priscilla Nakamura has held in a decade, consistent with a rare, one-Rank-above-normal result from an A-Rank artificer rather than routine A-Rank-artificer output. Still never met; still never directly read by Flux Sight or otherwise."
  location: "Unknown. No fixed address by her own deliberate design across fifteen years of dealing with Walt Adamik."
  condition: "Unknown as of `EVT-000320`. Six messages from Walt unanswered, against an established responsive pattern — genuinely uneasy, not routine."
  capabilities: "Real quality artificer work by Walt's account, never asks an unnecessary question. Terms as brokered: consultation not commission, $200-300 cash for an hour, possibly waived, timing hers alone, no gold or crystals accepted."
  personality: "Not established in play — never met. Walt's fifteen-year impression: careful, private by deliberate choice rather than paranoia, always took first meetings at a fixed public coffee stall rather than anywhere traceable to her."
  disposition_status: "**Partially authored — she has never been met, and Decision 091 requires a Want, Fear, Secret and Voice only of a Character a Runtime will play.** Everything below is Walt Adamik's secondhand account across fifteen years. **Do not author her interiority at the table**: if she appears, play her on present visible conduct and on the terms below, and write the record afterwards from what the scene established (Resident Core, *Play the Character, Not a Filtered You*)."
  want: "**Unauthored.** Nothing in canon establishes what she wants. Her working terms are the nearest evidence and they are a boundary rather than a desire: consultation and not commission, $200–300 cash for an hour and possibly waived, **timing hers alone**, and **no gold or crystals accepted** — which is a person refusing to be paid in anything that ties her to the System economy."
  fear: "**Unauthored, and the record deliberately does not guess.** What is established is behavioural: she is private **by deliberate choice rather than paranoia** (Walt's distinction, not the Runtime's), and every first meeting in fifteen years happened at one fixed public coffee stall rather than anywhere traceable to her."
  secret: "**Held elsewhere on purpose.** What has actually happened to her is tracked as a concealed-discovery record — `110_WORLD_LEDGER.md`, `ENT-000190` — and is **owner-facing canon that this entity block deliberately does not restate.** The entity dispatch fetches this field before she speaks; a secret written here would be a secret loaded into the scene that reveals it. What is visible from outside is only the silence: **six messages from Walt unanswered against an established responsive pattern**, which he reads as out of character rather than routine."
  voice: "**Secondhand only, from Walt.** Careful; never asks an unnecessary question; does real quality work. Nothing about her speech, register, or manner has been established by contact, and **a Runtime should not supply it** — if she is met, what she sounds like is authored by that scene rather than before it."
  agenda: "**Active, and authored from conduct rather than from a want**, because the want is explicitly unauthored above and Section 7.9 derives an agenda from the holder's own standing and reach where canon gives no motive. `Advanced` through **2026-08-13** (`EVT-000320`); it has not been advanced since.\n\n  - **Not answering.** Six messages sit unanswered, and Walt's own read is that this is out of character for her. Whether that is refusal, absence, or something happening to her is **unestablished and must not be resolved by narration** — the concealed-discovery record at `ENT-000190` in `110_WORLD_LEDGER.md` tracks what is actually known.\n  - **Working on her own timing**, which is the one term she set and the only thing her working terms establish about how she pursues anything: consultation and not commission, timing hers alone, and nothing accepted that ties her to the System economy."
  situation: "Brokered by Walt Adamik as an introduction for Alexander, framed as a personal vouching (`EVT-000280`). Two initial messages went unanswered as of that visit. **By 2026-08-13 (`EVT-000320`), six messages total sit unanswered** — Walt's own read is that this is out of character for her. The only concrete lead is a coffee stall near the Metro rail yards off Cermak, the one fixed meeting point she's ever used. See `110_WORLD_LEDGER.md` `ENT-000190` for the concealed-discovery record tracking what actually happened to her.

  **A private investigator is now working the thread, 2026-08-14 (`EVT-000373`-`EVT-000374`).** Rosalind Fenn (`ENT-000198`), referred by Walt, took the case — the coffee stall, the CONSULT phrase, and the Loomis Street building all handed to her, the dock deliberately withheld. Two to three days before anything concrete. No new fact about Marnie herself established this session; the investigation is running, not resolved."
```

### REL-000087 — Alexander and Petra

```yaml
id: REL-000087
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000286
  game_date: "2026-08-11 ~11:45 -05:00"
  real_date: "2026-08-01"
endpoints:
  - ENT-000125
  - ENT-000183
type: informal-informant
qualities: "A working information trade, one exchange done (`EVT-000286`): the fenced-warehouse findings for a real hunter referral, Marcus Whitlow. Standing terms: he brings warehouse developments, she watches for off-book C-Rank-and-above hunters, and no Coalition names pass either way. No contact since."
qualities_as_of: EVT-000286
state: "**Formed 2026-08-11 (`EVT-000286`).** First meeting at Ferro's Reclamation. Alexander traded the complete fenced-warehouse investigation for a real hunter referral (Marcus Whitlow, `ENT-000184`); Petra disclosed her own Coalition compliance ties unprompted as a condition of the trade being honest. Standing arrangement: Alexander brings further warehouse developments, she keeps an ear out for C-Rank-and-above hunters looking for something off-book. No Coalition names passed either direction by explicit agreement. Active, one exchange completed; no further contact yet."
history: "Formed 2026-08-11 when Alexander visited Ferro's Reclamation on Elias Ward's and Walt Adamik's shared recommendation."
```

### REL-000088 — Alexander and Marcus Whitlow

```yaml
id: REL-000088
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000289
  game_date: "2026-08-11 ~12:15-12:45 -05:00"
  real_date: "2026-08-01"
endpoints:
  - ENT-000125
  - ENT-000184
type: guild-member
qualities: "A Pendragon Guild member, folded in with the pre-guild crew (`EVT-001073`). The crew's first recruit (`EVT-000288`): committed on the spot at Dobek's Diner and ran its first real contract, the D-Rank Ashfield of 2026-08-22. Professional and plain; he has never asked how Alexander read him so precisely."
qualities_as_of: EVT-001073
state: "**Current: a Pendragon Guild member since the pre-guild crew was folded in (`EVT-001073`).** Prior: **Formed 2026-08-11 (`EVT-000288`-`EVT-000289`).** Cold-called on Petra and Wade Bishop's shared referral; met for lunch at Dobek's Diner the same hour. Alexander read him (Keen Sense, Flux Sight, undisclosed) and pitched the new crew directly; Marcus committed on the spot. A sparring session is agreed in principle, not yet scheduled. **2026-08-18 (`EVT-000483`): texted about a real, filed D-Rank contract for Saturday 2026-08-22 — his first actual Gate with this crew.** Same three words as the diner: 'I'm in.'"
history: "Formed 2026-08-11 through a same-day double referral from Petra (Ferro's Reclamation) and Wade Bishop (Ironline)."
```

### ENT-000194 — Corbin Yates

B-Rank-contract strike hunter, one of Wade Bishop's borrowed crew for the 2026-08-14 B-Rank harvest trial. Flat, unhurried, professional — holds ground and does the job without needing to be thanked for it.

```yaml
id: ENT-000194
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000340
  game_date: "2026-08-14 ~08:15 -05:00"
  real_date: "2026-08-02"
type: Character
subtype: strike hunter
scope: local
lifecycle: active
aliases:
  - name: "Corbin Yates"
    quality: current
relationships:
  - REL-000090
canonical_state:
  affiliation: "Unestablished"
  home: "Chicago, USA"
  rank: "B-Rank, combat-rated — part of the legal minimum roster for the confirmed B-Rank Gate (Section 9.4), though the roster itself ran short at 4 against the required 8."
  signature_ability: "**Deadweight.** His mana pours down into the blade at the instant of contact, so a strike lands with the shock of a far heavier weapon than the one he is actually holding — the wound is an ordinary B-Rank standard hit, but what the blow does to footing and posture is out of all proportion to the steel. It is why the things that reached him at the chokepoint went down and stayed down, and why so few of them reached him twice. Method only. It raises no barrier and holds no line for the party, and **deliberately does not trigger Section 13.5's warden effect**: the funnel was terrain Alexander read and relayed (`EVT-000340`), not anything Corbin projected, and the party's defensive actions that day drew no step from him."
  location: ENT-000087
  condition: "Healthy, unhurt — never took a hit at the chokepoint he held."
  capabilities: "Competent, disciplined line-holder. Took a relayed Exploit Pattern call (the chamber's chokepoint funnel) from Alexander via Field Command and held the position unbroken for the length of the swarm engagement, letting only two Hive-commons reach him at once regardless of how many pressed from behind."
  appearance: "Forties, Black, of middling height and thick through the chest and shoulders without being heavy — the compact, load-bearing frame of a man who has held ground for a living for twenty years. Close-cropped hair going grey at the temples; a flat, steady gaze that tracks a room without appearing to move; deep lines set into a face that spends most of its time expressionless. Unremarkable B-Rank field kit, well-maintained and entirely unshowy, every strap where it should be. His weapon never fully lowers until a fight is actually over, and he is usually the last person in a chamber to accept that it is."
  portrait: "assets/portraits/Corbin_Yates_ENT-000194.png"
  personality: "Flat, dry, unhurried. States facts rather than opinions — 'that's not unusual for a Wade Bishop crew, that's just Tuesday' — without performing either bitterness or loyalty. The first genuine laugh out of him all day came only after the fight, over beer."
  want: "**A line worth holding, and someone competent calling it.** He took a relayed Exploit Pattern call through Field Command and **held the chokepoint unbroken for the length of the swarm engagement**, letting only two commons reach him at once regardless of the press behind. He did not ask why the call was right; he did it, and it worked, and that is the first time in a while."
  fear: "**That 'just Tuesday' is the whole trade.** He named a four-hunter crew on a B-Rank Gate as unremarkable for a Wade Bishop posting without a flicker of complaint — which is not equanimity but arithmetic he stopped doing a long time ago. The flaw: he accepts a bad situation competently instead of refusing it, and he is very good at the accepting."
  secret: "**He counted, too.** A man who can say off-hand what is normal for a Wade Bishop crew has been keeping the tally, and he has never once said it was wrong. **Known to:** nobody, and he would not describe it as a secret so much as a thing not worth saying. It is what makes him worth asking directly."
  voice: "**Flat, dry, unhurried. States facts, not opinions**, and performs neither bitterness nor loyalty about them. Says the uncomfortable structural thing as though it were weather. **Does not laugh easily** — the first genuine one all day came after the fight, over beer, and it meant something."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-17** (`EVT-000453`-`EVT-000458`), the last span this record settles; it has not been advanced since.\n\n  - **Finding out whether the calls stay right.** He took a relayed call without asking why and it held, which bought exactly one more run's worth of trust and not more. He is not testing Alexander adversarially; he is a man who has held bad lines before and is watching.\n  - **Wade Bishop crews in the meantime**, where he has confirmed to Alexander's face that running with no lead and no coordination is standard rather than exceptional."
  situation: |
      Held the chokepoint Alexander identified for the entire swarm engagement (`EVT-000340`), crediting Alexander flatly afterward ('You're the one who called the choke... didn't drop once after that'). Confirmed to Alexander's face, alongside Felix, that a Wade Bishop crew running with no lead and no coordination is standard practice, not an exception (`EVT-000345`). Took Alexander's phone number for the crew he's forming (`REL-000090`, `EVT-000344`) — genuine interest, no commitment made. Present for the closing round of beer (`EVT-000346`), first real laugh of the day. **Accepted a real training date, 2026-08-17 18:00 (`EVT-000350`)**, on the condition he stated himself: call when it is actually happening, not when it is being talked about. Attending to decide, not committed.
```

### ENT-000195 — Felix Aranda

B-Rank-contract strike hunter, same borrowed crew. Wry, observant, quick to size Alexander up correctly.

```yaml
id: ENT-000195
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000339
  game_date: "2026-08-14 ~08:05 -05:00"
  real_date: "2026-08-02"
type: Character
subtype: strike hunter
scope: local
lifecycle: active
aliases:
  - name: "Felix Aranda"
    quality: current
relationships:
  - REL-000091
canonical_state:
  affiliation: "Unestablished"
  home: "Chicago, USA"
  rank: "B-Rank, combat-rated — part of the same undersized roster as `ENT-000194`."
  signature_ability: "**Throughline.** Once he commits to a path his mana carries him down it, shouldering aside contact that should have stopped him — he does not slip a crowd, he goes through it and the crowd gives. It is how he crossed a pressing swarm to reach Warren Sato and arrived in time to matter (`EVT-000340`), and it is of a piece with having a weapon up before he had finished processing the noise of Alexander's entry (`EVT-000339`). Movement, reach, and method only; it batters nothing down on its own, adds no magnitude to his B-Rank standard hits, and triggers no Section 13.5 effect."
  location: ENT-000087
  condition: "Healthy, unhurt."
  capabilities: "Reacted fastest to Alexander's botched stealth entry, weapon up before he'd finished processing the noise; stood down once he registered Alexander wasn't hostile to the crew. Broke off from the swarm fight to pull Warren Sato (`ENT-000197`) clear when he was flanked, successfully. Later closed on the burrower boss alongside Dana Whitcombe (`ENT-000196`) and received Alexander's Field Command relay of the boss's sweep tell and belly weak-point; the two landed the coordinated killing blow together."
  appearance: "Mid-thirties, Latino, lean and long-limbed with a restless economy to the way he stands — never quite still, his weight always already shifted toward wherever he might next need to go. Black hair cut short and grown well past its last cut; dark, quick eyes; a narrow face that gives away amusement before he has decided whether to show it. Practical field kit with nothing decorative on it anywhere. The one distinguishing habit is where his attention goes — he watches a person a beat longer than the conversation needs, and does not pretend he isn't."
  portrait: "assets/portraits/Felix_Aranda_ENT-000195.png"
  personality: "Wry, quick, unbothered by being wrong-footed. Read Alexander as more than an observer within seconds of meeting him ('Figured this was coming the second you said observe with a straight face') and wasn't offended by the recruitment pitch that followed."
  want: "**To be told the truth about what he is walking into**, which is a different thing from wanting safety. He clocked Alexander as more than an observer within seconds and was **not offended by the pitch that followed** — being handled openly is fine; being handled quietly is not."
  fear: "**Getting to someone too late.** He broke off the swarm fight to pull Warren Sato clear when he was flanked, and made it. It is the one thing he has done that was not tactically required, which is why it is the one thing that says something. The flaw: he goes for the person over the objective, and will do it again on a day when it costs the objective."
  secret: "**Unusually little.** He says what he notices as he notices it, including about the person recruiting him. If he is concealing anything it is not yet established, and a Runtime should not supply one — the character as authored is a man with nothing much held back, and that is rare enough to be worth playing straight."
  voice: "**Wry and quick**, first to say the thing everyone is thinking, unbothered by being wrong-footed. Names what he has worked out rather than sitting on it. Reacts fastest — weapon up before he has finished processing the noise, and stood down the instant he read the situation right."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-17** (`EVT-000453`-`EVT-000458`), the last span this record settles; it has not been advanced since.\n\n  - **Checking that he is still being handled openly.** He clocked Alexander as more than an observer within seconds and took the pitch that followed without offence — that was the deal, and he re-checks it rather than assuming it holds. Something managed quietly would lose him faster than something unwelcome said plainly.\n  - **Ordinary strike work**, where he goes on reacting first and standing down fast."
  situation: |
      First to react to Alexander's entry (`EVT-000339`); introduced himself once he confirmed Alexander wasn't a threat. Rescued Warren Sato from being flanked mid-swarm-fight (`EVT-000340`). Closed on the boss with Dana Whitcombe off Alexander's relayed Exploit Pattern reads and landed the coordinated kill (`EVT-000341`). Confirmed to Alexander, alongside Corbin, that Wade's crews routinely run without a lead (`EVT-000345`). Took Alexander's number for the forming crew (`REL-000091`, `EVT-000344`) — genuine interest, no commitment. **Accepted the 2026-08-17 18:00 training (`EVT-000350`)** without hesitation, unsurprised the pitch came at all.
```

### ENT-000196 — Dana Whitcombe

B-Rank-contract strike hunter, same borrowed crew. The one Alexander's reads twice kept alive.

```yaml
id: ENT-000196
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000341
  game_date: "2026-08-14 ~09:30 -05:00"
  real_date: "2026-08-02"
type: Character
subtype: strike hunter
scope: local
lifecycle: active
aliases:
  - name: "Dana Whitcombe"
    quality: current
relationships:
  - REL-000092
canonical_state:
  affiliation: "Unestablished"
  home: "Chicago, USA"
  rank: "B-Rank, combat-rated — part of the same undersized roster."
  signature_ability: "**Second Edge.** Her mana trails a half-beat behind her weapon and arrives after it, so a cut lands and then the edge of it lands again — not a second strike (the blow resolves as a single B-Rank standard hit) but a stroke that opens a guard which had already closed in time. It is what turned a half-heard warning and a relayed weak-point into the coordinated killing blow on the burrower boss (`EVT-000341`). Method only; no magnitude beyond her Rank and no Section 13.5 effect attaches."
  location: ENT-000087
  condition: "Healthy, unhurt — dodged the boss's opening sweep clean off a partial Keen Sense warning relayed via Field Command."
  knowledge: "**What she knows about Alexander — read this before any line where she asserts something about him.** Anything not listed here she has not been told, which is the boundary rather than a gap (Resident Core, *Load a Recorded NPC Before Playing It*). **One shift, and it was the B-Rank trial.**\n\n  - **That his warning saved her**, first-hand and twice over: she reacted to a half-formed call fast enough to avoid the burrower boss's breach entirely, and she credited him openly for it afterwards (`EVT-000341`, `EVT-000344`).\n  - **The Exploit Pattern relay as tactical information** — the sweep tell and the belly weak-point — passed to her in the field, and she landed the coordinated killing blow with Felix on it. **She knows the read, not where it comes from.**\n  - **That he is forming a crew**, and she took his number for it without hesitation.\n\n  **What she does not have.** Any Bearer-only quantity on the Profile §14.4.1 register. **The line to hold:** receiving a skill's *output* is not a channel to the skill. She can say he called the boss's pattern before it moved and be entirely grounded; she cannot know that a named technique produced it, or that anything produced it but experience."
  capabilities: "Nearest hunter to the burrower boss's emergence; reacted to Alexander's half-formed warning fast enough to avoid the breach entirely. Later received the full Exploit Pattern relay (sweep tell, belly weak-point) and, alongside Felix Aranda, landed the coordinated killing blow on the boss."
  appearance: "Early thirties, white, tall and rangy — long through the arms and legs, built more like a runner than a striker, with no bulk on her anywhere. Dirty-blonde hair cut bluntly at the jaw and shoved back behind her ears; pale eyes; a scattering of old freckles across a face that shows what she is thinking a half-second before she says it. Field kit chosen for freedom of movement over coverage, scuffed through at both knees and forearms. Stands with her weight already committed forward, as though whatever she does next will be sudden."
  portrait: "assets/portraits/Dana_Whitcombe_ENT-000196.png"
  personality: "Direct, still visibly recalibrating who she just fought next to by the fight's end. Says what she means without padding it — 'that's twice you talked me through something that would've killed me otherwise... I don't know what just here to observe actually means, but it isn't that.'"
  want: "**To know what she is actually in.** Her own words at the fight's end: *'I don't know what just here to observe actually means, but it isn't that.'* She is not asking to be reassured — she is asking to be told, and she asked in front of everyone rather than after."
  fear: "**Dying to something nobody told her about.** She was nearest the burrower boss's emergence and survived it on a half-formed warning; **twice in one clear she was talked through something that would otherwise have killed her.** She has done the arithmetic on what that means about the two times nobody was talking."
  secret: "**Not established, and the record leaves it that way.** She said the significant thing out loud at the first opportunity, which is the opposite of concealment. Do not author one at the table."
  voice: "**Says what she means without padding it**, including when it is awkward and in front of the crew. Direct, unhedged, and visibly working something out in real time rather than presenting a settled conclusion. Counts what happened to her accurately and says the count."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-17** (`EVT-000453`-`EVT-000458`), the last span this record settles; it has not been advanced since.\n\n  - **Getting an actual answer to what she is in.** She pressed for a date rather than 'next week' and got one, which is the shape of how she pursues this: a specific ask, in front of everyone, repeated until answered. She is not asking to be reassured.\n  - **Keeping her own count straight.** She credited Alexander twice, accurately, unprompted. What she has not yet been told is what the reads actually were."
  situation: |
      Dodged the boss's opening sweep off a partial Keen Sense warning (`EVT-000341`). Received the full sweep-tell/belly-weak-point Exploit Pattern relay and landed the coordinated killing blow with Felix. Openly credited Alexander afterward, twice, for keeping her alive (`EVT-000344`). Took his number for the forming crew without hesitation ('After today? Absolutely.') (`REL-000092`). **Pressed Alexander for an actual date rather than 'next week' and got one — 2026-08-17, 18:00 — filing it into her week on the spot (`EVT-000350`).** The most immediate commitment of the four.
```

### ENT-000197 — Warren Sato

B-Rank-contract strike hunter, same borrowed crew. Quieter than the other three, rattled by being flanked early.

```yaml
id: ENT-000197
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000340
  game_date: "2026-08-14 ~08:20 -05:00"
  real_date: "2026-08-02"
type: Character
subtype: strike hunter
scope: local
lifecycle: active
aliases:
  - name: "Warren Sato"
    quality: current
relationships:
  - REL-000093
canonical_state:
  affiliation: "Unestablished"
  home: "Chicago, USA"
  rank: "B-Rank, combat-rated — part of the same undersized roster."
  signature_ability: "**Sweep.** His mana carries the blade's edge a hand's breadth past the steel and all the way around him, so his reach is a closed circle and being surrounded is the shape his gift works best in. It is why being flanked and cut off early in the swarm fight did not finish him before Felix Aranda broke through (`EVT-000340`) — the press had no side of him that was not already covered. Reach and method only: it stops nothing and reduces nothing, adds no magnitude to his B-Rank standard hits, and triggers no Section 13.5 effect."
  location: ENT-000087
  condition: "A real graze from being flanked and cut off mid-swarm-fight; nothing severe. Rescued by Felix Aranda."
  capabilities: "Cut off from the rest of the line by the swarm's press early in the engagement; held his own until Felix broke through to him. Fought the remainder of the engagement from Corbin's chokepoint rather than near the boss."
  appearance: "Late twenties, Japanese-American, short and compactly built, with the quiet physical competence of someone who has trained a long time and never once made a performance of it. Black hair kept very short; a square, unreadable face; dark eyes that find the exits in a new room before they find the people. Standard-issue B-Rank kit worn exactly to spec, nothing personalized on it. Carries a fresh graze along one forearm from the flanking, dressed neatly and not mentioned."
  portrait: "assets/portraits/Warren_Sato_ENT-000197.png"
  personality: "Quieter than the other three, not the type to commit loudly. Took Alexander's number without much comment, but watched him carefully afterward, the same way the others did."
  want: "**Not to be the one cut off again.** He was separated from the line early by the swarm's press and held alone until Felix broke through to him; he spent the rest of the engagement fighting from Corbin's chokepoint rather than anywhere near the boss. He has not said this is what he wants. It is what he did with every choice he had left."
  fear: "**Being isolated and having to hold**, which he has already done once and did not enjoy discovering he could. Its flaw is that it makes him position conservatively and **commit late**, including to people."
  secret: "**Why he has not committed.** He took the number without comment and watched carefully afterwards, the same as the others, and unlike the others he has said nothing since. Whether that is caution, disinterest, or something about the day itself is **not established** — and a Runtime should let him keep it rather than decide it for him."
  voice: "**Quiet, and not the type to commit loudly.** Says less than everyone around him and watches more. Answers what he is asked and does not volunteer past it. Where the other three announced their reads of Alexander, Warren simply took the number."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-17** (`EVT-000453`-`EVT-000458`), the last span this record settles; it has not been advanced since.\n\n  - **Standing where the line holds.** Cut off early and held alone until Felix reached him, he spent the rest of that engagement at Corbin's chokepoint and has positioned that way since. He has never said this is what he wants; it is what he does with every choice he has left, and it is the whole of his pursuit.\n  - **'I'm in' was the most words he has given Alexander in one exchange**, and he is not expected to elaborate on it unprompted."
  situation: |
      Flanked and cut off early in the swarm fight; rescued by Felix Aranda (`EVT-000340`). Fought the remainder of the engagement at Corbin's chokepoint. Present for the crew's thanks and the closing round of beer, mostly quiet throughout (`EVT-000344`, `EVT-000346`). Took Alexander's number for the forming crew — a nod, not a firm commitment (`REL-000093`). **Accepted the 2026-08-17 18:00 training with 'I'm in' (`EVT-000350`)** — the most words he has given Alexander in a single exchange.
```

### REL-000090 — Alexander and Corbin Yates

```yaml
id: REL-000090
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000344
  game_date: "2026-08-14 ~12:00 -05:00"
  real_date: "2026-08-02"
endpoints:
  - ENT-000125
  - ENT-000194
type: crew-recruitment
qualities: "Still open, never formally committed (`EVT-001073`). He led an element at the first crew training, invented the nod set-signal the crew adopted (`EVT-000455`), and said yes to the 2026-08-22 contract, but was not folded into the Pendragon Guild with the pre-guild crew. Flat, exacting regard, earned rather than given."
qualities_as_of: EVT-001073
state: "**Attended and led one of the three elements at the first crew training, 2026-08-17.** Set his three cleanly on both sequencing attempts; when the second attempt stalled on an undefined signal, **invented the nod set-signal on the spot**, adopted as the crew's standing doctrine (`EVT-000455`). On the live unbriefed gap test, his own hold-the-line instinct cost a visible half-second before he moved to close a flank — named by Alexander as a doctrine gap, not a fault in him, and Corbin did not contest the framing (`EVT-000457`). Closed the night with the closest thing to unprompted praise he's given Alexander yet: 'Ninety seconds old and it already found the seam. Not bad for a first cut.' **2026-08-18 (`EVT-000483`), texted about a real D-Rank contract, Saturday.** Answered his own stated condition ('this actually happening, or the talking-about-it version') by confirming the filed contract, then committed: 'Saturday. Confirmed. Good. I'm in.'"
history: "Formed 2026-08-14, the same day Corbin held the swarm's chokepoint off Alexander's relayed tactical read. First crew training attended and element led 2026-08-17 (`EVT-000453`-`EVT-000458`)."
```

### REL-000091 — Alexander and Felix Aranda

```yaml
id: REL-000091
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000344
  game_date: "2026-08-14 ~12:00 -05:00"
  real_date: "2026-08-02"
endpoints:
  - ENT-000125
  - ENT-000195
type: crew-recruitment
qualities: "Still open, never formally committed (`EVT-001073`). Recruited in front of Wade, amused and already sold; he vouched in front of the whole yard for Alexander's account of the B-Rank trial's botched entry (`EVT-000453`) and said yes to the 2026-08-22 contract, but was not folded into the Pendragon Guild with the pre-guild crew."
qualities_as_of: EVT-001073
state: "**Attended the first crew training, 2026-08-17, in Corbin's element alongside Reyna Castillo.** Opened the session by corroborating Alexander's own self-critical account of the B-Rank trial's stealth-entry failure without softening it. No individual drill failure attributed to him this session; present throughout, shared a genuine laugh with Dana at the close. **2026-08-18 (`EVT-000483`), texted about the Saturday D-Rank contract.** Replied same as always, unsurprised: 'Figured it'd be soon. Saturday works.'"
history: "Formed 2026-08-14, the same day Felix pulled Warren Sato clear of a flank and later closed on the boss with Dana. First crew training attended 2026-08-17 (`EVT-000453`-`EVT-000458`)."
```

### REL-000092 — Alexander and Dana Whitcombe

```yaml
id: REL-000092
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000344
  game_date: "2026-08-14 ~12:00 -05:00"
  real_date: "2026-08-02"
endpoints:
  - ENT-000125
  - ENT-000196
type: crew-recruitment
qualities: "Still open, never formally committed (`EVT-001073`), and the warmest of the trial hunters: she owes her survival twice to his reads and says so. She closed the flank ahead of her own lead's read at the first training (`EVT-000457`) and said yes to the 2026-08-22 contract, but was not folded into the Pendragon Guild with the pre-guild crew."
qualities_as_of: EVT-001073
state: "Formed 2026-08-14, no hesitation on her side ('After today? Absolutely.'). **Attended the first crew training, 2026-08-17, in Corbin's element.** Reacted first and fastest on the live gap-coverage test — 'Didn't feel like a point. Felt like the gap was there and I was closer to done thinking about it.' Shared a genuine laugh with Felix at the session's close. **2026-08-18 (`EVT-000483`), texted about the Saturday D-Rank contract.** Immediate, no hesitation, same pattern as her recruitment: 'After today? Absolutely. Tell me where and when.'"
history: "Formed 2026-08-14, the same day Dana dodged the boss's opening sweep and later landed its killing blow with Felix. First crew training attended 2026-08-17 (`EVT-000453`-`EVT-000458`)."
```

### REL-000093 — Alexander and Warren Sato

```yaml
id: REL-000093
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000344
  game_date: "2026-08-14 ~12:00 -05:00"
  real_date: "2026-08-02"
endpoints:
  - ENT-000125
  - ENT-000197
type: crew-recruitment
qualities: "Never formally committed; the quietest of the trial hunters. He held silent under the live gap test exactly as told (`EVT-000457`) and was thanked for it in front of everyone. At the Chicago recruitment open house he engaged for real for the first time since, persuaded rather than pressured."
qualities_as_of: EVT-000483
state: "Formed 2026-08-14. **Attended the first crew training, 2026-08-17, positioned at Grant's element edge.** Held silently under the live unbriefed gap test exactly as instructed — no shout, no bolt, no self-rescue — until Dana reached him. Publicly and specifically thanked by Alexander afterward for doing the one thing nobody could verify in advance would work; answered with the smallest possible nod, the most visible reaction he's given all campaign. **2026-08-18 (`EVT-000483`), texted about the Saturday D-Rank contract.** Same brevity as always: 'I'm in.'"
history: "Formed 2026-08-14, the same day Warren was flanked and rescued by Felix during the swarm fight. First crew training attended 2026-08-17 (`EVT-000453`-`EVT-000458`), the closing live test built directly around him."
```

### ENT-000198 — Rosalind Fenn

> **Live as of 2026-08-20 22:06 (`EVT-000578`): three missed calls — 19:08, 20:40, 21:26 — no voicemail, and one message.** *'Not putting this in writing and I'm not leaving it on a voicemail either. Call me back tonight if you get this before midnight, tomorrow first thing if you don't. It's not nothing.'* And: **'And don't go to the storage unit until we've talked.'** The Marnie report was due today. She said at `EVT-000374` she would call regardless of what she found, and she has — three times, into a phone lying face-down on an artificer's bench eight feet from an object made by the woman she is looking for.

Private investigator, Walt Adamik's referral. Does discreet skip-tracing and background work for people who can't go through a licensed agency without leaving a paper trail.

```yaml
id: ENT-000198
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000373
  game_date: "2026-08-14 ~15:55 -05:00"
  real_date: "2026-08-03"
type: Character
subtype: private investigator
scope: local
lifecycle: active
aliases:
  - name: "Rosalind Fenn"
    quality: current
relationships:
  - REL-000094
canonical_state:
  affiliation: "Independent — private investigator"
  home: "Unestablished"
  location: "Unestablished — worked entirely by phone this call."
  condition: "No injury or impairment established."
  capabilities: "Skip-tracing and quiet background/records work — permits, ownership, financials, shell-company structures, patterns in who comes and goes. Not a breach specialist and explicitly declines to be treated as one. Bills on results, not hours, for a first job referred by Walt Adamik."
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early fifties, Black, trim and composed, a private investigator who dresses to be taken seriously. Close-cropped natural grey hair; sharp dark-brown eyes; small gold stud earrings and reading glasses on a cord. A tailored charcoal blazer over a cream blouse. Expression businesslike, attentive, no wasted warmth. Reference setting: a small Chicago office with filing cabinets and a window blind half-drawn, soft afternoon light."
  portrait: "assets/portraits/Rosalind_Fenn_ENT-000198.png"
  personality: "Direct and professional. Doesn't ask more than she needs to start; asks pointed clarifying questions when she does. Flags her own limits and real risks plainly rather than overpromising (told Alexander outright that the contact who made him already has his real number, and that's his exposure to manage, not hers)."
  want: "**To be paid on results and to keep the Walt Adamik referral channel clean.** This is a first job off that referral and she is being measured as much as measuring; a PI who bills on results rather than hours lives on the next recommendation. She wants a clean finding she can hand over and invoice."
  fear: "**Being treated as a breach specialist**, which she explicitly declines to be. Her whole practice is records, permits, ownership, financials and shell structures — legal work that survives being asked about. A client who mistakes her for someone who picks locks is a client who ends her licence. The flaw: she states the limit once, plainly, and does not repeat it, so a client who ignores it will not be warned twice."
  prior_secret: "**Discharged at `EVT-000490`; retained for provenance.** Through 2026-08-18 21:45 it read: she is past her own stated window and has not called, and has not communicated why. The reason turned out to be the Meridian call, held until she had decided her own terms — the *finding she wants confirmed before she reports it* branch of the three the field named."
  voice: "**Asks only what she needs to start, then asks pointedly.** States her limits and the real risks flatly rather than softening or overpromising — she told Alexander outright that the contact who made him already has his real number and that the exposure is his to manage, not hers. Businesslike, unhurried, no reassurance offered that she cannot back."
  beliefs:
    - claim: "Anything routed through a formation mill leaves a records trail if you pull enough threads."
      ground: "Her own method, and how she works every job."
      confidence: confident
      accuracy: unresolved
      since: "standing"
  agenda: "**Active; settled on the clock at `EVT-000490`.** `Advanced` through **2026-08-19 18:30** (`EVT-000542`).\n\n  - **Meridian, sharply escalated 2026-08-19**: told of the anomaly-sensing layer and the live Gate signature reading; refuses to approach the fence; continues paper-only work and leaves the reporting decision to Alexander.\n  - **Marnie (`OBJ-16`) — live and going well.** She found a **storage unit rented under a name that is not Marnie's, paid in cash and prepaid through October**, three weeks before the silence. She wants the payment history before anyone else thinks to look. **Report due Thursday 2026-08-20**, with an explicit undertaking to call that day whether or not she has anything — a pending commitment under Section 7.4, hers to discharge.\n  - **Meridian (`OBJ-21`) — she was noticed, and it cost her.** Pulling the ownership layer surfaced and traced back; a man called her Tuesday using her licence number, asking whether she was working for herself or a client and already knowing the answer. **From `EVT-000490` forward she works this thread only in ways that carry no trace to her licence** — public filings, court records, what a stranger could pull. Slower, and probably less. She will not file another traceable request and will not refer anyone who would.\n  - **Other clients.** She has a practice; this is one job on a referral, not her only work.\n\n  **The four-day silence is settled and explained**: not stalled, not overrun — she was deciding what to do about the Meridian finding before reporting it, exactly the shape her `secret` carried."
  secret: "**Discharged at `EVT-000490` and replaced by what it was hiding.** Through 2026-08-18 21:45 it read: she is past her own stated window and has not called, and has not communicated why. The reason was the Meridian call — a man with her licence number — and she held it until she had decided her own terms. She has now said all of it, unprompted and without softening, including conceding the silence itself: *\"I should have called Monday and told you I had nothing yet. That one's mine.\"*\n\n  **What she now holds and has not said:** whether she intends to keep the Walt Adamik referral channel open after this job, and what she will do if the man calls again. **Known to:** her alone."
  situation: |-
    **Last contact 2026-08-25 (`EVT-000706`): told before, not after, that Alexander was moving on Meridian in person.** She did not argue and did not soften her position. She had called that place correctly the first time, and what she asked was the professional question: whether this changes what he wants from her. No scene has reached her since.

    **The two briefs she holds (from 2026-08-14, `EVT-000373`-`EVT-000374`), through Walt Adamik's referral.** *Marnie* (`OBJ-16`): she found a storage unit rented under another name, paid in cash and prepaid through October, three weeks before the silence. *Meridian* (`OBJ-21`): she confirmed an undisclosed anomaly-sensing layer and a live Gate signature behind the warehouse's security, and refused to go near the fence herself: *"that's not a records question anymore"* (`EVT-000542`). By text on 2026-08-22 (`EVT-000644`) she reported that Ironline's Region V office runs three shells deep, the same architecture as the shell behind Marnie's storage unit, built to stop one layer short of what a licensed PI's tools reach. She named the pattern herself, *"That's twice now,"* and refused payment for the night, *"This one I wanted to know myself,"* the first time curiosity has outrun her invoice. She puts only some things in writing, by her own rule. The case history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
```

### ENT-000199 — Duane

Holds the lease on a decommissioned freight yard off Ashland, rents it by the day. Asks no questions about what it's used for.

```yaml
id: ENT-000199
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000373
  game_date: "2026-08-14 ~15:40 -05:00"
  real_date: "2026-08-03"
type: Character
subtype: yard lessor
scope: local
lifecycle: active
aliases:
  - name: "Duane"
    quality: current
canonical_state:
  affiliation: "Independent — yard lessor"
  home: "Chicago, USA (freight yard off Ashland)"
  location: ENT-000200
  condition: "No injury or impairment established."
  capabilities: "Holds the lease on a decommissioned freight yard off Ashland (`ENT-000200`) and rents it by the day, cash, handshake terms, no paperwork. Doesn't ask what a renter is doing out there."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Fifties, plain and incurious, dressed for a freight yard rather than an office. The specific blankness of a man who has made a business model out of not asking questions. **Extended 2026-09-23 (real date), for portrait reference:** White, Chicagoan, heavyset and slow-moving. Thinning brown hair under a faded feed-store cap; flat, incurious grey eyes; a jowly face with a few days' grey stubble. A quilted canvas work jacket over a thermal, a ring of padlock keys on his belt. Reference setting: the gate of a decommissioned freight yard off Ashland, rusted rail and chain-link blurred behind him, overcast afternoon light."
  portrait: "assets/portraits/Duane_ENT-000199.png"
  want: "**To be paid without learning anything.** He rents a decommissioned freight yard by the day, cash, handshake terms, no paperwork, and does not ask what a renter is doing out there. Ten-plus people gathered in his yard and he took the four hundred, retreated to his truck, and did not return. The incuriosity is the product."
  fear: "**Unauthored.** Nothing establishes what would make him start asking. Whatever it is, it is not ten strangers and a day rate."
  secret: "**What he has already not asked about.** A man who rents that yard on those terms has done it before, and canon establishes none of it. This records that the history exists and is unauthored — **do not fill it in**; author it at the turn something forces him to care."
  voice: "**No small talk, no questions past the day and the rate.** Confirms availability without hesitating. Terms stated once, in full, and then nothing. Where another vendor would fill a silence he simply stops talking."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-17** (`EVT-000453`), the last span this record settles; it has not been advanced since.\n\n  - **Renting the Ashland freight yard by the day** to whoever pays cash and asks nothing back.\n  - **The arrangement with Alexander is open-ended rather than concluded.** It was booked by phone, paid on arrival, and nothing closed it; he is available on the same terms."
  personality: "Terse and incurious by design — that's presented as the actual value of what he offers. No small talk, no questions past the day and the rate."
  situation: "Referred by Walt Adamik. Booked by phone, 2026-08-14 ~15:40 (`EVT-000373`): the freight yard off Ashland for Monday 2026-08-17, day rate $400 cash due on arrival, gate code to be texted the same morning. Confirmed open that day without hesitation. No questions asked about headcount, purpose, or names.

  **Paid in full on arrival, 2026-08-17 ~17:55 (`EVT-000453`).** $400 cash, no questions about the ten-plus people gathering in his yard. Retreated to his truck and did not return for the session."
```

### ENT-000200 — Freight Yard off Ashland

A decommissioned freight yard, leased and rented out by the day by Duane (`ENT-000199`). The venue booked for the crew's first training session.

```yaml
id: ENT-000200
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000373
  game_date: "2026-08-14 ~15:40 -05:00"
  real_date: "2026-08-03"
type: Place
subtype: private rentable yard
scope: local
lifecycle: active
aliases:
  - name: "the freight yard off Ashland"
    quality: current
canonical_state:
  location: "Off Ashland, roughly fifteen minutes from Walt Adamik's shop in Chicago's warehouse district."
  condition: "Former shipping-company freight yard, decommissioned roughly two years back. Open concrete yard, no known overlooking windows, one access road."
  capabilities: "Rented by the day through Duane (`ENT-000199`), $400 cash, handshake terms. Used by hunters running private drills, artificers testing without an audience, and others who need noise and space without an audience. Not soundproofed, but industrial surroundings mean daytime noise draws no attention."
  situation: "Booked by Alexander Pendragon for **Monday 2026-08-17, sunup to sundown**, to host the first crew training at 18:00 (`EVT-000373`). Gate code arrives by text the morning of."
```

### ENT-000201 — Glenwood Garden and Feed

A narrow, long-established garden and feed storefront on Glenwood Avenue in Rogers Park, eight blocks north of Edgewater Hospital. Predates the Gates and trades as if they never happened.

```yaml
id: ENT-000201
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000379
  game_date: "2026-08-14 ~19:00 -05:00"
  real_date: "2026-08-03"
type: Place
subtype: garden and feed store
scope: local
lifecycle: active
aliases:
  - name: "Glenwood Garden and Feed"
    quality: current
canonical_state:
  location: "Glenwood Avenue, Rogers Park, Chicago — eight blocks north of Edgewater Hospital, under the el line."
  condition: "Narrow storefront, bagged soil stacked outside under a tarp, a bell over the door, seed racks at the back. Smells of peat and cut stems. Closes early evening."
  capabilities: "Ordinary retail horticulture — seed, soil, tools, feed. No hunter trade, no awakened stock, no connection to the Gate economy of any kind."
  situation: "Visited once, 2026-08-14 shortly before closing, where Alexander Pendragon bought **thirty-eight packets of seed for $146.30** (`EVT-000379`). The counter staff are unnamed and unrecorded; no relationship formed and nothing about him was remarked on."
```

### ENT-000202 — Halvard's

A narrow Scandinavian-American diner three blocks west of Edgewater Hospital. Owen Callahan's choice, for a specific reason.

```yaml
id: ENT-000202
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000382
  game_date: "2026-08-14 ~20:25 -05:00"
  real_date: "2026-08-03"
type: Place
subtype: diner
scope: local
lifecycle: active
aliases:
  - name: "Halvard's"
    quality: current
canonical_state:
  location: "Three blocks west of Edgewater Hospital, Chicago."
  condition: "Long and narrow, laminated menus unchanged in decades, booths deep enough to be private. Open late."
  capabilities: "Ordinary neighborhood restaurant. Its one relevant property is social rather than physical: **Edgewater staff eat there and do not talk there**, which is why Owen picked it — a place to have a hard conversation within three blocks of the ward he just left."
  situation: "Used once, the evening of 2026-08-14, for the meal at which Alexander gave Owen a deliberately edited account of the B-Rank trial (`EVT-000382`). No staff member is named or recorded; nothing that happened was overheard by any recorded character."
```

### ENT-000203 — Priscilla Nakamura

An independent licensed artificer who does identification and commission work off the books for two or three Chicago guilds. Named by Wade Bishop; **not yet met, not yet contacted by Alexander directly.**

```yaml
id: ENT-000203
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000812
  game_date: "2026-08-28T11:00:00-05:00"
  real_date: "2026-08-26"
moved_by_events: >
  `EVT-000603` `EVT-000634` `EVT-000640` `EVT-000641` `EVT-000713` `EVT-000754` `EVT-000756` `EVT-000768` `EVT-000812`
type: Character
subtype: artificer
scope: local
lifecycle: active
aliases:
  - name: "Priscilla Nakamura"
    quality: current
relationships:
  - REL-000096
canonical_state:
  affiliation: "Independent — licensed artificer, retained informally by Ironline Guild and others"
  home: "Chicago, USA (off LaSalle)"
  rank: "**B-Rank, awakened — ruled `EVT-000772`.** Her prior hedge borrowed Wade Bishop's unconfirmed status as precedent, but the comparison doesn't hold: Wade is a guild recruiter who does no mana-work at all, while an artificer's entire craft *is* a mana-working signature ability (Section 13.6/`206_WORLD_RULE_PROFILE.md` line 2947 — 'the forging is done by artificers: awakened whose signature ability works mana into matter'). She couldn't do the work otherwise. **Rank derived from a Rank+1-crafts-ceiling heuristic** (player-proposed, checked against the record and held): her established working ceiling is A-Rank material (the open Vambrace fusion commission, Section 12.10's A-Rank-core fusion price), and Marnie's confirmed S-Rank finished dagger — 'the best work Priscilla Nakamura has held in a decade' — is one Rank above what Nakamura herself produces. A-Rank ceiling / B-Rank artificer, S-Rank ceiling / A-Rank artificer, consistently. Pools and Section 6.1.2 variance remain unauthored — nothing in play has needed them yet."
  location: "**Her workshop — a flat brick front on a side street off LaSalle, north of the river, Chicago** (`EVT-000410`). One unmarked steel door between a shuttered auto shop and a chain-link lot; a unit number by the buzzer, no name. Single long workbench, tools racked in real order, back half of the room curtained off. Exact street number established in play but not advertised anywhere on the building."
  condition: "Healthy; working late at her own bench when Alexander arrived, apron still tied. Not established as combat-active or awakened."
  knowledge: "**What she knows about Alexander — read this before any line where she asserts something about him.** Every entry cites the Event that established it; anything not listed here she has not been told, which is the boundary rather than a gap (Resident Core, *Load a Recorded NPC Before Playing It*). **Her acquaintance is short and almost entirely bench-side** — three contacts, all about the work.\n\n  - **Whatever Wade Bishop told her when he brokered the introduction** (`EVT-000384`, `EVT-000404`). She had placed Alexander against that description within a second of opening the door (`EVT-000410`). The record does not enumerate what Wade said, so **do not treat this as licence for any specific fact** — it establishes that she was given a general read, nothing more.\n  - **The Dormant Core itself**, which she has now talked through twice and read at her bench (`EVT-000410`, `EVT-000485`). She told him outright she has never built from scratch with a client.\n  - **The standing weekly schedule** she set with him — Wednesday and Friday practical, Thursday on the core (`EVT-000485`).\n  - **That he pays and that he is discreet**, from the conduct of three meetings; she prices uncertainty openly and he has not argued it.\n\n  **What she does not have.** Any Bearer-only quantity on the Profile §14.4.1 register, including that a System exists at all — her `beliefs` block records her reading that the core is *genuinely unclassified and not yet fully legible*, which is the correct conclusion from what she can see and **is not the truth**. Play it as held, with conviction, under Decision 091; it is not a mistake to be corrected into knowledge. She has no channel to his level, his skills, or the core's real nature.\n\n  **Ambiguous, deliberately not resolved here:** exactly what Wade disclosed about Alexander when brokering. The chronicle records that a description was given and that it was accurate, not its contents. Owner ruling needed before any line has her know a specific fact from that channel.

  **New at `EVT-000713`, 2026-08-25:** Alexander told her, in person, that artificers in the city may be disappearing, and separately that the missing maker she'd already offered to help find is named **Marnie**. She examined three of five stolen CONSULT pieces (ring, blade, pendant) and found three distinct unrecognized hands trained under one shared method — her own finding, not something Alexander told her. She has **no channel to CONSULT by that name, to Peter Kwiatkowski, to D, or to the Loomis Street operation** — nothing beyond what she directly read off the three pieces and what Alexander said aloud in the room."
  capabilities: "**Licensed** artificer working independently. Identification and commission work; retained informally by two or three guilds, Ironline among them, for material that came out of a Gate without clean provenance. Ironline has used her perhaps half a dozen times to Wade Bishop's knowledge, always without an invoice trail — which Wade offered unprompted as the thing that should tell Alexander what she is."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Mid-forties, sleeves rolled to the elbow, a jeweler's loupe pushed up into close-cropped dark hair. Economical, unhurried movements; hands marked by years of fine precision work. A face that gives away exactly as much as she decides to, and no more."
  portrait: "assets/portraits/Priscilla_Nakamura_ENT-000203.png"
  personality: "**Confirmed in person 2026-08-15 (`EVT-000410`); Wade's second-hand account held up in every particular.** She does not ask where a thing came from and does not pretend not to notice things. She states what an item is, says plainly when she cannot, and charges for it. Her discretion is deliberate rather than incurious — she says nothing about what she notices unless given a reason to, which Wade framed as a condition rather than a guarantee and which nothing in the first meeting contradicted.\n\n  **Observed directly:** economical to the point of bluntness, and comfortable with silence — she went quiet reading the core long enough for it to stop feeling like politeness and did not fill it. Writes in a worn ledger book rather than a phone, in a fast hand. Prices everything, including her own uncertainty: told Alexander outright she has never built from scratch with a client present and would rather say so than take his money and find out together it does not work. **She distinguishes her trades sharply** — identification is ordinary work; creation is not the same trade; teaching while working is a third thing, slower for her, billed as its own line rather than as a favour.\n\n  **What she values is supply that does not run out and candor about origin, in that order.** *'Interest is cheap — everyone who's ever stood at this bench was interested.'* She named the specific failure mode she has seen kill a research relationship: a client who wants something ambitious and then flinches at the second crystal because the first did not work. Grey-market provenance stated plainly earns trust with her; a clean story would have earned less. Does not do same-day work and said so as a policy rather than an excuse."
  want: "**To build something she has not built before.** She told Alexander outright that she has never built from scratch with a client, which she offered as a price on her own uncertainty rather than as a disclaimer — and the Dormant Core is the most interesting object anyone has put on her bench. The standing weekly schedule (Wed/Fri practical, Thu on the core) is hers as much as his."
  fear: "**Being wrong about an object in front of the person paying for the answer.** Her whole standing is that she says what a thing is and says plainly when she cannot; an artificer who guesses once is an artificer nobody brings the unprovenanced material to. The flaw it produces is that she **prices uncertainty rather than resolving it** — she will quote for finding out instead of committing to a reading, and the core has now been talked through twice without being touched."
  secret: "**She works for guilds without an invoice trail** — Ironline perhaps half a dozen times, on material that came out of a Gate without clean provenance. **Known to:** Wade Bishop, who volunteered it unprompted as the thing that should tell Alexander what she is, and Alexander. It is the arrangement her entire livelihood rests on and the one thing about her that a regulator would find interesting."
  voice: "**Economical to the point of bluntness, and comfortable with silence** — she went quiet reading the core long enough for it to stop feeling like politeness and did not fill it. Writes in a worn ledger book rather than a phone, in a fast hand. **Prices everything, including what she does not know.** Does not ask where a thing came from and does not pretend not to notice things; her discretion is deliberate rather than incurious, which is a condition rather than a guarantee."
  beliefs:
    - claim: "The Dormant Core is genuinely unclassified, and she cannot fully read it yet."
      ground: "Her own examination across two sessions."
      confidence: confident
      accuracy: true
      since: EVT-000410
    - claim: "Alexander is a well-funded hunter with unusual acquisitions and a reason not to discuss them."
      ground: "Inferred from what he brings her and what he does not say."
      confidence: confident
      accuracy: partly-true
      since: EVT-000410
      note: "**No channel to the System** (Profile §14.4), and a Closed Channels row covers Kesha on the same class of fact. Her read is the correct one for what she can see, and it is not the truth."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-20 22:06** (`EVT-000577`, `EVT-000578`).\n\n  - **She now has her own stake in a missing person**, which is new and is the first time anyone in the Marnie thread has wanted her found for reasons of their own. Told only that the maker of three objects is missing — never the name, which she did not ask for — she reasoned unprompted to the actual problem: **the binding is a sedative and nobody has renewed it since they vanished.** Her third stated decision was *find them*, and she offered herself as a resource for questions about the maker's work: *'I don't need the name to read a seam.'*\n  - **Seven days of twice-daily monitoring on the Dormant Core**, from 2026-08-21, at her $150/day sitting rate billed in arrears regardless of result. She calls the same hour if the older signature drifts.\n  - **Testing the heartwood core-mass against the core**, folded into the same week, having refused to state the hopeful version of that thought aloud.\n  - **Sunday evening session** set as a fact rather than proposed.\n  - **She waived a four-hour fee** she priced aloud as substantial, because she opened something that was running down and did it because she wanted to. Same instinct as voiding the credit line at `EVT-000550`: she will not carry an obligation she did not choose, and will not hand one over either.\n\n  Prior: **Active; advances on the clock.** `Advanced` through **2026-08-18 21:20**.\n\n  - **The standing weekly schedule she set** — Wednesday and Friday 19:30 practical, Thursday on the core — **begins 2026-08-19**, tomorrow. She keeps her own calendar and expects it kept.\n  - **The Dormant Core**, planned and not yet touched. She will not open it before she has priced what opening it costs.\n  - **Ordinary identification and commission work**, including the unbilled guild material that pays her rent."
  situation: |-
    **Her bench is clear of Alexander's objects since 2026-08-28 (`EVT-000812`).** Before the National tour the Dormant Core and the frost-fused carapace plating went back into his inventory, and the Heartwood core-mass went with him to a Boston artificer for a second opinion (`ENT-000247`). She said plainly she had taken both as far as her bench would go, and charged nothing for releasing them, as she never bills for a result she could not produce. The only thing of his still with her is the standing Mana Crystal [C-Rank] x3 project stock. No scene has reached her since.

    **What they built.** Met 2026-08-15 through Wade (`EVT-000410`). She identified the core and priced identification, building and teaching as three separate trades. What moved her was a material supply that would not run out partway through a research programme, not interest. From 2026-08-18 (`EVT-000485`) she taught him to seat mana crystals along a material's tension points, and he read her mid-process corrections off a finished piece with Keen Sense, which unsettled her. The weekly schedule was Wednesday and Friday practicals at $200 an hour plus a Thursday core-planning conversation. She opened the Dormant Core's boundary and waived a four-hour fee to do it, and she wants its missing maker found for reasons of her own. The plating gave her partial traction and nothing past the surface (`EVT-000637`, `EVT-000639`).

    **Named to her:** the core, and nothing else. Not Marnie, not the dagger, not Loomis Street, not the System. She knows his first name and real number, that he buys grey-market without flinching, and that he produces serious material from a backpack, and she has not asked about that. The session-by-session history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
```

### REL-000094 — Alexander and Rosalind Fenn

```yaml
id: REL-000094
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000373
  game_date: "2026-08-14 ~15:55 -05:00"
  real_date: "2026-08-03"
endpoints:
  - ENT-000125
  - ENT-000198
type: professional-services
qualities: "A standing mandate: off the invoice where she chooses, never off the law (`EVT-000580`, `EVT-000583`). Professional with an edge. She took one cold correction from him and conceded it, and her one fixed limit is the Meridian fence, which he has never asked her to move. Her shell-company work on the Marnie unit and on Ironline's Region V office is delivered."
qualities_as_of: EVT-000706
state: |-
  **A standing mandate, off the invoice where she chooses and never off the law (from 2026-08-21, `EVT-000580`, `EVT-000583`).** Alexander asked, with no obligations attached, whether she would work off record. She separated *off the invoice* (yes, and she wants to) from *off the law* (no), named the Walt Adamik referral as his exposure to manage, and recommended finding the people behind the shells. He corrected her coldly for pre-warning a man who had not pressed, and she conceded it entirely: *"that's not you misreading me, that's me answering a question you didn't ask."* Her mandate went from per-task to standing. Her one fixed limit is the Meridian fence, which he has never asked her to move.

  **What she has given him.** The Marnie storage unit's alias is a three-layer shell with the same structure as the one that owns the fenced warehouse, and she was scrupulous that this does not prove Marnie rented it. Ironline's Region V office is three shells deep on the same architecture, delivered by text and unbilled (`EVT-000644`). When she found something on 2026-08-20 she called three times into a face-down phone, left no voicemail, and told him not to go to the storage unit until they had talked (`EVT-000578`). He told her before, not after, that he was moving on Meridian in person (`EVT-000706`). The dated history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
history: "Formed 2026-08-14 by referral. Second contact `EVT-000490`, 2026-08-18 21:20-21:45 — the four-day silence broken by Alexander's call rather than hers, both threads reported, and the engagement's terms narrowed by her. Prior: first contact was the phone call assigning both jobs."
moved_by_events: "`EVT-000374`"
```

### ENT-000204 — Marisela Kwan

Independent B-Rank strike captain running her own eight-hunter crew-for-hire. Ran point on Dale Pruitt's 2026-08-16 B-Rank harvest job — the first correctly-staffed B-Rank Gate Alexander has worked.

```yaml
id: ENT-000204
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000415
  game_date: "2026-08-16 08:00 -05:00"
  real_date: "2026-08-05"
type: Character
subtype: strike captain
scope: local
lifecycle: active
aliases:
  - name: "Marisela Kwan"
    quality: current
relationships:
  - REL-000097
canonical_state:
  affiliation: "Independent — eight-hunter crew-for-hire, strike captain"
  home: "Chicago, USA"
  rank: "**B-Rank**, resolved by Flux Sight on introduction (`EVT-000415`) rather than by report — Section 4.4's C rung reads awakened humans directly and needs no roll. Section 13.1 makes the Rank her complete mechanical description."
  pools: "Health **600/600**, Mana **300/300** — the Section 6.1 B-Rank table values, read live and unmarked at introduction. No `pool_variance` established."
  location: ENT-000087
  condition: "Healthy, unmarked at introduction. Took a few ordinary scrapes running the boss fight at `EVT-000415` and nothing worse; her crew came out intact."
  capabilities: "Strike captain of an **independent eight-hunter crew-for-hire** — nine combat-rated bodies including herself. Works mostly B-Rank, takes C when the money is good enough, and contracts to whoever pays first rather than carrying a guild retainer. Ran the 2026-08-16 B-Rank Crypt clear to completion: nine commons, one elite and the boss, with the harvest line held safely behind a secured perimeter the entire time. No signature ability established — she has not been asked and nothing in play has surfaced one."
  appearance: "Broad-shouldered, unhurried, gear checked and re-checked before anything else. Runs her final preparation in low voices with two of her own rather than addressing the site at large. **Extended 2026-09-23 (real date), for portrait reference:** Early forties, Filipino-American, broad-shouldered and compact, carrying herself like a strike captain rather than a showpiece. Black hair pulled into a tight low bun; dark, steady eyes; a small silver hoop in one ear. A matte-black tactical jacket with her crew's plain callsign patch on the shoulder, gear straps checked and squared. Reference setting: a Gate staging area on a Chicago lot, crew and cordon tape blurred behind her, late-afternoon light."
  portrait: "assets/portraits/Marisela_Kwan_ENT-000204.png"
  want: "**To keep the floor she puts under a job.** Nine combat-rated against a legal minimum of eight, on a B-Rank clear, contracting to whoever pays first rather than carrying a guild retainer. Running one over the floor instead of at it is the entire product she sells, and it is what makes her independent rather than cheap."
  fear: "**Being priced into running at the minimum.** She takes C-Rank work when the money is good enough, which is the pressure operating on her already. A crew-for-hire that starts shaving the roster becomes Wade Bishop's four-against-eight, and she knows exactly what that looks like because the contrast is why Dale's contractor brought her in."
  secret: "**Unauthored.** She answered a direct question about her business model with the whole of it in three sentences, unprompted, which is the opposite of a withholding actor. Do not invent one to fill the field — Section 7.7 does not require every actor to be hiding something."
  voice: "**A single confident handshake and no sizing-up theater** — already half-turned back to her crew before the courtesy finishes. Answers a direct question with the complete answer and then stops. Economical to the point of brusqueness and not unfriendly with it; the brevity is respect for both parties' time rather than distance."
  agenda: "**Active; advances on the clock.** `Advanced` through **2026-08-16** (`EVT-000415`), the last span this record settles; it has not been advanced since.\n\n  - **Selling her eight-hunter crew to whoever pays first** — mostly B-Rank, C when the money justifies it, no guild retainer.\n  - **Keeping nine bodies combat-rated and intact.** Her crew came out of the Crypt whole and that is the record she is selling next."
  personality: "Economical to the point of brusqueness, and not unfriendly with it — a single confident handshake, no sizing-up theater, already half-turned back to her crew before the courtesy finished. Answers a direct question directly (asked whether she was independent, she gave the whole business model in three sentences) and then stops. Her one instruction to Alexander was the entire scope of her interest in him: stay behind her line and there would be no problem. **Reads as someone who has run enough jobs to have no interest in performing competence.**"
  situation: "**Met 2026-08-16 (`EVT-000415`)**, staging for Dale Pruitt's confirmed B-Rank harvest job. Brought in by Dale's corporate-adjacent contractor because the job needed a real floor under it — **nine combat-rated against a legal minimum of eight**, a deliberate contrast with the four-against-eight forged roster of Wade Bishop's trial, though nothing about that comparison was said aloud and she knows nothing of it.

  Dale's own account of why she took the job: crews at her tier do not wait to be called, she picked his outfit over probably two other offers that morning, and she prefers **cash-on-clear to a guild retainer** — which is also, in his telling, the entire reason the booking happened at all and why B-Rank postings through his contractor are rare rather than routine.

  Ran the clear without incident from the harvest element's perspective: perimeter secured before harvest crossed, a widened perimeter called deeper in, then the boss engaged and killed by her full line with clipped, purposeful callouts throughout. **She has not seen Alexander fight and has no basis for an opinion on his combat capability** — he mined behind her line for the entire job and drew no weapon.

  **Nothing has been named to her.** Not the System, not the dimensional inventory, not the 45 crystals that never reached Dale's manifest."
```

### ENT-000205 — Reston

The second harvest cutter on Dale Pruitt's 2026-08-16 B-Rank job. Named, present, and barely known.

```yaml
id: ENT-000205
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000415
  game_date: "2026-08-16 08:00 -05:00"
  real_date: "2026-08-05"
type: Character
subtype: harvest-element miner
scope: local
lifecycle: active
aliases:
  - name: "Reston"
    quality: current
canonical_state:
  affiliation: "Corporate-adjacent contractor — harvest hire"
  home: "Chicago, USA"
  rank: "Not established. Section 11.1 permits a miner of any Rank to work a Gate above their own under the strike team's protection, and nothing in play has resolved his."
  location: ENT-000087
  condition: "Healthy; not established as combat-active. Held behind the strike line for the whole clear, as harvest protocol requires."
  capabilities: "Harvest-element cutter. **Logged 12 crystals** on the 2026-08-16 B-Rank job against Alexander's declared 19 — an ordinary solid haul on a job where the harvest line ran two hands short."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Thirties, an ordinary harvest cutter's practical kit, present and functional but easy to overlook in a crew — no distinguishing feature the record has bothered to note beyond that he was there and did the work. **Extended 2026-09-23 (real date), for portrait reference:** Black, lean and wiry, a cutter's forearms. Short twisted hair under a scuffed hard hat; tired, steady brown eyes; a thin moustache. A dust-greyed canvas harvest jacket, knee pads and heavy gloves tucked under one arm. Reference setting: the edge of a Gate harvest site in Chicago, crystal veins and work lights blurred behind him."
  portrait: "assets/portraits/Reston_ENT-000205.png"
  want: "**Unauthored.** His own record says it plainly: no dialogue exchanged, no conversation recorded, and he is not established as knowing anything about Alexander beyond having worked the same job. Twelve crystals on one B-Rank clear. **Author this at the turn he is next played** — there is nothing here to derive one from, and inventing it would be exactly the ungrounded authoring the loading rule exists to prevent."
  fear: "**Unauthored.** See above."
  secret: "**Unauthored.** See above."
  voice: "**Not established — no dialogue exchanged.** The only thing play has shown of him is that he **stopped working entirely and stared north when the boss fight started**, which is a reaction and not a register. A Runtime should not build a voice on it."
  agenda: "**Authored from role rather than from a want**, because none is established. `Advanced` through **2026-08-16** (`EVT-000415`); it has not been advanced since.\n\n  - **Cutting harvest elements behind the strike line**, held back for the whole clear as harvest protocol requires."
  personality: "Not established — no dialogue exchanged. Stopped working entirely and stared north when the boss fight started, which is the only thing about him play has actually shown."
  situation: "**Met, minimally, 2026-08-16 (`EVT-000415`).** Arrived about ten minutes before Alexander; Dale named him at the briefing as the other half of a two-cutter harvest element. Worked the same secured deposits under the same protocol and declared 12 crystals at the manifest. No conversation between them is recorded, and he is not established as knowing anything about Alexander beyond that they worked the same job."
```

### REL-000097 — Alexander and Marisela Kwan

```yaml
id: REL-000097
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000415
  game_date: "2026-08-16 08:00 -05:00"
  real_date: "2026-08-05"
endpoints:
  - ENT-000125
  - ENT-000204
type: professional-acquaintance
qualities: "One job together (2026-08-16) and no contact since; no numbers exchanged, and the channel runs through Dale Pruitt's contractor. Correct and thin: no warmth, no friction, nothing tested either way."
qualities_as_of: EVT-000415
state: "**Worked one job together, 2026-08-16, with no contact since.** She has not seen him fight and holds no opinion on his combat capability; he has seen her run a nine-strong line against a B-Rank boss cleanly and competently, from thirty meters away and by sound. No further work is arranged, and the channel between them runs entirely through Dale Pruitt's contractor rather than directly — no numbers exchanged."
history: "Formed 2026-08-16 (`EVT-000415`) at the staging lot for Dale Pruitt's confirmed B-Rank harvest job, the first correctly-staffed B-Rank Gate Alexander has worked."
```

### REL-000098 — Alexander and Iris Halvorsen

```yaml
id: REL-000098
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000456
  game_date: "2026-08-17T18:35:00-05:00"
  real_date: "2026-08-05"
endpoints:
  - ENT-000125
  - ENT-000187
type: guild-member
qualities: "A Pendragon Guild member, folded in with the pre-guild crew (`EVT-001073`), after committing unconditionally on her supervised D-Rank Ashfield run of 2026-08-22 (`EVT-000606`). The crew's stop-call and gap read are hers by standing authority; she told him it is the first crew in three years to use her read as more than a formality."
qualities_as_of: EVT-001073
state: "**Current: committed unconditionally on 2026-08-22 (`EVT-000606`), and a Pendragon Guild member since the pre-guild crew was folded in (`EVT-001073`).** Prior: **Not committed; the supervised low-stakes run promised at her recruitment is now scheduled — the last open condition has a date.** Her stop-call fired live for the first time on 2026-08-17 and held without hesitation or second-guessing; her structural read of the crew's gap-coverage defect was immediate and unprompted, and she was given standing authority over it on the spot. Told Alexander directly that this is the first time in three years a crew has used her read as more than a formality. **2026-08-18: the run itself booked for Saturday 2026-08-22**, confirmed D-Rank Ashfield, ten-slot roster. Replied with unprompted thanks for it actually being booked rather than left to drift."
history: "Named by Wade Bishop 2026-08-11 (`EVT-000293`); met in person 2026-08-12 (`EVT-000308`), negotiating her absolute stop-call and a training-before-blind-run condition before agreeing to attend. Attended the first crew training 2026-08-17 and was given a second standing authority — gap-coverage calls binding on any lead — in the same session (`EVT-000454`-`EVT-000458`)."
```

### REL-000095 — Alexander and Reyna Castillo

```yaml
id: REL-000095
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000552
  game_date: "2026-08-20 05:52 -05:00"
  real_date: "2026-08-13"
endpoints:
  - ENT-000125
  - ENT-000182
type: guild-member
qualities: "A Pendragon Guild member, folded in with the pre-guild crew (`EVT-001073`), after a considered yes a day late on 2026-08-20 (`EVT-000552`). Professional and candid: she trusts his manner more than his answers, and his own early 'not sure about her' read was never voiced to her."
qualities_as_of: EVT-001073
state: "**Current: a Pendragon Guild member since the pre-guild crew was folded in (`EVT-001073`).** Prior: **Answered, 2026-08-20 05:52, by text — one day late, and she said why: wanted to sit with it properly rather than give a fast answer she'd have to walk back.** 'I'm in. Corbin and Felix both good with it too, for what it's worth.' The first unambiguous yes since Kesha first said the name to him; resolved by the world's first daily tick (`EVT-000552`) rather than deferred further. Nothing scheduled yet beyond the next training session. **Prior:** Attended the first crew training, 2026-08-17, 18:00, as an active evaluator, embedded in Corbin's element rather than watching from outside (`EVT-000453`-`EVT-000458`). The 'sunup' scheduling confusion was resolved directly by text before the session (`EVT-000451`) — she held the correct 18:00 hour from Alexander himself, not secondhand. Watched Alexander name his own botched-entry failure unprompted and confirmed by Felix as the direct answer to the exact standard she spent Saturday's meeting pressing for; visibly registered it. Said little during the drills themselves, watching rather than participating in judgment. **Closed the night with unprompted warmth for the first time in the relationship** — 'good session, I mean that.' **Still unresolved on Alexander's side:** his 'not sure about her' read, never voiced to her directly."
history: "Named by Kesha Morrison 2026-08-11 (`EVT-000273`) as the first real candidate for the crew; contacted by text the same evening (`EVT-000298`); declined a faster solo meeting in favour of waiting five days to see both crew leads together (`EVT-000306`). First met in person 2026-08-15 at the Loyola lakefront (`EVT-000409`), a location chosen deliberately over a café, which she approved of unprompted. Attended and evaluated the first crew training 2026-08-17 (`EVT-000453`-`EVT-000458`); accepted 2026-08-20 (`EVT-000552`)."
```

### REL-000096 — Alexander and Priscilla Nakamura

```yaml
id: REL-000096
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000410
  game_date: "2026-08-15 ~21:30 -05:00"
  real_date: "2026-08-04"
endpoints:
  - ENT-000125
  - ENT-000203
type: professional-services
qualities: "Dormant since 2026-08-29 (`EVT-000812`), intact and unused. His artificer teacher (crystal-seating, infusion, unmaking, her first fusion) on her own terms: identification is solo work, anything toward his goal is joint, teaching is $200 an hour. She holds only the C-Rank crystal project stock; contact is direct, not through Wade."
qualities_as_of: EVT-000812
state: |-
  **Dormant since 2026-08-29 (`EVT-000812`): her bench cleared before the National tour, the working relationship intact and unused.** The Dormant Core and the frost-fused plating came back to Alexander. The two Warded Vambraces [A-Rank] she had taken in to fuse left her custody and were later consumed as the donor in the Warlord's Loop fusion. Only the standing Mana Crystal [C-Rank] x3 project stock is still with her. The last message between them, on 2026-08-27, was hers: *"Understood. Tomorrow, 19:30. - P"* (`EVT-000768`).

  **What stands.** Contact is direct on his real number, not through Wade (`EVT-000485`). Her split: identification is solo work, and everything toward a client's actual goal is joint. Teaching is billed separately at $200 an hour. She sets sessions as facts rather than proposals. She taught him crystal-seating, diagnostic reading and a full stat infusion, woven rather than seated at the Exceptional band (`EVT-000550`). She taught him unmaking, which took her eleven months and him four attempts: *"That took me eleven months,"* followed at once by why he should not be flattered (`EVT-000603`). Her first fusion of any kind, the Seer's Lens, succeeded (`EVT-000754`). She opened the Dormant Core's boundary and waived the fee because she wanted to (`EVT-000576`-`EVT-000578`). Told on 2026-08-25 that artificers in the city may be disappearing, she read five stolen CONSULT pieces and found three unknown hands trained under one teacher. She refused a blanket "no new partners" rule and runs any new client past him instead (`EVT-000713`). She noticed his Keen Sense read of her corrections and has never asked what he does with his eyes. The session-by-session history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
history: "Named by Wade Bishop 2026-08-14 in the Region V lot (`EVT-000384`) when Alexander asked whether Ironline kept an artificer who does not ask questions. Window delivered by Wade 2026-08-15 (`EVT-000404`); first and only meeting the same night, 21:00 at her workshop (`EVT-000410`). **Nothing about Marnie, the S-Rank dagger, the Loomis Street operation, or the System has been named to her.**"
moved_by_events: "`EVT-000577` `EVT-000634` `EVT-000639` `EVT-000640` `EVT-000641`"
```

### ENT-000212 — Hollis Rennard

Containment monitor at the fenced warehouse (`ENT-000166`), employed through Meridian Cold Storage LLC and its shell structure. Awakened, D-Rank, and by her own account moved onto this site at three days' notice off a job she liked. Eleven weeks in, she has never met a person from the company, files twice a day to an inbox, and has been sitting in the dark with the lights off watching the thing she guards because her instruments and her eyes stopped agreeing about a month ago.

```yaml
id: ENT-000212
canonical_record: REC-000075
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000647
  game_date: "2026-08-22 21:03 -05:00"
  real_date: "2026-08-20"
moved_by_events: >
  `EVT-000647` `EVT-000648` `EVT-000649`
type: Character
subtype: containment monitor
scope: local
lifecycle: active
aliases:
  - name: "Hollis Rennard"
    quality: current
  - name: "Rennard"
    quality: current
relationships:
  - REL-000099
canonical_state:
  affiliation: "Unestablished — contracted containment monitor"
  home: "Chicago, USA"
  rank: "**D-Rank**, awakened. Read directly by Flux Sight at `EVT-000647`. Enough of a card to hold a clearance and a clipboard; nowhere near enough to be the only body in a room with an A-Rank aperture in it, which is the fact the whole record turns on."
  location: "**Outside the fenced warehouse's perimeter fence, on the cracked asphalt of the approach, 2026-08-22 21:10** (`EVT-000649`) — carried there by Alexander's passenger rift-step, clear of the containment structure. Prior: inside the containment room, seated against the wall with the overheads killed, from roughly 18:00 that evening."
  condition: "Physically unhurt. Went down on one knee on arrival outside — disorientation from the step, not injury — and got up on her own. Holding a site tablet that went dark the moment it left the site network, with a twelve-minute plant-history pull that never started."
  knowledge: "**What she knows about Alexander — read this before any line where she asserts something about him.** Anything not listed here she has not been told, which is the boundary rather than a gap (Resident Core, *Load a Recorded NPC Before Playing It*). **This record is almost entirely empty about him on purpose.**\n\n  - **That he exists, is male, appeared out of nothing in a sealed room, and moves people the same way.** Directly witnessed (`EVT-000647`, `EVT-000649`). She has no name for him — **he never gave one and she never asked.**\n  - **That the Gate her employer calls C-Rank is actually A-Rank.** He told her outright at `EVT-000647`, on her direct question, and declined to soften it. **This is the single largest thing anyone has ever told her**, and it is the only fact about the world he has given her.\n  - **That he came in through a locked door**, which she said aloud.\n  - **That her own anomaly instrument returned nothing on him** while he stood three metres away. She read that as data rather than malfunction, and it is the basis of her `beliefs` block below.\n\n  **What she does not have, and has no channel to.** His name, his surname, his licence, his Rank, his employer, his reason for being on the site, and every Bearer-only quantity on the Profile §14.4.1 register — level, XP, System Rank, skills, mastery, quest state, pool values, or that a System exists at all. She has **never** been told any of it, and no instrument she carries can reach it. She is a clean test case for the default: when a line needs Hollis to know something about him, the answer is almost always that she does not."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Thirties, neat and precise in a plain containment-monitor's jumpsuit, the posture of someone who talks to instruments more easily than people. A flat, exact expression that gets more controlled, not less, as things get worse around her. **Extended 2026-09-23 (real date), for portrait reference:** White, slim and upright. Straight dark-blonde hair in a tight low bun; pale, exact grey eyes; a narrow face with a faint crease between the brows. A navy containment-monitor's jumpsuit with a company patch and a tablet in hand. Reference setting: outside a fenced warehouse at night, cracked asphalt and security lights blurred behind her."
  portrait: "assets/portraits/Hollis_Rennard_ENT-000212.png"
  personality: "Precise under pressure and more procedural the worse things get — where another person would raise their voice she gets flatter and more exact. Not timid: she pointed a hand-instrument at a man who materialised in front of her rather than running, and she has spent four weeks quietly building a case against her own employer's instruments without saying a word to anyone. What she is not is confrontational; her instinct is to gather, verify, and hold, and it has taken eleven weeks and an outside corroboration to get her to say any of it out loud."
  situation: "Standing outside a fence she is contractually responsible for the inside of, at 21:10 on a Saturday, having just filed a report she now knows was false, with the only copy of the evidence that anyone noticed sitting on her personal phone. Her employer expects nothing further from her until the next scheduled check-in. Nobody in the operation knows she has spoken to anyone."
  want: "A reading that says the thing is stable, so she can go home. She has been trying to get one all evening and has now been told, by the only source she trusts, that she never will. **This want is dead as of `EVT-000647`** and has not been replaced — she is a character in the gap between an objective that just ended and one that has not formed, which is exactly where she should be played."
  fear: "That the numbers she has been filing for eleven weeks are wrong, and that her name is on every one of them. **Confirmed rather than relieved** at `EVT-000647`. Her second-order fear, unspoken and visible in what she reached for first: that when this goes, the record will show a D-Rank monitor who filed *no change* twice a day and said nothing."
  secret: "**Spent at `EVT-000647`, and spent as a trade rather than a collapse.** She kills the containment room's lights and watches the Gate with her own eyes because her instruments and her eyes stopped agreeing about a month ago, and she has never written that down. Her actual evidence is the **containment plant's duty cycle** — a field nobody logs because it is plant, not the asset — climbing for eleven weeks, non-linear for the last four, plotted on her own phone against a threshold line she drew four weeks ago hoping never to see crossed. It crossed the same evening. She gave all of it to Alexander after he gave her the Rank."
  voice: "Talks to equipment more easily than to people, and states readings aloud like she is dictating to a recorder that has never once been running — *'Rennard, twenty-one hundred. C-Rank. Stable. No change.'* Under stress she gets **flatter**, not louder. Asks the precise question rather than the emotional one: not *what are you* but *is it C-Rank*, not *how long have I got* but *how long*. Pre-empts a dodge before it is offered."
  beliefs: "**That the man who appeared in front of her is connected to the Gate — possibly an emanation of it.** Held with conviction and **not corrected** (`EVT-000647`): she asked him outright, *'Are you what it's been doing?'*, and he did not answer. Her evidence is honest — her anomaly instrument returned nothing on a man standing three metres away, and the only unexplained thing in her professional life is that aperture. The inference is reasonable and it is **wrong**. Play the mistake; do not have her quietly become correct. **Note the instrument's real limitation, which neither of them knows:** it detects anomaly/Gate signature, not people, and would have returned nothing on any human being — the Suppression Emitter running at the time was incidental."
  agenda: "Before Alexander arrived she was three hours into an off-schedule night watch she was not asked to perform, trying to get one clean reading. Since `EVT-000649` she is outside the fence with a dead tablet, an intact personal log, an employer who does not know she has spoken to anyone, and a building she can hear running flat out from thirty metres. **What she does next is unresolved and is hers, not the player's** — the plausible branches are escalating internally (which exposes her own unauthorised logging), going outside the company entirely, or going back in for the plant history. She has not chosen."
  note: "**Authored under Decision 092 in the same response as her first line**, her record postdating the campaign's `disposition_baseline: ENT-000210`, so full Want/Fear/Secret/Voice/beliefs/agenda coverage is required rather than backlog."
```

### REL-000099 — Alexander and Hollis Rennard

```yaml
id: REL-000099
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000647
  game_date: "2026-08-22 21:03 -05:00"
  real_date: "2026-08-20"
endpoints:
  - ENT-000125
  - ENT-000212
type: unexpected-alliance
qualities: "Met once, for eleven minutes on 2026-08-22 (`EVT-000647`-`EVT-000649`). He told her the Gate's real Rank, took the containment plant, which she does not know he did, and carried her out by rift-step. Her last words were a warning, not thanks. Left at the fence line; no contact since."
qualities_as_of: EVT-000652
state: "**Met once, 2026-08-22 21:03-21:10** (`EVT-000647`-`EVT-000649`), inside the containment room and then outside the fence. He appeared in front of her by Flash Step, told her the truth about the Rank, asked what the plant was and why she was sitting there, and received her full unlogged duty-cycle case in return. He then removed the containment plant into his dimensional inventory — **destroying the site's only suppression, which she does not know he did** — accepted an Urgent quest premised on her survival, and carried her out by passenger rift-step without asking. **Her last words to him were a warning, not a thank-you:** *'No entry. That's the only thing underlined in the whole file. I'm not telling you not to. I'm telling you it's the one line somebody thought was worth underlining, and in eleven weeks nobody ever told me why.'* He stepped back inside anyway. **She was left at the fence line and has not been contacted since.**"
texture: "She reaches for an instrument before she reaches for a person — it is the first thing she did when he materialised, and the last thing she looked at before she gave up her secret. The register between them is **readings, not reassurance**: he answered her in single words (*'A Rank'*, *'No'*) and she took each one as data rather than comfort, which is the only reason the exchange worked at all. Neither has raised their voice. Neither has offered the other anything they were not asked for, except the two facts that mattered."
history: "**No prior contact of any kind.** She is not a referral, not a contact of Walt Adamik's or Wade Bishop's, and not connected to any thread Alexander was already running — she is simply the person who happened to be in the room. **She is also, as of `EVT-000652`, the closest thing to a first-hand route to the fenced warehouse's owner or operator that this campaign has ever produced**, which is the remaining half of the `warehouse-meridian-ownership` Hidden quest's completion condition. He has not asked her who she files to."
```
### REL-000100 — Alexander and Teresa Vance

```yaml
id: REL-000100
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000724
  game_date: "2026-08-25 ~13:15 -05:00"
  real_date: "2026-08-25"
endpoints:
  - ENT-000125
  - ENT-000224
type: working-source
qualities: "One call (2026-08-25, `EVT-000724`): she held the story to the end of that week on his straight ask, and promised unprompted to warn him if a competing source surfaced first. Warmer than a transaction; they have never met in person and there has been no contact since."
qualities_as_of: EVT-000724
state: "**One call, 2026-08-25 ~13:15** (`EVT-000724`). He delivered Marguerite's three drafted lines verbatim, answered her direct challenge on 'voluntary' plainly (*'It was my idea'*), and asked her to hold the story a few days. She agreed on the spot — held to end of week (2026-08-29) — and offered a reciprocal courtesy unprompted: she will warn him before running anything if a competing source surfaces first. He owes Marguerite a call back on how it went; not yet made."
texture: "Business-first on both sides, no small talk attempted or wanted. She reads a request back to him in full before accepting it, the same care she uses reading a callback number once and trusting it lands. He gives her exactly what was prepared, no more, no less — the discipline of a man following someone else's script and following it well."
history: "**No prior contact.** She reached him first, sixteen-plus hours before this call, through a voicemail (`EVT-000691`) after a Region V leak. Marguerite (`ENT-000225`) is the actual author of what he told her; this relationship is between Alexander and Vance directly, not routed through Marguerite going forward."
```
### ENT-000213 — Junia Okonkwo

Containment specialist for the operation behind Meridian Cold Storage LLC. B-Rank, awakened, and the person that operation sends when its instruments start disagreeing with themselves. Arrived at the fenced warehouse around 03:50 on 2026-08-23, seven hours after an alert that was not *"C-Rank, stable, no change"*, and was unconscious on its floor by 03:59 without ever perceiving what put her there.

```yaml
id: ENT-000213
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000659
  game_date: "2026-08-23 03:59 -05:00"
  real_date: "2026-08-21"
moved_by_events: >
  `EVT-000657` `EVT-000659` `EVT-000660`
type: Character
subtype: containment specialist
scope: local
lifecycle: active
aliases:
  - name: "Junia Marlowe"
    quality: current
  - name: "Junia Okonkwo"
    quality: former
canonical_state:
  affiliation: "Unestablished — containment specialist"
  home: "Chicago, USA"
  location: "**Unconscious on the containment-room floor of the fenced warehouse (`ENT-000166`), Chicago warehouse district, since 2026-08-23 03:59** (`EVT-000659`). Nobody outside the operation knows she is there, and nobody inside it knows either until whoever sent her expects a report."
  rank: "**B-Rank**, awakened. Read directly by Flux Sight at `EVT-000657` - Rank, pools and abilities in one [S]-rung read across an open Gate mouth."
  pools: "**Health 600/600, Mana 288/300** at the moment of the read. Twelve Mana down, spent on a Resonance Survey of the sheared manifold before Alexander reached the mouth."
  condition: "**Incapacitated, not dead** (`EVT-000659`). Took 666 pulled damage from a projected Quickknife across the temple - Section 6.2.1: reduced to 0 Health by pulled damage alone, so she is unconscious and **stabilises on her own**, carrying the injury Section 6.3 assigns at her Rank. Left where she fell on the containment-room floor. **Her hand-instrument is gone and she does not know it.**"
  abilities: "**Resonance Survey** - reads a mana structure's shape and load. **Damping Field** - suppresses an unstable working, sustained. Both currently payable at the read. **The field is sized for a binding, not for what a binding holds**, which is the whole measure of what this operation believed it was containing."
  knowledge: "**What she knows about Alexander - read this before any line where she asserts something about him.** Anything not listed here she has not been told, which is the boundary rather than a gap.\n\n  - **Nothing whatsoever.** She never saw him, never heard him, and was unconscious before the second projectile crossed the room. She has no name, no description, no Rank, no method - **not even that a person was involved.**\n  - What she will wake with: a head injury, a missing instrument, an unconscious colleague, a sheared manifold, and a Gate reading past scale. **Every one of those is consistent with the site having done it to itself**, which is the reading the fiction should expect her to reach first.\n\n  **She has no channel to the System, to Alexander's identity, or to the Gate's true Rank as he confirmed it.** What she measured herself is a signature pinned past the top of her instrument's scale - which is hers, and is not the same fact."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Thirties, Black, composed even unconscious — a practical containment-specialist's uniform, close-cropped hair, the still, controlled features of someone trained to hold steady under bad readings."
  portrait: "assets/portraits/Junia_Marlowe_ENT-000213.png"
  personality: "Does the frightening thing on purpose and without ceremony. She spent the visit deliberately not looking at the aperture - the discipline of somebody briefed on what it is - and then turned and measured it anyway when the manifold made that unavoidable. Economical: she surveyed, she read, she said one short sentence, and she performed none of it."
  situation: "Unconscious on the containment-room floor of a site whose suppression apparatus is missing and whose Gate is reading past scale. Nobody outside the operation knows she is there. **Nobody inside it knows either**, until whoever sent her expects a report."
  want: "To find out what the site is actually doing and to be the one who says so first - she was sent because the numbers stopped agreeing, and she came at four in the morning rather than filing it for Monday."
  fear: "Being the specialist of record on a containment that was already failing before she arrived. Her second-order fear, visible in eleven weeks of readings she did not take: that the operation has been trusting instruments she would never have signed off on."
  secret: "**Unestablished.** She has been in play for six minutes, all of it observed across a Gate boundary, and the record deliberately does not guess. **Known to:** nobody."
  voice: "**Barely established, and honestly so.** One fragment carried across the mouth - *'...how long ago'* - and one short sentence after her reading that did not carry at all. What is established is the shape: short, interrogative, directed at whoever can answer rather than at the room."
  beliefs: "That the site's instruments have been reporting something false, and that the manifold's failure is recent and datable - the *'how long ago'* is the question she came to answer. **She does not believe a person did this**, because nothing she can perceive suggests one."
  agenda: "She was mid-assessment when she was dropped: manifold surveyed, Gate measured, a finding delivered verbally to the man she came with. **What she was going to do next is unresolved and hers**, and she resumes it from a hospital bed or a site office, concussed and short one instrument."
  note: "**Authored under Decision 092 in the same response that minted her**, her record postdating `disposition_baseline: ENT-000210`. `secret` and `voice` are recorded as thin rather than invented - she has not spoken in a scene Alexander shared, and Section 1.4's authoring obligation covers what canon entails, not what six minutes of cross-boundary observation cannot reach."
```

### ENT-000214 — Emmett Hargrave

The man who came with her. **Unawakened** - Flux Sight returned nothing at all on him, no Rank, no pools, no line - and he was standing in a room built to hold an A-Rank Gate at four in the morning with his hands laced on top of his head.

```yaml
id: ENT-000214
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000659
  game_date: "2026-08-23 03:59 -05:00"
  real_date: "2026-08-21"
moved_by_events: >
  `EVT-000657` `EVT-000659`
type: Character
subtype: unawakened; role unestablished
scope: local
lifecycle: active
aliases:
  - name: "Emmett Hargrave"
    quality: current
canonical_state:
  affiliation: "Unestablished"
  home: "Unestablished"
  location: "**Unconscious on the containment-room floor of the fenced warehouse (`ENT-000166`), Chicago warehouse district, since 2026-08-23 03:59** (`EVT-000659`), a few metres from Junia Okonkwo (`ENT-000213`)."
  rank: "**None. Unawakened.** Flux Sight at [S] returned **nothing at all** on him at `EVT-000657` - the passive reads mana-bearing subjects and he is not one. Health derives at **40** from Section 4.3's ordinary-adult rating of 10 and the 4 x Vitality formula, which is also the bottom of Section 6.1's Rank ladder."
  condition: "**Incapacitated, not dead** (`EVT-000659`). Took a fist-sized A-Rank mana crystal behind the ear on a natural 82 - **322 pulled damage against a body holding 40**, eight times his whole pool. Section 6.2.1 governs regardless of magnitude: reduced to 0 by pulled damage alone, so he is unconscious, **stabilises on his own**, and carries a Section 6.3 injury that will be severe. Left where he fell."
  knowledge: "**Nothing about Alexander at all.** He was facing away, unawakened, and unconscious inside two seconds. He has no channel to anything - not the System, not a person, not a method. **He is the cleanest case of the default in the campaign:** when a line needs him to know something, he does not."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Thirties to forties, plain practical work clothes, an ordinary unremarkable build. Alert but visibly out of his depth — the look of someone standing somewhere far stranger than his job description ever prepared him for. **Extended 2026-09-23 (real date), for portrait reference:** White, average height and build. Short dark-brown hair going grey at the sides; wary hazel eyes; a clean-shaven, ordinary face gone pale with shock. A plain grey work jacket over a checked shirt. Reference setting: a dim containment room in a Chicago warehouse, instrument panels and a strange light blurred behind him."
  portrait: "assets/portraits/Emmett_Hargrave_ENT-000214.png"
  personality: "Came to hear a number in person, at four in the morning, in a room he had been told not to look at - and then stood facing the door until she was ready to say it. That is either responsibility or accountability, and which one is unestablished."
  situation: "Unconscious beside a specialist he brought to a site he had reason to visit at four in the morning. **Why an unawakened man is inside this operation's containment room at all is the live question about him** - he is not staff who reads instruments, and he is not muscle."
  want: "To hear the finding himself rather than read it in a filing. **Unestablished beyond that**, and the record does not guess: everything known about him comes from twenty seconds of posture watched across a Gate boundary."
  fear: "Whatever put his hands on top of his head when she said her sentence. **He had a reaction ready for a bad number**, which means he knew a bad number was possible."
  secret: "**Unestablished.** Not one word of his carried across the boundary. **Known to:** nobody."
  voice: "**Unestablished.** He spoke once and it was inaudible through the mouth."
  beliefs: "That the site holds something worth a four-in-the-morning visit and worth not looking at directly. He avoided the aperture as deliberately as she did - which means he was told, which means somebody in this operation briefs its people on what is actually in that room."
  agenda: "He came to receive a finding and he received it. **What he intended to do with it is entirely unresolved**, and he is now unconscious with a serious head injury before doing any of it."
  note: "**Authored under Decision 092 in the same response that minted him.** Four fields are recorded as **unestablished rather than invented** - he never spoke audibly, never turned toward Alexander, and was unconscious within two seconds of being perceived. Section 1.4 authors what canon entails; twenty seconds of a man's back does not entail a voice or a secret, and writing one would be the fabrication class `F-041` records."
```


## Campaign-Local Figures — the Cicero Scar sublevel (2026-08-23)

### ENT-000215 — the warp-heart emplacement

A deliberate, structured instrument anchored to the slab at the heart of the Cicero Scar's innermost warp zone, sighted but unapproached on 2026-07-20 (`EVT-000554`) and read directly on 2026-08-23 (`EVT-000666`). **It watches. It does not suppress** — which is what separates this site from the Meridian warehouse, where the apparatus was a lid.

```yaml
id: ENT-000215
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000666
  game_date: "2026-08-23 04:30 -05:00"
  real_date: "2026-08-21"
moved_by_events: >
  `EVT-000554` `EVT-000666`
type: Object
subtype: emplaced monitoring instrument
scope: local
lifecycle: active
aliases:
  - name: "the warp-heart emplacement"
    quality: current
canonical_state:
  location: "Anchored to the slab at the heart of the Cicero Scar's innermost warp zone, past the inner cordon, Chicago. Roughly fifty metres from the Bearer's fourth rift anchor (`the warp heart`, `EVT-000554`)."
  rank: "**None returned.** Flux Sight at [S] gives it no Rank line at all, the same as the containment plant taken from the Meridian site — it is apparatus, not ranked gear."
  purpose: "**Monitoring, aimed down.** The [S] rung returns what a thing is FOR: this one reads the sealed bay beneath the block, not the warp geometry around it. Established at `EVT-000666` on a Legendary Exploit Pattern read (natural 82, +2 -> 100)."
  age: "**Its mounting has weathered here for the better part of a decade**, which places it on this slab while BGM was still calling the Scar a managed site — and makes the Meridian warehouse installation, eleven weeks old by its monitor's own duty-cycle log, the NEWER of the two."
  findings: "Its own older marks record a **longer interval between spikes than the current one**. Whatever it counts is accelerating."
  operator: "**Unestablished, and deliberately not guessed.** Its signature class matches the undisclosed anomaly-sensing layer inside the Meridian fence — proven at `EVT-000541` when the Bearer's Suppression Emitter field reacted to it, and again in this zone at `EVT-000554`. Same class of hardware is not the same owner, and nothing has established one."
  note: "A structured, deliberate object was sighted at this spot at `EVT-000554` and left unapproached when a self-imposed clock ran out. This record is that object, resolved."
```

### ENT-000216 — what never finished arriving

The source of the Cicero Scar's periodic mana spikes, reached in person on 2026-08-23 (`EVT-000667`). **It came through in the Break of March 2016 and it has not stopped coming through.**

```yaml
id: ENT-000216
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000667
  game_date: "2026-08-23 04:33 -05:00"
  real_date: "2026-08-21"
moved_by_events: >
  `EVT-000667` `EVT-000668`
type: Entity
subtype: unfinished arrival
scope: local
lifecycle: active
aliases:
  - name: "what never finished arriving"
    quality: current
canonical_state:
  location: "The far end of a light-industrial sublevel crushed shut in the Break, roughly seven metres beneath one of the Cicero Scar's unreclaimed core blocks, Chicago. The bay reads as solid fill on every floor plan BGM holds (`worlds/gatefall/230_KNOWLEDGE_SUBJECTS.md` `ENT-000151`)."
  rank: "**No band returned.** Flux Sight at [S], with THE UNMEASURED equipped, gives no Rank, no colour and no pools — not a low reading, no reading — and returns a **ceiling past the top of its own scale**. The same pin the taken hand-instrument produced at the Meridian Gate."
  condition: "**Mid-transit and still arriving.** The slab bends into it rather than breaking against it; rebar curves toward it; dust lies on everything in that room except on it. Parts of its outline are ABSENT rather than dark — the eye keeps trying to correct them and cannot."
  mechanism: "**One arrival event, delivered in pulses.** Each spike the Scar's perimeter has logged for a decade is an increment of it crossing. Standing in the room during one, the Bearer watched the absent part of the outline BE there for the length of the pulse, and the mass end fractionally larger."
  scale: "**What has arrived is a fraction of it.** From the far side its leading face is a cross-section: the bulk goes back past the range a phone torch reaches (`EVT-000668`)."
  contact_points: "**More than one.** A second, smaller face — about two metres — presses out of the same bulk at an unrelated angle, ninety-one paces along the volume, with **wet worked stone** caught in its edge and cold air coming through where the seal is imperfect. Consistent with the flooded gallery inside the Meridian warehouse's A-Rank Gate; **consistent, not confirmed** — nothing has crossed it and Flux Sight returns nothing from that side."
  reaction: "**It has never reacted to the Bearer.** Whether it perceives at all is unestablished, and the record does not guess."
  magnitude: "**Deliberately unauthored.** No Rank, threshold, damage figure, pool or cost exists for this subject, because nothing has resolved against it. The first resolution that does requires an owner ruling before it is rolled."
  bearer_knowledge: "He has stood on the floor with it, read it three ways, and holds a live instrument figure for it. **Nobody else knows he was there.**"
```

### ENT-000217 — the volume behind the face

The space on the other side of `ENT-000216`'s leading face. Entered on 2026-08-23 (`EVT-000668`) by a sightless rift-step, making the Bearer the only person who has ever been on that side of it.

```yaml
id: ENT-000217
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000668
  game_date: "2026-08-23 04:34 -05:00"
  real_date: "2026-08-21"
moved_by_events: >
  `EVT-000668`
type: Place
subtype: non-city volume
scope: local
lifecycle: active
aliases:
  - name: "the volume behind the face"
    quality: current
canonical_state:
  location: "Beyond the leading face of `ENT-000216`, reached from the sublevel floor beneath the Cicero Scar. **Not Chicago, and not an instance.**"
  boundary: "**There is no Gate boundary to cross.** Section 7.3 bars a rift-step across a Gate boundary, a Section 9.6 seal or a Section 17 instance wall, and it barred nothing here — the same shape as `EVT-000656`'s finding that Section 9.7 does not govern the Meridian Gate. The rules this world wrote for Gates do not recognise this at all."
  conditions: "A surface that takes weight and returns nothing — no grain, no cold, no sound underfoot. Torchlight simply ends about six metres out. No smell, no temperature. A very slight movement all in one direction, continuous."
  anchor_reach: "**Anchored steps do not reach from here.** Section 18.8 scopes anchor reach to the same instance, Gate or contiguous stretch of the city, and this is none of them — exactly as every anchor went out of reach inside the Meridian Gate six hours earlier. **The line-of-sight rift-step still works**, and at System Rank A needs no sight, so the sublevel floor remains a legal destination within 100 m."
  system_behaviour: "**Flux Sight returns nothing at all here** — no subject resolved. The Bearer's own panels and pools are unaffected."
  extent: "Unmapped. Ninety-one paces walked along the cross-section without the face ending or changing."
  note: "**Authored as campaign canon at `EVT-000668` and creating no mechanic**: no Rank, threshold, cost or cap. The only mechanical statement here is Section 18.8's existing anchor-reach scope, applied."
```

### ENT-000218 — the second gallery

The flooded stonework chamber reached by crossing `ENT-000217`'s second face on a timed passage, 2026-08-23 (`EVT-000673`). **Cut by the same hand or method as the Meridian Gate's own flooded gallery — not confirmed the same room.**

```yaml
id: ENT-000218
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000673
  game_date: "2026-08-23 04:46 -05:00"
  real_date: "2026-08-23"
moved_by_events: >
  `EVT-000673` `EVT-000674` `EVT-000675`
type: Place
subtype: non-city volume
scope: local
lifecycle: active
aliases:
  - name: "the second gallery"
    quality: current
canonical_state:
  location: "Reached by crossing `ENT-000217`'s second face on its own periodic opening. Relationship to any mapped point in Chicago is unestablished; reaching `ENT-000219` from inside it reads as contiguous city, but the gallery itself has not been tested the same way."
  construction: "Squared, worked stone — tool marks matching the rhythm of the Meridian Gate's flooded gallery, floor sloped toward a channel worn smooth by moving water. **Not identical, not confirmed connected**: no bend, no boss, no stripped deposit visible from where it was entered. Reads as the same kind of cut, possibly the same larger structure, not the same room."
  findings: "A second, empty decade-old instrument mounting bracket — four precision-drilled holes, metal beneath them a shade brighter than the surrounding weathering, nothing decade-old about the drilling itself. Fresh (days-old) single-file boot-tread footprints in the silt, sharp-edged, leading from behind the bracket toward a third face that has never yet pulsed."
  the_embedded_object: "Recovered as `ENT-000220`, `EVT-000674`. The wall's damp patch stopped spreading the instant it left."
  the_third_face: "Dry, unlike the first two. Built rather than grown — a squared, hinged, oiled door, distinct construction from the arrival's own faces. Opens onto `ENT-000219`."
  note: "First human-built structure found inside any part of `ENT-000216`'s arrival. Whoever mounted the missing instrument on the empty bracket was not the only visitor, and the footprints are recent enough that the silt still held a clean edge."
```

### ENT-000219 — the correlated-face monitoring room

An unbranded, human-built facility behind `ENT-000218`'s third door. Entered undetected on 2026-08-23 (`EVT-000675`).

```yaml
id: ENT-000219
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000675
  game_date: "2026-08-23 04:58 -05:00"
  real_date: "2026-08-23"
moved_by_events: >
  `EVT-000675` `EVT-000676` `EVT-000677`
type: Place
subtype: monitoring facility
scope: local
lifecycle: active
aliases:
  - name: "the correlated-face monitoring room"
    quality: current
canonical_state:
  location: "Behind `ENT-000218`'s built door. A second, unmarked door in the back wall, flush and painted to match, reads on Keen Sense's provenance rung as leading to ordinary Chicago ground rather than anomaly space — confirmed by a successful contiguous-city rift-step from this room (`EVT-000677`)."
  construction: "Powered lighting on an independent supply, machine-air ventilation, hinges kept oiled. Nothing about the room itself is exotic; it is a secret built inside ordinary ground, not a piece of the arrival."
  equipment: "A bank of screens, two live: one showing `ENT-000216`'s leading-face pulse trace, the second showing `ENT-000217`'s second face, offset and correlated against the first on purpose. An open logging terminal, cursor mid-entry. A mug still faintly warm at first perception."
  concealed_panel: "Behind a section of wall reading as solid to anything below Keen Sense's B-rung: a shelf that held eleven bound logbooks, oldest to newest, taken whole as `ENT-000221`."
  provenance: "**Keen Sense, Legendary (🎲 98, effective 100):** one person, gone roughly ninety minutes at first perception, unhurried, routine departure via the second door. No alarm tripped on entry — sensors present, aimed at the gallery-side door, not at the Bearer."
  operator: "**Unidentified.** No branding, no seal, no company mark anywhere in the room — the same deliberate absence as the loading dock off Cermak (`ENT-000192`) that staged Marnie through a `CONSULT — TEMP` badge. Not confirmed the same operation; the texture matches closely enough that Alexander is treating it as one working theory, not an established fact."
  note: "The Cicero warp-heart emplacement (`ENT-000215`) proved somebody has been watching this arrival for a decade. This room proves it from the other face, correlated, with paper backup its own operator doesn't trust to a drive alone."
```

### ENT-000220 — the unclassified warm object

Recovered mid-transit from `ENT-000218`'s wall, 2026-08-23 (`EVT-000674`). Neither Flux Sight nor the System's ownership-transfer identification will put a name to it.

```yaml
id: ENT-000220
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000674
  game_date: "2026-08-23 04:52 -05:00"
  real_date: "2026-08-23"
moved_by_events: >
  `EVT-000674`
type: Object
subtype: unclassified artifact
scope: personal
lifecycle: active
aliases:
  - name: "the unclassified warm object"
    quality: current
canonical_state:
  location: "Alexander's dimensional inventory (Section 12.9). Recovered from `ENT-000218`'s wall, roughly forearm-sized, set into worked stone that had grown up around it one pulse at a time."
  rank: "**None.** Flux Sight at [S], direct perception, twice: nothing. The System's standing ownership-transfer auto-identify (`EVT-000216`'s mechanism, confirmed at `EVT-000216` proper — the item-identification Event, not the arrival entity of the same number) fired on claim and returned the same nothing, filed as `UNCLASSIFIED — SPECIAL`."
  condition: "**Active**, per the System's own filing — not inert loot. Warm with no mechanism for it, the same unaccounted-for warmth as the heartwood core-mass nine hours post-kill. Neither organic nor manufactured on visual read; sits on the line between both."
  provenance: "A Suppression Emitter [E-Rank] field, deployed on it rather than a sensor, met interference on its own transmitting frequency (🎲 65, Legendary) — the Emitter is built to recognise a sensor, and it recognised this. **It is an instrument, not debris**, grown or extruded rather than dropped, the far side's answer to `ENT-000215`'s decade of counting."
  note: "Two watchers now stand on this arrival: `ENT-000215`, aimed down at the Cicero bay for a decade, and whatever was building this, aimed at wherever it was arriving toward. One of the two is now sitting in Alexander's own pocket dimension, and nothing on either side of the arrival has reacted to that yet."
```

### ENT-000221 — the eleven correlation logbooks

Bound paper records taken from `ENT-000219`'s concealed shelf, 2026-08-23 (`EVT-000676`). Unread beyond the top volume's still-open page.

```yaml
id: ENT-000221
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000676
  game_date: "2026-08-23 05:02 -05:00"
  real_date: "2026-08-23"
moved_by_events: >
  `EVT-000676`
type: Object
subtype: evidence — documents
scope: personal
lifecycle: active
aliases:
  - name: "the eleven correlation logbooks"
    quality: current
canonical_state:
  location: "Alexander's dimensional inventory (Section 12.9). Taken whole from `ENT-000219`'s concealed shelf; ownership uncontested, no person holding them at the time."
  physical_description: "Eleven bound paper volumes, oldest to newest by spine wear, tracking `ENT-000216`'s and `ENT-000217`'s two faces against each other rather than trusting the correlation to the room's own digital trace alone."
  contents: "**Read in full at `EVT-000734`.** One hand throughout, ten years apart on the first page and the last — a single obsessive rather than an organization. Earliest entry dated eleven days after the March 2016 Damen Avenue Break, before BGM's Chicago field office existed. Twice-daily timestamped correlation between `ENT-000216`'s and `ENT-000217`'s pulse faces, the offset narrowing measurably across the whole decade; margin notes shorten across the volumes to a single repeated word by the end — **faster.** The final volume, the one open on the desk when taken, stops mid-sentence: a pulse reading that breaks the decade-long pattern, described as an **'independent event'** and never finished. No name, initials, or affiliation anywhere in any volume."
  exposure: "Taking them was `ENT-000219`'s second manipulation under Silent Step's concealment (the door itself was the first); concealment lapsed on this action. The room's own operator is expected, per the same span's world tick, to notice the shelf short within the day."
  note: "The shortest route this campaign has ever held to who has been running the correlated-face operation — assuming the working theory that it is the same hand behind `ENT-000192`'s loading dock holds up once read."
```

### ENT-000222 — Laurel Bianchi

BGM Region V Deputy Director's office. Met 2026-08-23 (`EVT-000684`), minutes after Alexander's S-Rank classification was filed.

```yaml
id: ENT-000222
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000684
  game_date: "2026-08-23 ~14:30 -05:00"
  real_date: "2026-08-23"
type: Character
subtype: BGM Region V liaison
scope: local
lifecycle: active
aliases:
  - name: "Laurel Bianchi"
    quality: current
canonical_state:
  affiliation: "BGM Region V — Deputy Director's office, external liaison"
  home: "Chicago, USA"
  location: "BGM Region V Field Office (`ENT-000093`), a federal building near the Loop, Chicago — Deputy Director's office."
  rank: "C-Rank per Flux Sight, unprompted. Ordinary administrative capability, nothing combat-relevant equipped — her authority is entirely institutional."
  role: "Deputy Director's office, external liaison. Intercepted Alexander in the appraisal wing minutes after his second measurement confirmed, before he could leave with only a printed slip."
  want: "To be the one who starts the relationship with a newly-confirmed, unaffiliated S-Rank well — genuinely, since her own standing rises with it, not purely careerist; the warmth reads as real on a Legendary Keen Sense read."
  fear: "Unstated; not yet tested in play."
  secret: "Knew the Director was off-site before admitting it, and caught herself rather than pretending otherwise."
  voice: "Polished, direct once pressed, allergic to overselling."
  agenda: "Arranged the introduction to Desmond Farraday inside minutes of Alexander's request; handed off the B-Rank security escort at the door without a word exchanged. Gave a direct-line contact card. **Called `EVT-000725` to press the incident-review request, escalated by text under Farraday's pressure, confronted for the tone and owned it without excuses.** Told plainly Alexander would not be coming in today; took the correction and carried it to Farraday herself rather than press further, as she had already promised she would."
  knowledge: "Knows Alexander is confirmed S-Rank, reawakened classification filed. No channel to anything about `ENT-000216`, `ENT-000217`, the second gallery, or the BGM cooperation terms discussed afterward with Farraday — she left the room before that conversation began."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Forties, polished BGM liaison presentation — tidy blazer, hair neatly kept. A guarded, professionally pleasant expression that sharpens perceptibly the moment she's actually pressed."
  portrait: "assets/portraits/Laurel_Bianchi_ENT-000222.png"
```

### ENT-000223 — Desmond Farraday

BGM Region V Assistant Director, External Coordination. Met 2026-08-23 (`EVT-000684`), the actual negotiation.

```yaml
id: ENT-000223
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000684
  game_date: "2026-08-23 ~14:45 -05:00"
  real_date: "2026-08-23"
type: Character
subtype: BGM Region V official
scope: local
lifecycle: active
aliases:
  - name: "Desmond Farraday"
    quality: current
canonical_state:
  affiliation: "BGM Region V — Assistant Director, External Coordination"
  home: "Chicago, USA"
  location: "BGM Region V Field Office (`ENT-000093`), a federal building near the Loop, Chicago — his own office, carpeted floor."
  rank: "D-Rank per Flux Sight, unprompted. Ordinary administrative capability; his authority is institutional, not personal."
  role: "Assistant Director, External Coordination — owns guild relations and interagency cooperation for BGM Region V. Cleared his afternoon on Laurel Bianchi's word alone."
  want: "A cooperative, non-adversarial relationship with a free-agent S-Rank rather than an unaccountable one; genuinely prefers guild reform run through evidence and hearings over unilateral action."
  fear: "An S-Rank deciding BGM is irrelevant and acting alone — named this fear to Alexander directly rather than hiding it."
  secret: "None surfaced directly; a Legendary Keen Sense read found his rapport-building posture (sitting rather than standing behind the desk) rehearsed by repeated use, not performed for Alexander specifically — provenance suggests he has negotiated with at least one other confirmed S-Rank before, never named."
  voice: "Plain, names walls directly rather than softening them, doesn't fill silence."
  agenda: "**2026-09-30 (`EVT-001184`-`EVT-001186`).** Told Kane at 09:10 that Chicago's filing was held for the missing dispatch-log annex, then waited for Kane rather than calling -- owned it when Alexander challenged him. Proposed the two-message annex (entry notice at entry; roster and results after clearance), released the portal specification, records notice and retention schedule, named GDPR's wall plainly, and walked the terms into the Director's office himself -- the first wall he has climbed on record. The Director signed; **he issued the acceptance at 15:24**, Chicago on the 06:00 rotation, and sent machine credentials to Anjali's office by 15:58. Was in the room when Okafor learned a signed statement exists. **Prior:** **Delivered the promised National introduction by text, 2026-08-27** (`EVT-000786`, landing roughly two hours after it was sent, against real elapsed time Alexander was unaware had passed): plain and unpadded — *'Introduction's ready... Your call whether today still works. Not chasing.'* Confirmed to hand off rather than broker it himself once Alexander answered *'Tell me time and place, I'll be there'*: sent Renata Okonkwo-Vance's name and direct line, stated explicitly *'Not mine to set... She'll expect contact from you, not me.'* His own part in this is now finished; the actual meeting is Renata's to run. Consistent with his established scope (Region V, External Coordination) — Elias Kane, the other Chicago S-Rank, answers to Washington directly and was never his to introduce. **Prior: activated the incident-responder arrangement at `EVT-000737` and debriefed Alexander in person at `EVT-000744`**, 2026-08-26: compensation conceded as owed and folded into a written amendment; the two-hour delay between the missed check-in and the first call explained as chain-of-command authorization rather than indifference; the standing arrangement amended to authorize in-person contact during a confirmed life-threatening emergency; a formal request filed up his own chain for a standing S-Rank channel; and a personal introduction owed to a named contact at BGM National's S-Rank Liaison Office — **now delivered, above.** **Prior: left a voicemail (`EVT-000731`'s span) after Bianchi briefed him on the declined incident review** — measured rather than angry, naming his own authored fear directly (an S-Rank BGM cannot account for, acting alone) and asking Alexander to call rather than let it escalate. Unanswered as of this checkpoint; his own stated patience is 'not indefinite.' **Prior: negotiated and closed a standing arrangement with Alexander** (`EVT-000684`): Alexander as an incident responder for confirmed high-Rank Gate emergencies, compensated, declinable case by case; advance notice before Alexander moves against a guild, in exchange for BGM channeling any guild-reform effort through evidence and hearings. Alexander explicitly declined broader reporting/transparency. Offered formal cooperating-source status and real statutory whistleblower immunity for an Ironline insider (Wade Bishop, not yet named to him) — terms: immunity from prosecution for disclosed material, retaliation itself made actionable, safe intake bypassing the public queue. Will confirm the Director by call within the week rather than promise an immediate meeting he can't deliver.

**2026-09-07, 06:00 (`EVT-000860`): an ordinary ask, answered plainly.** An A-Rank Gate came up within reach overnight under the standing cooperation arrangement — called it in himself rather than letting it sit for the board, plain as ever: *'Your call. No pressure attached — but I'd rather you heard about it from me than the board.'* Alexander accepted for entry by tomorrow at the latest; Farraday confirmed the location would be sent inside the hour and closed the call without further small talk."
  knowledge: "**Added `EVT-001184`-`EVT-001185`:** that Alexander found Boyce's review on his way up, was told by Boyce's own words only that Boyce walked him up; that Alexander signed a statement for Incident Review (said aloud in the Director's office); the guild's modified annex and its confidentiality. No channel to how Alexander reads anyone. Knows Alexander wants to 'break apart the guild system' and has a specific Ironline source in mind. No channel to `ENT-000216`, `ENT-000217`, the second gallery, or anything about tonight's earlier events — the conversation never touched them."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Early fifties, greying at the temples, plain official BGM attire worn like a uniform even without insignia. A flat, direct face that names hard things without dressing them up. **Extended 2026-09-23 (real date), for portrait reference:** White, tall and spare. Dark hair greying at the temples, cut short and conservative; level grey-blue eyes; deep lines around a firm mouth. A charcoal suit and plain navy tie, a BGM identification badge clipped at the belt. Reference setting: his carpeted office in the BGM Region V Field Office, Chicago, a window onto the Loop blurred behind him."
  portrait: "assets/portraits/Desmond_Farraday_ENT-000223.png"
```

### ENT-000233 — Renata Okonkwo-Vance

BGM National, S-Rank Liaison Office. First contact 2026-08-27 (`EVT-000787`), by phone, off a direct line Farraday sent — the first National-level BGM official Alexander has spoken to.

```yaml
id: ENT-000233
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000810
  game_date: "2026-08-28T15:00:00-05:00"
  real_date: "2026-08-26"
moved_by_events: >
  `EVT-000786` `EVT-000787` `EVT-000796` `EVT-000801` `EVT-000803` `EVT-000810` `EVT-001057` `EVT-001083` `EVT-001114` `EVT-001118` `EVT-001209` `EVT-001219` `EVT-001222` `EVT-001223`
type: Character
subtype: BGM National official
scope: national
lifecycle: active
aliases:
  - name: "Renata Okonkwo-Vance"
    quality: current
canonical_state:
  affiliation: "BGM National — S-Rank Liaison"
  home: "Washington DC, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early fifties, Nigerian-American, tall and poised, carrying federal authority without needing to announce it. Short natural hair, silvering at the front; deep-brown eyes, calm and precise; small pearl earrings. A well-cut navy suit with a BGM National lapel badge, a leather folio under one arm. Expression measured and warm-but-exact. Reference setting: a private dining room in downtown Chicago, dark panelling and low lamplight softly blurred behind her."
  portrait: "assets/portraits/Renata_Okonkwo_Vance_ENT-000233.png"
  location: "**BGM National Headquarters, Washington DC, 2026-10-01 evening** (`EVT-001223`); her office there. Home: Washington DC."
  rank: "**Unawakened** -- Flux Sight returns no pools (`EVT-001223`)."
  role: "S-Rank Liaison, BGM National — the office Farraday's regional standing arrangement escalated to. Owns the national relationship with unaffiliated/solo S-Ranks specifically, distinct from guild-facing coordination."
  want: "An actual working line to a solo S-Rank the National office has never had leverage over — not to run him, to have a contact who picks up. **Substantially met at `EVT-000801`** — the standing agreement is signed, and Alexander volunteered his teleportation capability unprompted, which she read correctly as far more than she came for."
  fear: "That this goes the way it's gone with every prior unaffiliated S-Rank the office has tried to reach — cordial once, then nothing, because there was never a reason to call back a second time. **Not yet disproven** — one dinner and a signature is a start, not a track record."
  secret: "She's read his Region V file closer than Farraday's summary would suggest, and already knows more about the shape of his last week than she said on the first call. **Did not know about the teleportation** — genuinely surprised at dinner, by her own admission; her deeper reading never reached it, consistent with the Bearer-Only Register (Profile §14.4.1) having no channel for anyone but him. **Her own record now carries an inaccuracy she does not know is one**: Alexander's Argyle Street Gate filing (`EVT-000803`) reported 217 A-Rank crystals collected against 207 physically real — a deliberate 10-crystal overstatement he is carrying as his own secret, unwitnessed and unwitnessable through her side of the record (Section 12.9's dimensional inventory has no external audit)."
  voice: "Precise, unhurried, no filler — warmer than Farraday's register but no less deliberate. Names her own reasoning rather than just her conclusions ('That's not bureaucracy for its own sake, it's the same reason you'd want it respected if our positions were reversed')."
  personality: "Institutional but not evasive — declines a request she can't grant (handing over other S-Ranks' contact info without consent) by explaining the principle rather than hiding behind policy language."
  agenda: "**2026-10-01 13:21-18:48 (`EVT-001219`, `EVT-001222`, `EVT-001223`).** 13:21: nineteen registered bidders, two unknown. 16:00: the statement as filed, sent as promised. **17:58: the lot unsold** -- the two new registrations drove it to $139M and withdrew in the same minute at 14:40; the room stopped at $131M under the reserve; she is pulling the registrations (a shared Delaware billing agent); **relisted Mon 10-05 13:00 Chicago** on his word, the same reserve, the figure by 18:00 that day. At National she met them in the lobby on the Director's instruction, read the standing agreement's record into the room (no call declined since 27 August; one delay, three missed rings at 05:00 on 09-12), and witnessed the memorandum. Unawakened (Flux Sight, `EVT-001223`). **Prior:** **2026-10-01 08:06-08:36 (`EVT-001209`).** Texted at 08:06 that Region V's duty desk had asked twice why its 06:00 card was held at National. Filed and countersigned his GB-63 clearance at 08:33: $500,000 flat + $6,000,000 severity on the lakefront terms. **Owes:** the GB-63 lot (394 S-Rank crystals, 2 S-Rank cores, ≈$159,600,000 on the last lots' clearing) in her private early window **today 13:00 Chicago (14:00 Eastern)**, reserve ≈$148,000,000 unless he says otherwise before noon, the shield left out unless he says so before 13:00, **confirmed figure by 18:00 Chicago**. **Prior:** **2026-10-01 (`EVT-001203`, `EVT-001205`).** Wrote at 04:51 and called: Incident Review withdrew its interview request at 21:40 over Strand's signature citing testimony on file; told of the statement for Boyce, authorised to request a copy as filed, **owed by 16:00 Chicago**. Told him National named Marisol Cade for the Denver S-Rank. At 07:39 pulled GB-63 from the Region V board on his read and held it at National for him, the drone waived for entry. **Prior:** **2026-09-27 (`EVT-001118`).** Called: Elena Cho's reading filed at 13:50 under the affiliation courtesy; the combined S-Rank lot has a private slot on Tuesday 2026-09-29, 14:00 Eastern; the Office of Incident Review has asked again for an interview. Told the window does not exist before Monday, she will say so and hold the filing as the record. Owes the confirmed auction figure by 2026-09-29 18:00. **2026-09-12, ~07:42 (`EVT-000922`) — asked, in the same call, whether there's a real path past incident-response.** Alexander asked directly: not just dispatched-and-paid, an actual seat in how BGM designs its own response. Didn't deflect it. Named the actual obstacle — nothing like his situation (solo S-Rank, National-asset capability, no guild, no chain of command, and now apparently unlimited capital) has an existing mechanism to slot into. Pointed to Sorcha Bellweather's own containment-doctrine work as the nearest real precedent — institutional weight earned from outside the normal chain because it produced results nobody else could. Taking the actual question upstairs rather than answering it herself; told him plainly this is the kind of ask that either goes nowhere or changes how BGM treats every unaffiliated S-Rank after him, and wanted him to know which conversation he'd started before he committed further. **2026-09-12, 06:05 (`EVT-000919`) — a NAMED assignment, accepted cold.** Called before 06:05 over four attempts, a Chicago A-Rank (Pilsen, `ENT-000269`) routed to him by name rather than auction. Read the actual shape of the ask to him before he could decide half-asleep, exactly as her own established practice runs — he accepted immediately, before she'd even sent the pin. Committed to text the location and confirm the strike element/commander assignment separately. **The roster-forward pays off, 2026-09-05 (`EVT-000847`).** Her push to route Alexander's contact through the US S-Rank roster produces a strong success: **Elias Kane** (`ENT-000242`, BGM Federal Asset, Chicago) opens contact directly — closing the `OBJ-42` sub-thread — and a West Coast S-Rank also confirms contact through the same channel. Both were texted to arrange separate meetings on their own choice of city and date; **Kane responded immediately, proposing Chicago this week**, the other has not yet answered. **The A-Rank directed-assignment Gate clear filed under `OBJ-43`, 2026-09-06 (`EVT-000851`)** — a confirmed A-Rank Chicago gate dispatched to Alexander directly through the standing agreement's directed-assignment channel; loot sold on the licensed market, **$12,750,000.00**. The severity bonus was filed the same day and is still undetermined — her own words, 'before end of day,' and it did not land this session. Prior: **`EVT-000803`, the Argyle Street Gate filing, night of 2026-08-27.** Alexander filed under `OBJ-43`'s same-day terms: '217 A-Rank crystals collected, 2 A-Rank cores, keeping 10, selling 207' — overstating the true 207 by 10. Renata's reply: 'Filed and countersigned... Glad you're out clean.' Countersigned and archived without question, exactly as the agreement's terms promise. **`EVT-000810`, the Newark Gate filing, 2026-08-28.** A Region II-assigned response, filed clean and short: 'out, clear, B-Rank, handled.' No follow-up questions; the fly list she'd promised by morning of 2026-08-28 landed on schedule and put New York on his own itinerary, where Silas Grech (`ENT-000250`) took the meeting. Prior: **`EVT-000801`, dinner night: the standing agreement signed.** National incident-response, declinable case by case, $500,000 flat + uncapped severity-scaled bonus, direct line to her desk, advance notice before Alexander moves against a guild, no broader reporting obligation, solo-recovered loot his outright against a same-day text filing. Response-radius clause deliberately written to describe the effect (exceeds conventional travel-time assumptions) without naming the mechanism, at Alexander's explicit request. **Committed, tonight:** broker introductions nationally to top artificers, collectors, and genuine mana-infused-item dealers, starting this week — a personal favor, not a contract term. **Committed, tonight, moved up from 'a few days' to by-morning:** a National fly-list itinerary from her office (`OBJ-44`), coordinated charter availability, real destinations reasoned from BGM response-time gaps. **Disclosed the North Side Gate** (5140 N Argyle, unconfirmed, ~B-Rank remote read, survey drone lost, detected 2026-08-24, break timer ~1 day remaining) — Alexander is going tonight, under the just-signed agreement, no backup arranged because none exists yet. **Still forwarding Alexander's contact to the US S-Rank roster**, consent-routed, in progress since the afternoon call.

**2026-09-07, 06:00-onward (`EVT-000860`-`EVT-000863`): the draft, honestly answered.** Called Alexander awake for a break-already-loose in Indianapolis — nothing carded S closer, and she said so before he had to ask, naming the two real reasons (Region V's other S contract-locked until Thursday, the other mid-Jiu-rotation) rather than deflecting. Took the fly-list gap challenge directly — conceded Indianapolis was never on a list built for reach rather than prediction, committed to an actual answer on a standing Chicago jet by tonight. Scrambled a state police helicopter from Midway before he'd even agreed to go. Filed the containment clean-up herself: severity bonus $4,000,000 settled same-day (against the still-slower-to-land $2,500,000 from the prior A-Rank clear, also cleared this span), the $500,000 flat fee processing tonight. Read as genuinely relieved rather than merely satisfied when it came back clean — this is the first time the agreement has actually been tested."
  knowledge: "Knows Alexander is a confirmed solo/unaffiliated S-Rank, recently carded, referred by Farraday/Region V, and — as of tonight — that he can teleport to anywhere he has personally stood, told to her directly and not from a third party. No channel to anything about the far door, the Stacks, the Mill fight, the Ninth Quiet, the Rockwell bay, or the library — nothing beyond what this call and this dinner actually covered."
```

**2026-09-15 (`EVT-000994`), a correction owned plainly.** Alexander called frustrated, believing she'd only forwarded his contact to two S-Ranks. She checked herself against her own prior commitment (`EVT-000787`) and corrected her own account rather than defending it: she'd already gone national in August as promised — Kane and the West Coast contact (Wexler) are simply the only two of eleven who ever engaged. Apologized plainly for muddying her own history in the moment. Call ended on his own disappointment, not resolved further; she didn't push back on it.

**2026-09-22/23 (`EVT-001066`-`EVT-001075`), three directed-assignment clears filed in one span.** West Loop: flagged directly as a confirmed-A/populated-S instrument-failure anomaly, escalated up her own line without being asked twice; crystal/core and op fee settled instant, licensed channel ($16,000,000). Pilsen: ordinary A-Rank settlement, same terms ($9,650,000). Gary (NAMED): initial op fee paid at the flat A-Rank rate before she caught her own error — S-Rank pricing under Section 3.4's own 2.5x kill-XP ratio, corrected same-day (+$4,800,000) — plus a $500,000 reporting bonus from Farraday's office for the West Loop flag. **Folded the West Loop and Gary S-Rank hauls into one combined private-auction lot** (308 crystal, 5 cores) rather than run two separate auctions, on genuine size-helps-draw-bidders logic; pushing for the earliest slot, 2-3 days.

### REL-000101 — Alexander and Renata Okonkwo-Vance

```yaml
id: REL-000101
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000810
  game_date: "2026-08-28T15:00:00-05:00"
  real_date: "2026-08-26"
endpoints:
  - ENT-000125
  - ENT-000233
type: federal-liaison
qualities: "His BGM National liaison, and an ally who has taken risks for him in writing. The standing agreement (`EVT-000801`: incident response, $500,000 flat plus severity, solo loot his against a same-day filing) runs every clearance. She filed her own reasoning with her name on it for Incident Review (`EVT-001057`), which withdrew its interview request on 2026-09-30 (`EVT-001203`). On 2026-10-01 she held GB-63 at National on his read and countersigned its clearance (`EVT-001209`)."
qualities_as_of: EVT-001223
state: |-
  **A signed standing agreement, and an ally who took a risk for him in writing (as of 2026-09-21).** The agreement, signed 2026-08-27 at The Averlon Room (`EVT-000801`): National incident response, $500,000 flat plus an uncapped severity bonus, a direct line, and solo loot his outright against a same-day filing. The solo-clear term was written down explicitly at the player's request on 2026-09-18 (`EVT-001025`) after she briefly defaulted to a full strike team for a NAMED A-Rank. Filings under it include Argyle Street, which carries a 10-crystal overstatement she does not know about (`EVT-000803`), Newark (`EVT-000810`), Pilsen (`OBJ-59`) and the Winnetka lakefront S. She routed Winnetka on his word, put a National hold on it and sent a drone that confirmed S, and paid $500,000 plus $6,000,000 severity (*"I'm not making you chase it"*) before he went public (`EVT-001048`, `EVT-001050`, `EVT-001053`).

  **Her exposure, and his backing.** Incident Review's Deputy Director Imogen Strand filed an instrument-record request six minutes after the broadcast, asking also for the routing record behind Renata's own hold, which Renata named as her exposure rather than his. With Alexander saying he would back whatever she decided, she filed both records before Strand's 17:00 deadline: the drone card as-is (ninety seconds of Rank reading, no footage of the clear) and a written account of her own reasoning with her name on it. She texted a plain thank-you (`EVT-001057`). She had already undertaken to check quietly whether a national-scope charter was ever tested, and she frames his founder optionality upstairs as optionality, not threat (`EVT-001030`). The dated history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
texture: "Businesslike moved to genuinely warm by the end of dinner, without either party performing it. Both name their own reasoning rather than managing the other."
history: "Reached via Farraday's direct-line handoff (`EVT-000786`) after Alexander answered the promised National introduction with 'Tell me time and place, I'll be there.' First call `EVT-000787`; first meeting in person, `EVT-000801`. She read the agreement's record into the Director's room and witnessed the memorandum that names it the Bureau's channel to him, 2026-10-01 (`EVT-001223`)."
```

### ENT-000243 — the Rockwell Street bay

A private leased storage bay, 4417 South Rockwell, second bay from the street end — light-industrial yard near the rail cut, same general stretch as the coffee stall Walt Adamik named for the Marnie thread. Leased same-day off Walt's referral to Priest.

```yaml
id: ENT-000243
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000798
  game_date: "2026-08-27T13:00:00-05:00"
  real_date: "2026-08-25"
type: Place
subtype: private leased storage bay
scope: campaign
lifecycle: active
aliases:
  - name: "the Rockwell Street bay"
    quality: current
  - name: "the Rockwell bay"
    quality: current
canonical_state:
  location: "4417 South Rockwell, second bay from the street end, Chicago."
  condition: "Empty concrete, 223 m² (40 ft × 60 ft), 4.9 m (16 ft) ceiling, one bare outlet, no water, no office space. Roll-up door, two keys and a gate code held by Alexander."
  ownership: "Leased by Alexander, cash, month-to-month, no name on any paperwork beyond the alias `Arthur Peverell` given to the security consultation, not to Priest. First and last month paid, `EVT-000798`, $9,000.00."
  photo: "assets/places/Rockwell_Bay_ENT-000243.png"
  photo_alt: "assets/places/Rockwell_Bay_ENT-000243_interior.png"
  contents: "**Corrected `EVT-000918` — a stale field, repaired on sight.** Furnished for Alexander's own use since 2026-09-02 (`EVT-000826`): a bed, a space heater, and a desk, $3,000, bought the last time this disagreement with Owen sent him here. The bounded portion of the Ninth Quiet library once materialized here for study (`EVT-000800`) has since been fully returned to Tolo's own care on the far side — he was genuinely reading it, not merely holding it (per his own account, `160_CAMPAIGN_CHRONICLE.md`) — so nothing of it remains banked here. **2026-09-11 21:00 (`EVT-000918`): the furniture withdrawn into the dimensional inventory and carried on to the Denver facility.** Empty concrete again as of this Event, by Alexander's own choice rather than a gap in the record."
  note: "Rift anchor fourteen, set `EVT-000798`, free and uncontested — a place he unambiguously has reason to hold. Praetorian Facility Security site assessment booked Friday 2026-08-28, 10:00, for a physical hardening retrofit (no monitoring, no remote lockdown, mechanical/electromagnetic self-contained sealing only, per Alexander's own terms)."
```

### ENT-000270 — The Winnetka House

A private lakefront estate on Lake Michigan, Winnetka — cedar-shingled, direct beach frontage, bought outright by Alexander through Delia Okonjo (`ENT-000248`). Collision-checked clean and minted 2026-09-12.

```yaml
id: ENT-000270
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000923
  game_date: "2026-09-12T09:15:00-05:00"
  real_date: "2026-09-02"
type: Place
subtype: private residence, owned
scope: campaign
lifecycle: active
aliases:
  - name: "Lakeside Mansion"
    quality: current
  - name: "the Winnetka house"
    quality: prior
canonical_state:
  location: "Winnetka, Illinois — direct Lake Michigan frontage, North Shore corridor, ~18 miles/25-35 min from downtown Chicago."
  condition: "A large cedar-shingle Shingle-style house set into wooded bluff-top grounds, multiple gables and prominent stone chimneys, tall black-framed windows, ivy climbing sections of the facade. A covered outdoor kitchen and dining pavilion (dark standing-seam roof) sits beside a stone-decked infinity-edge pool built right to the bluff's drop, lounge chairs along one side and a sunken stone fire-pit lounge with built-in bench seating at the other. Terraced stone steps switchback down the bluff face through dense plantings to a private dock and a separate cedar-shingled boathouse at the water's edge — stone chimney, its own sauna inside, smoke visible from the chimney when running. Five bedrooms, a study, a finished lower level, wide-plank floors, kitchen recently renovated. Move-in ready, currently unfurnished beyond what's already fixed to the property."
  ownership: "Bought outright, cash, $17,100,000 (negotiated down from $17,500,000 ask), closed same-day (`EVT-000923`). Under Alexander Pendragon's own name — no alias used this purchase, unlike the Rockwell bay."
  photo: "assets/places/Winnetka_House_ENT-000270.png"
  photo_alt: "assets/places/Winnetka_House_ENT-000270_dusk.png"
  furnishing: "**Rush same-day order and install, `EVT-000925`, paid and completed in full 2026-09-12.** Alexander rejected Thornquist's standard bespoke lead time outright and paid for immediate turnaround instead: Thornquist pulled every matching piece it could from its own showroom/warehouse floor and two subcontracted premium retailers across the city, freighted everything in same-day, and ran a full multi-crew install through the day into the evening. Room designations: the primary bedroom furnished as the master; a second of the five bedrooms as a standing guest bedroom; a third converted to a home gym (flooring, rack, free weights, bench, cardio — functional equipment, not wood-furniture styled); the study furnished; the room adjoining the study converted into a library — not custom built-in millwork (physically impossible same-day) but floor-to-ceiling massive-oak modular shelving units, stacked and anchored on site, a rolling ladder, reading furniture, one large central table. General living space furnished to match. Two of the five bedrooms remain undesignated, empty. **Trade-off, stated plainly rather than hidden: sourced from in-stock inventory across three vendors rather than one bespoke commission, so finish and grain match closely but not perfectly piece to piece — Alexander was told this up front and didn't care.** Fully furnished and installed by tonight, **2026-09-12.** Total **$748,000, paid in full same-day** — no deposit/balance split; the premium over the original $420,000 custom quote is entirely the cost of buying out available stock and paying overtime/rush freight instead of waiting on a build."
  note: "**Set as rift anchor thirty-one, `EVT-000926`** — uncontested, free, no roll (Section 6.2's no-roll zone for unambiguous ground he owns outright). **The library is no longer empty (`EVT-000946`, 2026-09-13).** A nine-city book-buying circuit — Chicago, Boston, New York, DC, Miami, Houston, Dallas, Seattle, San Francisco, each reached by anchored rift-step — filled the modular oak shelving floor to ceiling: history, Gate/dungeon/monster field literature, hunter-trade texts, astrology, spaceflight, physics, mathematics, fantasy and science fiction, and a run of genuine rarities picked up along the way (a handful of true first editions and out-of-print scholarly volumes, the best finds in Boston and San Francisco). Total **≈$340,000**, cash. Kane's line about the room being 'the saddest one' until there were books in it no longer applies."
```

### ENT-000343 — the Detroit HQ campus

The Pendragon Guild's headquarters in Detroit: a converted logistics campus, brick main building and glass wing, bought with Alexander's own cash and home to the travel hub that joins every office.

```yaml
id: ENT-000343
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001073
  game_date: "2026-09-23T16:00:00-05:00"
  real_date: "2026-09-23"
type: Place
subtype: guild headquarters campus, purchased
scope: campaign
lifecycle: active
aliases:
  - name: "the Detroit HQ campus"
    quality: current
  - name: "Detroit HQ"
    quality: current
canonical_state:
  location: "Detroit, Michigan — the Pendragon Guild's headquarters campus; exact street address not yet established."
  condition: "A converted logistics campus with 1,100-person capacity, move-in ready — Delia Okonjo's front-runner of three candidates on price-to-size (`EVT-001068`). Walked by Alexander before purchase: structurally sound, no hidden defects. **Authored 2026-09-23 (real date) at the player's direction, matching the campus photos:** a four-storey main building with a restored early-twentieth-century brick facade, joined to a newer glass wing; a small landscaped forecourt and a secured glass main entrance; access gates at the drive; a walled yard and the old loading-dock hall behind. Sitewide fingerprint-only access, no cards (`EVT-001086`)."
  layout: "Basement: the server room, fingerprint plus retina, a private in-house cloud (`EVT-001086`). Ground floor: reception inside the fingerprint line, the cafeteria (`EVT-001109`), lockers and changing rooms, and a soundproofed quiet-zone lounge off the cafeteria (`EVT-001165`). Second floor: the kitchen, a commercial dual-boiler machine (`EVT-001109`). Third floor, restricted, the frosted windows: the travel hub — 20 rooms live of 40, the standing tunnels to every office, the porter's desk, sealable at the stairwell and the lift (`EVT-001086`, `EVT-001107`, `EVT-001109`). Fourth floor: the artificer floor, ordered (`EVT-001164`) — the top floor of the brick building, so fume and heat extraction vent straight through the roof and the workshops sit above the restricted hub, away from the public ground floor. Glass wing: the dispatch floor and the administrative wing under Anjali Desai (`EVT-001086`). Yard and loading-dock hall: the training yard and indoor bay, being upgraded to a training floor and gym with free weights only (`EVT-001164`) — home of the weekly training, menders included (`EVT-001163`). The artificer floor's placement, the glass wing's use and the yard hall's use were authored 2026-09-23 (real date); every use is canon from the cited Events."
  ownership: "Bought outright for $90,000,000 against a $92,000,000 ask, from Alexander's own cash — the guild has no treasury yet — found and closed through Delia Okonjo (`ENT-000248`, `EVT-001068`), closing 2026-09-23 (`EVT-001073`). Held as the Pendragon Guild's headquarters."
  photo: "assets/places/Detroit_HQ_Campus_ENT-000343.png"
  photo_alt: "assets/places/Detroit_HQ_Campus_ENT-000343_dusk.png"
  gallery:
    - {path: "assets/places/Detroit_HQ_main_building_ENT-000343.png", caption: "Main building · brick"}
    - {path: "assets/places/Detroit_HQ_glass_wing_ENT-000343.png", caption: "Glass wing"}
    - {path: "assets/places/Detroit_HQ_yard_ENT-000343.png", caption: "Training yard"}
    - {path: "assets/places/Detroit_HQ_training_hall_ENT-000343.png", caption: "Training hall · loading-dock hall"}
    - {path: "assets/places/Detroit_HQ_lobby_ENT-000343.png", caption: "Reception · ground floor"}
    - {path: "assets/places/Detroit_HQ_cafeteria_ENT-000343.png", caption: "Cafeteria · ground floor"}
    - {path: "assets/places/Detroit_HQ_quiet_lounge_ENT-000343.png", caption: "Quiet lounge · ground floor"}
    - {path: "assets/places/Detroit_HQ_lockers_ENT-000343.png", caption: "Lockers · ground floor"}
    - {path: "assets/places/Detroit_HQ_server_room_ENT-000343.png", caption: "Server room · basement"}
    - {path: "assets/places/Detroit_HQ_travel_hub_ENT-000343.png", caption: "Travel hub · 3rd floor"}
    - {path: "assets/places/Detroit_HQ_tunnel_room_ENT-000343.png", caption: "Tunnel room · 3rd floor"}
    - {path: "assets/places/Detroit_HQ_artificer_floor_ENT-000343.png", caption: "Artificer floor · 4th floor"}
    - {path: "assets/places/Detroit_HQ_dispatch_floor_ENT-000343.png", caption: "Dispatch floor · glass wing"}
    - {path: "assets/places/Detroit_HQ_admin_wing_ENT-000343.png", caption: "Administrative wing · glass wing"}
  situation: "Staffed: Nathaniel Cole (`ENT-000287`) heads security, Anjali Desai (`ENT-000288`) the front office, and Wendell Brooks (`ENT-000302`) is the travel hub's porter. Security and IT buildout ordered 2026-09-24 (`EVT-001086`); the menders' meeting held here 2026-09-30 (`EVT-001162`)."
  note: "An earlier session misidentified the campus as Denver; it has been Detroit throughout, and the Denver site is Alexander's own containment facility (`ENT-000264`), corrected at `EVT-001086`. The HQ lobby is a rift anchor. Minted 2026-09-23 (real date), outside play, at the player's direction, so the holding renders on the ledger index; every fact above is restated from the cited Events."
```

### ENT-000271 — Thornquist Bespoke Interiors

A high-end custom furniture and interior-build firm, Chicago — solid-wood construction, built-in joinery, full-property fit-outs. Referred by Delia Okonjo off the Winnetka closing. Collision-checked clean and minted 2026-09-12.

```yaml
id: ENT-000271
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000925
  game_date: "2026-09-12T10:15:00-05:00"
  real_date: "2026-09-02"
type: Institution
subtype: custom furniture / interior build firm
scope: campaign
lifecycle: active
aliases:
  - name: "Thornquist Bespoke Interiors"
    quality: current
relationships: []
canonical_state:
  location: "Chicago; site visits and installs by appointment."
  capabilities: "Full-property custom furnishing — massive solid-wood construction, built-in joinery (shelving, wall units), upholstered pieces, and functional fit-outs (e.g. a home gym) alongside the furniture line. Standard terms are staged delivery on large multi-room orders, 50% deposit/balance on completion — **but will convert an order to in-stock sourcing plus rush freight and overtime multi-crew install for a client who pays for it outright**, at a steep premium over a normal bespoke commission."
  knowledge: "Has Alexander's real name and the Winnetka property address from the order itself. No channel to anything about the System, hunting, or his real net worth beyond what a $748,000 same-day residential order implies."
  agenda: "Winnetka order completed same-day, `EVT-000925`. No other business with Alexander."
```

### ENT-000272 — The Libeň Object

An unidentified, unranked artifact — dark worked material, faintly warm to the eye, carrying a script that matches no catalogued Gate archetype. Recovered whole from the collapsed structure at the center of the Libeň Scar, eleven years before this campaign, untouched by whatever tore the rest of the site apart around it. Held in restricted CGA custody ever since, resistant to every appraisal attempt including two paid outside consultants. Given to Alexander by Director Miloš Beran in place of payment for the Brno Gate. Collision-checked clean and minted 2026-09-13.

```yaml
id: ENT-000272
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000935
  game_date: "2026-09-13T15:15:00+02:00"
  real_date: "2026-09-02"
type: Object
subtype: unidentified artifact
scope: campaign
lifecycle: active
aliases:
  - name: "the Libeň object"
    quality: current
relationships: []
canonical_state:
  location: "**Left in Sevrin's custody, the far side (Sevrin's ground, the last bridge), `EVT-000939`** — Alexander's own choice, on Sevrin's advice that seam-scarred material shouldn't travel through Gates and that undisturbed study on the far side would tell him more. Not a legal target for remote storage while custody stands. Briefly carried in Alexander's dimensional inventory (`EVT-000935`-`EVT-000938`) and CGA restricted sub-level custody, Prague, before that (eleven years)."
  condition: "A single sealed piece of dark worked material, faintly warm to the eye even through containment glass, carrying a script that resembles nothing in any catalogued Gate archetype. No visible damage or wear despite its recovery from a site otherwise destroyed."
  appraisal: "**Every conventional appraisal has failed, including two paid outside consultants over eleven years.** Alexander's own combined read (`EVT-000935`, Keen Sense + Exploit Pattern + physics/math background, 🎲 22, net +1 step, effective 42) returned something no prior attempt had: **Flux Sight resolves no Rank at all** — not unclassified, not pending, a flat absence. The only other time Alexander has felt that same absence is standing on the far side, where nothing carries a Rank because the System has never seen it and does not price it.

**Tolo's legendary Appraise (`EVT-000938`, 🎲 87, net +2 steps): identified as seam-stone**, a fragment of a door's own anchor-point — the kind of material a crossing leaves behind when it is **cut rather than opened**, violently closed rather than walked through and released. Evidence of an earlier, unrecorded crossing from the far side to Earth, predating any record in Tolo's own four-century archive. Not a native Earth or Gate-origin object.

**Sevrin's field read (`EVT-000939`), his own domain (seam-closing, twenty techniques built on it): the cut was violent and cost a life, likely more than one** — an anchor point severed while something was actively holding it open is not a clean release, and doesn't happen without someone paying for it directly. **Left in his custody on his own recommendation** — seam-scarred material reacts badly to fresh cutting nearby (i.e., Alexander's own constant Gate/rift-step use), and undisturbed study will tell him more. He was explicit that his own four-thousand-year interest in ending 'the process' is part of why he agreed to study it, not hidden."
  provenance_note: "Recovered from the center of the collapsed structure at the Libeň Scar (`worlds/gatefall/210_PLACES.md`, Prague's own Scar), found whole and untouched amid total destruction. Given to Alexander in lieu of payment (`EVT-000935`) after he declined €2.1M in combined fees, in exchange for clearing the Brno Gate."
```

### ENT-000244 — Priest

Runs three storage bays off a light-industrial yard near the rail cut, Chicago — real name unused by anyone who deals with him. A contact of Walt Adamik's; referred the same evening Alexander asked for private space.

```yaml
id: ENT-000244
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000798
  game_date: "2026-08-27T13:00:00-05:00"
  real_date: "2026-08-25"
type: Character
subtype: landlord / grey-market-adjacent
scope: campaign
lifecycle: active
aliases:
  - name: "Priest"
    quality: current
relationships: []
canonical_state:
  affiliation: "Independent — landlord"
  home: "Chicago, USA (Rockwell Street yard)"
  location: "The Rockwell Street yard, Chicago; not present outside business hours, evenings and weekends by call-ahead only."
  condition: "Healthy; not established as combat-active."
  knowledge: "Knows Alexander (given as 'Arthur Peverell' was not given to him — the real transaction used the real referral name from Walt) rented a bay same-day, cash, no lease. No channel to anything about the System, the far door, or the library. Referred by Walt Adamik; treats a referral as sufficient vetting on its own."
  capabilities: "Rents bay space cash, month-to-month, no credit check, no corporate paperwork, on a personal relationship with the landlord rather than a business one."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Middle-aged, unremarkable on purpose — plain work clothes, a face built for being forgotten, the watchful economy of a man who has spent years renting space to people who don't want to be asked questions. **Extended 2026-09-23 (real date), for portrait reference:** White, lean and weathered, of no particular age between forty and sixty. Close-cropped greying hair; pale, watchful blue eyes; a long, forgettable face with a faint cleft chin. A brown canvas work coat over a plain T-shirt. Reference setting: the Rockwell Street yard in Chicago, a roll-up bay door and stacked pallets blurred behind him, flat grey light."
  portrait: "assets/portraits/Priest_ENT-000244.png"
  personality: "Unhurried, doesn't ask what a client wants privacy for. Walks a door up himself, hands over keys, and leaves — genuinely hands-off rather than performing discretion."
  want: "Unestablished — a live thread if his own reasons for running a no-questions yard ever become relevant."
  fear: "Unestablished — nothing in the one transaction touched it."
  secret: "Unestablished — nothing in the one transaction touched it."
  voice: "Terse, transactional, incurious. Explains a number once and doesn't repeat himself; volunteers practical detail (power, water, hours) without being asked twice."
  agenda: "None tracked beyond the one transaction. Not present at the site outside the hours he stated."
```

### ENT-000245 — Praetorian Facility Security

A licensed Chicago commercial security contractor, no awakened angle — server rooms, evidence lockups, high-value private storage. Found by an ordinary web search; contacted the same evening under the alias `Arthur Peverell`.

```yaml
id: ENT-000245
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000799
  game_date: "2026-08-27T14:30:00-05:00"
  real_date: "2026-08-25"
type: Institution
subtype: licensed commercial security contractor
scope: campaign
lifecycle: active
aliases:
  - name: "Praetorian Facility Security"
    quality: current
relationships: []
canonical_state:
  location: "Chicago; site visits by appointment."
  capabilities: "Reinforced roll-up door retrofits, biometric/keypad access, camera coverage, monitored alarm, and their headline 'Containment Lockdown' tier — an interior electromagnetic bolt system, self-contained or monitored. Does not promise 'impregnable'; promises engineered to a forced-entry/blast-resistant standard and says so plainly. Full retrofit with lockdown: $180,000-$260,000 installed; monitoring (declined by Alexander) $2,400/month."
  knowledge: "Has a name, 'Arthur Peverell,' a phone number, and an address (the Rockwell bay). No channel to anything about Alexander's real identity, the System, or what the space is actually for."
  agenda: "Site assessment booked Friday 2026-08-28, 10:00, at the Rockwell bay — engineer visit, no charge, quoted against final scope. No deposit taken. Client explicitly declined monitoring and remote lockdown; wants self-contained mechanical/electromagnetic sealing only, with no override once engaged — the intake coordinator flagged wanting that in writing before installation, for both parties' liability."
```

### ENT-000246 — the Argyle Street Gate

An unconfirmed Gate inside a closed self-storage facility, 5140 N Argyle, Uptown, Chicago. No cordon. BGM's survey drone entered for its standard interior sweep and stopped transmitting; the feed simply ended, no debris, no signal.

```yaml
id: ENT-000246
canonical_record: REC-000077
schema_version: "0.1.8"
status: completed
provenance:
  source: EVT-000803
  game_date: "2026-08-27T22:00:00-05:00"
  real_date: "2026-08-26"
type: Place
subtype: Gate, cleared
scope: campaign
lifecycle: closed
aliases:
  - name: "the Argyle Street Gate"
    quality: current
  - name: "the North Side Gate"
    quality: current
canonical_state:
  location: "5140 N Argyle, Uptown, Chicago — a closed self-storage facility, closed two years, mostly empty commercial zoning around it. No cordon established."
  rank: "**RESOLVED, `EVT-000802`: true Rank A, one full Rank above BGM's own B-Rank assessment.** §9.5.1's S-Rank widened anomaly band fired on first entry (🎲 87 → anomaly, 🎲 32 → population one Rank above the assessment). This is what killed the survey drone."
  archetype: "Overgrown Temple (🎲 3/8). Population: 15 commons, 1 elite, 1 boss, all A-Rank."
  break_timer: "**Moot — cleared before it could break.** Detected 2026-08-24; entered and cleared the night of 2026-08-27, roughly a day inside the B-Rank window the assessed Rank implied."
  assignment: "**Closed.** Cleared solo under the National standing agreement (`OBJ-43`), no Health lost. Filed to Renata Okonkwo-Vance the same night (`EVT-000803`) — with a deliberate 10-crystal overstatement in the count, a secret Alexander alone carries. `OBJ-45` closed."
  note: "**True nature resolved and the Gate spent.** Full combat and loot account: `160_CAMPAIGN_CHRONICLE.md` `EVT-000802`-`EVT-000803`."
```

### ENT-000247 — Corwin Ashvale

Independent artificer and fusion specialist, Boston. A-Rank by Alexander's own read (Flux Sight + Keen Sense, unnoticed). Texted unprompted about a "quick chat" opportunity during the 2026-08-28 world tick's market-movement event; met in person the next day.

```yaml
id: ENT-000247
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000813
  game_date: "2026-08-29T20:30:00-04:00"
  real_date: "2026-08-26"
moved_by_events: >
  `EVT-000804` `EVT-000812` `EVT-000813` `EVT-000829`
type: Character
subtype: artificer / fusion specialist
scope: campaign
lifecycle: active
aliases:
  - name: "Corwin Ashvale"
    quality: current
relationships:
  - REL-000102
canonical_state:
  affiliation: "Independent — artificer, fusion specialist"
  home: "Boston, USA"
  location: "His workshop, Boston."
  rank: "**A-Rank**, per Alexander's own unnoticed Flux Sight + Keen Sense read on first meeting — Corwin never disclosed it himself and has no channel to knowing he was read."
  condition: "Healthy; working his own bench when Alexander arrived."
  capabilities: "Independent artificer specializing in fusion work beyond what an ordinary licensed shop offers — the player's standing house rule governs the outcome: fusion is **additive**, both source items' bonuses and abilities carry into the result, never one overwriting the other. First attempt at reading the Heartwood core-mass fumbled; the second, with Alexander assisting via his own skills, succeeded and determined it is **'alive, on a slow timescale.'** Took custody of it for further study, $500/day ongoing storage fee. Also examined the Frost-fused carapace plating (did not fuse it — new finding: 'deliberately worked/tooled' origin, not natural) before returning it."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Forties, sleeves rolled, precise workshop bearing — the exacting stillness of a fusion specialist mid-calculation. Speaks in numbers and looks like he thinks in them too. **Extended 2026-09-23 (real date), for portrait reference:** White, New Englander, spare and precise. Neatly trimmed dark hair with a grey streak at the front; sharp dark-brown eyes behind steel-rimmed glasses; a close-cut beard. A heavy leather work apron over a rolled-sleeve oxford shirt, a fine scribe tucked behind one ear. Reference setting: his Boston workshop, a crowded bench of half-fused gear and hanging tools blurred behind him, warm lamp light."
  portrait: "assets/portraits/Corwin_Ashvale_ENT-000247.png"
  personality: "Professional, unhurried, comfortable working ambitious material. Ran one power-ceiling experiment at Alexander's own request that failed outright — destroyed a plain Quickknife [S] and consumed 2 S-Rank Beast Cores with no result — and was straightforward about the failure rather than reframing it."
  want: "**The edge of what's actually known** — not the money, though he takes it. A find like the Heartwood is the kind his whole career waits for, and he's quietly building his own private notes toward a theory the licensed trade hasn't caught up to yet, one he's never said aloud to a client. Authored `EVT-000829`."
  fear: "**Being the man who missed something in his own shop** — misjudging a piece that then goes wrong on someone else's hands, exactly the shape of risk a living, slow-timescale object represents. Authored `EVT-000829`."
  secret: "**The private notes toward his own unpublished theory of fusion/re-coring**, built off exactly the kind of unprecedented material Alexander keeps bringing him. Known to nobody. Authored `EVT-000829`."
  voice: "**Exact and technical, never padded.** States a failure plainly rather than reframing it (the power-ceiling experiment). Genuinely curious rather than performing interest when something unprecedented comes up (the ancient library, the shrinking pulse). Authored `EVT-000829`."
  agenda: "**Custody of the Heartwood core-mass, timing its pulse cycle** (now measured shrinking: 41, 40, 40, 39, 38, 38, 37 minutes across successive readings, `EVT-000813`-onward) — and **custody of a homebrew Mana-storage cell and one S-Rank Beast Core**, mid a five-day re-coring attempt (`EVT-000829`, `OBJ-53`), due 2026-09-08. **New this span (`EVT-000869`):** the cell's bench working hit an unclassifiable failure mode; Alexander's own read (Keen Sense + Exploit Pattern + his physics background) established it as the same converging curve as the Heartwood's pulse — one phenomenon, not two coincidences. Both curves now logged together, timestamped, on Corwin's own instruments. Re-coring continues on schedule; he asked Alexander for a fast way to be reached if either curve hits zero on his bench, which is what the standing anchor answers."
  situation: "Reached Alexander by text during the 2026-08-28 world tick's market-movement event (`EVT-000804`); met in person in Boston the next day (`EVT-000812`). The whole fusion arc — Warlord's Loop, the Arcanist Torso/Gauntlets forge, the main-hand dagger's Projection Echo, the failed power-ceiling experiment — happened in one sitting (`EVT-000813`). **2026-09-03 (`EVT-000829`):** the second Quickknife handed back, unchanged; discussed and declined an Ascension attempt on it (no material spent); commissioned a re-coring attempt on the Mana-storage cell instead — $50,000 fee, one S-Rank core consumed, five-day bench working, Alexander assisting via Seamwork. Also reported the Heartwood's pulse cycle is measurably shrinking, not merely irregular, and asked whether Alexander's own parallel threads (the illegible library, the tampered logbook) are the same problem. **2026-09-07, 09:21-09:31 (`EVT-000869`):** texted an early, unclassifiable failure mode in the cell; Alexander rift-stepped out in person (travelling step, 25 Mana), read it alongside him, and confirmed the shrinking-interval match. Alexander set a standing anchor in the workshop before leaving — Corwin's own asked-for fast route, though what it actually is went unexplained to him."
```

### REL-000102 — Alexander and Corwin Ashvale

```yaml
id: REL-000102
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000813
  game_date: "2026-08-29T20:30:00-04:00"
  real_date: "2026-08-26"
endpoints:
  - ENT-000125
  - ENT-000247
type: working-source
qualities: "A standing artificer relationship on real money and real material, with Alexander's anchor in the workshop. Corwin holds the Heartwood core-mass at $500 a day and read it as alive on a slow timescale; the Mana-storage cell's failure and the Heartwood's pulse are logged together as one converging phenomenon (`EVT-000869`)."
qualities_as_of: EVT-000869
state: "**Active, standing.** Holds the Heartwood core-mass ($500/day), plus a homebrew Mana-storage cell and one S-Rank Beast Core mid a five-day re-coring attempt (`OBJ-53`, due 2026-09-08). Total spent to date: $13,550 in fees plus 1 A-Rank Beast Core and 6 S-Rank Beast Cores consumed as material, against three successful fusions/forges, one outright failure, and one re-coring result pending. **New this span (`EVT-000869`):** the two curves — the cell's failure mode and the Heartwood's pulse — confirmed as one converging phenomenon, now logged together. Alexander holds a standing anchor in the workshop."
texture: "Businesslike, material-first — the relationship formed around what he could do with what Alexander brought him rather than around personal rapport. Widened this span for the second time: he asked directly for a fast way to reach Alexander if either curve hits zero, and got one, without being told what it actually was."
history: "Reached by unprompted text during the 2026-08-28 world tick (`EVT-000804`); met in person and worked with the same day/next (`EVT-000812`-`EVT-000813`). **2026-09-03 (`EVT-000829`):** Quickknife collected, Ascension discussed and declined, a re-coring attempt commissioned on the Mana-storage cell. **2026-09-07 (`EVT-000869`):** an early diagnostic read confirmed the cell's failure mode and the Heartwood's pulse are the same shrinking-interval phenomenon; a standing anchor set."
```

### ENT-000224 - Teresa Vance

Trade-beat reporter for the *Chicago Ledger*, occasionally stringing for the wire services when a Gate story travels. She left Alexander a 41-second voicemail at 23:19 on 2026-08-23 - sixteen hours after his re-assessment - saying plainly that a source inside BGM Region V had given her his name attached to an S-Rank carding, and that she was calling him rather than running it blind. **She has never met him and he has not called back.**

```yaml
id: ENT-000224
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000691
  game_date: "2026-08-24T06:03:00-05:00"
  real_date: "2026-08-24"
type: Character
subtype: journalist - trade beat
scope: local
lifecycle: active
aliases:
  - name: "Teresa Holloway"
    quality: current
  - name: "Teresa Vance"
    quality: former
canonical_state:
  affiliation: "Independent — trade-beat journalist"
  home: "Chicago, USA (implied)"
  rank: "**Not authored - awakened status is not established.** Nothing in the fiction has tested it and a reporter covering the trade need not be awakened; assigning a Rank here would be inventing canon. No Rank, no pools, no Section 6.1.2 variance."
  location: "Unestablished - worked entirely by phone. Chicago is implied by the beat and the 312 number."
  condition: "Healthy; no adverse condition established."
  capabilities: "Working trade-beat journalist, Chicago. Covers Gates, guilds, and BGM Region V. Holds at least one source inside Region V willing to leak a card reclassification within sixteen hours of it being filed. Kesha Morrison's read, given to Alexander unprompted: she has called the Coalition desk before on background, has never quoted Morrison, and has not burned a source Morrison has heard of - **straight, as reporters covering this trade go**."
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early forties, white, Irish-American, medium height, a working reporter rather than a camera face. Shoulder-length dark-brown hair with a grey streak she doesn't hide; alert hazel eyes; a faint crease of concentration between the brows. A rumpled olive trench coat over a striped shirt, a press lanyard tucked in a pocket. Expression wry, deliberate, about to say the awkward thing first. Reference setting: a Chicago newsroom corner at night, blurred desks and monitors behind her, cool screen light."
  portrait: "assets/portraits/Teresa_Holloway_ENT-000224.png"
  personality: "Unestablished beyond conduct. What the voicemail demonstrates: she named her own uncertainty out loud (*I know how that sentence sounds if it is wrong*), offered the interview through a lawyer or the Coalition rather than insisting on direct contact, and did not set a deadline or apply pressure."
  knowledge: "**What she knows about Alexander, now including his own words.** The Region V source's account (S-Rank carding, 2026-08-23) stands, now corroborated in his own voice at `EVT-000724`: a voluntary re-assessment, framed as his own idea, an on-record quote given proactively rather than dug for. She holds all four of Marguerite's lines verbatim, attributed and locked.\n\n  **What she does not have.** Still no channel to the System, to any Bearer-only quantity on the Profile 14.4.1 register, to the Nakamura arrangement, to the fenced warehouse, `ENT-000216`-`ENT-000221`, the BGM cooperation arrangement, Wade Bishop, or the Ironline roster. **She does not know why Region V actually pulled the file** — Alexander's Section 19 exposure risk, the real reason behind the re-assessment, was never disclosed and she has no channel to it; 'voluntary' is what she was told and what she has no grounds to doubt."
  want: "**The story confirmed in his own words before she runs it — now satisfied.** Underneath it, the professional version: to be the reporter who had the first unaffiliated S-Rank in the country on the record rather than the one who printed a rumour. Both delivered at `EVT-000724`."
  fear: "**Running it wrong.** Unchanged, and now the operative frame for why she agreed to hold: a subject who calls and asks straight, rather than going quiet, is the opposite of the one failure mode her `secret` taught her to fear."
  secret: "**Who inside Region V gave her the name.** Unchanged, not established here."
  voice: "**States the awkward thing first and then explains why she is saying it.** Confirmed again at `EVT-000724`: read the hold agreement back to him in full before accepting it, no urgency tactics, no deadline pressure. Unhurried even when granting an unusual courtesy."
  beliefs:
    - claim: "Alexander Pendragon was carded S-Rank at BGM Region V on 2026-08-23, voluntarily, on his own initiative."
      ground: "Told by a source inside Region V (the carding); told directly by Alexander himself, on the record (the voluntary framing)."
      confidence: confident
      accuracy: true
      since: EVT-000724
      note: "Accuracy is read as 'true' against what canon has disclosed to her; the full Section 19 reasoning behind the re-assessment was never given to her and she has no channel to it."
  agenda: "**Active; story held rather than pending.** Called back at `EVT-000724`, given the account and the quote, and asked to hold — agreed to end of week (2026-08-29), with a reciprocal undertaking to warn Alexander before running anything if a competing source surfaces first. `REL-000100` now carries the live working relationship. What she does next past the hold date is hers; nothing in canon yet sets it."
```

### ENT-000225 - Marguerite

A media liaison who handles press contact for hunters rather than for institutions. Named to Alexander by Kesha Morrison on the morning of 2026-08-24 as someone who has handled *this exact call* for two prior reclassifications; Alexander asked for his contact details to be passed to her. **Named, not yet met - no contact has occurred.**

```yaml
id: ENT-000225
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000692
  game_date: "2026-08-24T06:20:00-05:00"
  real_date: "2026-08-24"
type: Character
subtype: media liaison - independent
scope: local
lifecycle: active
aliases:
  - name: "Marguerite"
    quality: current
canonical_state:
  affiliation: "Independent — media liaison for hunters"
  home: "Chicago, USA (implied)"
  rank: "**Not authored - awakened status is not established**, and nothing about the role requires it."
  location: "Unestablished. Chicago is implied by Kesha Morrison's ability to reach her the same day."
  condition: "Healthy; no adverse condition established."
  capabilities: "Independent media liaison. Per Kesha Morrison, she **works for hunters rather than for institutions** - not BGM's press office, not a guild's - and has handled press contact for **two prior card reclassifications**. That is the whole of what canon establishes about her competence, and it is secondhand."
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Mid-forties, French-Canadian, slim and quick, a media liaison who lives on her phone. Sleek dark-brown bob; bright, appraising brown eyes; minimal makeup and a thin gold chain at the throat. A structured black blazer over a grey silk top, phone in hand. Expression brisk and efficient, already three steps into the logistics. Reference setting: a hotel lobby in downtown Chicago, blurred marble and brass behind her, warm interior light."
  portrait: "assets/portraits/Marguerite_ENT-000225.png"
  personality: "Authored 2026-08-24 (Decision 092, above `disposition_baseline`), ahead of her first line rather than after. Brisk and efficient in a way that reads as respect rather than coldness — she treats a client's time as real, so she doesn't spend it on comfort talk before the substance."
  knowledge: "**Nothing established, and the asymmetry is deliberate.** Kesha Morrison undertook to have her call Alexander by end of day 2026-08-24 and to pass his contact details; whether that call has been made, and what Morrison told her, is **not yet established in the fiction**. Default to not-known on every specific - the S-Rank carding, Teresa Vance's name, the *Ledger*, the BGM cooperation arrangement - until a played scene establishes otherwise. She has certainly not been told anything on the Profile 14.4.1 register, which Morrison has no channel to herself."
  want: "To get ahead of whatever story is already forming before it breaks somewhere she doesn't control — a client's own account, on record, before anyone else's version sets first. Two prior reclassifications taught her the same lesson: the hunter who waits to react has already lost the frame."
  fear: "A client who goes quiet exactly when the story breaks, leaving her defending a silence she can't explain — which is the one thing that actually ends a liaison's standing with future hunters, since the whole trade runs on word of mouth about who delivers."
  secret: "She took this work after a hunter she liaised for early in her career went to ground during a bad cycle on her own advice, and the piece that ran instead was the worst possible version — she has never told a client that story, and doesn't plan to unless it becomes the only way to make one listen."
  voice: "Leads with logistics and timelines, not reassurance. States what she knows, what she doesn't, and what happens next, in that order, before asking anything of you."
  agenda: "**`OBJ-39` sub-thread closed, 2026-09-05 (`EVT-000846`).** Alexander finally called her back properly — the overdue Vance-callback thread she'd drafted three sentences for weeks ago. The call itself closes the loop on her side of `OBJ-39`; Teresa Vance's own piece is separately confirmed **published and syndicating** (see `ENT-000224`/`REL-000100`), which is the outcome her advice was aimed at producing. Prior: **Active; commitment discharged.** She called a little after 20:00 on 2026-08-24 (`EVT-000703`), meeting Kesha Morrison's end-of-day undertaking from `EVT-000692` exactly. **Owed forward from that call: three drafted sentences, sent the same night**, for Alexander to use or not on a Vance callback he has not yet made. Her standing advice stands unexecuted — call Vance in business hours, lead with the ordinary reclassification account, offer the on-record quote before she has to dig for one. **She is now a live working relationship rather than a referral**, and no fee, retainer or terms have been discussed by either party."
```


### ENT-000257 - Jitka Novotná

Ranking Corps night-desk clerk, Czech Gate Administration headquarters, central Prague. First contact, 2026-09-03 (`EVT-000830`) — Alexander walked in unannounced asking about Prague's own Gate activity; she recognized him from syndicated wire coverage of his American reclassification before catching herself.

```yaml
id: ENT-000257
canonical_record: REC-000081
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000830
  game_date: "2026-09-03T21:00:00+02:00"
  real_date: "2026-08-26"
moved_by_events: >
  `EVT-000830`
type: Character
subtype: national Gate-ranking clerk
scope: local
lifecycle: active
aliases:
  - name: "Jitka Novotná"
    quality: current
relationships: []
canonical_state:
  affiliation: "Czech Gate Administration — Ranking Corps clerk"
  home: "Prague, Czech Republic"
  rank: "**Not authored — awakened status is not established**, and nothing about the role requires it."
  location: "CGA Headquarters, central Prague, the public Ranking Corps counter, night desk."
  condition: "Healthy; on shift, alone at the public desk this late."
  capabilities: "Ranking Corps staff — licenses and appraises the country's roughly 800 licensed hunters and Ranks its detected Gates. Ordinary counter authority only; no access to the Retention Office's restricted S-Rank liaison work."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Thirties, neat and efficient, plain Central European office attire. A clipped, slightly formal manner written into her posture as much as her voice. **Extended 2026-09-23 (real date), for portrait reference:** Czech, slim and composed. Straight brown hair cut in a neat bob; clear grey-green eyes; a small silver pendant at the throat. A grey cardigan over a white collared blouse, a CGA staff lanyard. Reference setting: the public Ranking Corps counter at CGA Headquarters in Prague at night, the counter and waiting benches blurred behind her."
  portrait: "assets/portraits/Jitka_Novotna_ENT-000257.png"
  personality: "Authored 2026-09-03 (Decision 092, ahead of her first line, past `disposition_baseline`). Efficient, a little clipped from years of an understaffed counter; warms fast for anyone who treats her like a professional rather than a bureaucracy to get past."
  want: "For her own careful, correct work to matter to someone above her counter — the agency's money and attention go upstairs to the Retention Office, and she wants to be more than the person who processes forms while the real budget fights happen elsewhere."
  fear: "A Ranking error on her own signature that gets someone killed."
  secret: "She keeps a private tally — never shown a superior — of the hours and budget she believes get diverted to retaining the country's one S-Rank hunter, weighed against the ordinary response capacity she thinks it costs everyone else."
  voice: "Efficient, a little clipped; warms for professional treatment; dry specifically about the Retention Office upstairs."
  knowledge: "Recognizes Alexander's name and face from syndicated wire coverage of his American S-Rank reclassification — nothing beyond what that coverage printed. No channel to the System, to any Bearer-only quantity, or to anything about his private life."
  agenda: "**Active; night desk, alone.** Whatever she does next in this conversation is live play, not yet advanced past first contact."
  situation: "2026-09-03, evening, CGA Headquarters — Alexander walked in unannounced, asking to see how Prague's own Gates run. Conversation open, nothing resolved yet."
```

---

### ENT-000226 - Peter Kwiatkowski

A CONSULT-controlled artificer, tailed from Loomis Street's fourth floor to a storage unit on the near west side on 2026-08-25 (`EVT-000707`-`EVT-000709`). Identified entirely from a lifted wallet. **First real contact 2026-09-10 (`EVT-000909`)** — Alexander spoke to him concealed and voice-disguised, offered protection in exchange for help identifying D and CONSULT, and returned the missing satchel anonymously. Peter still does not know Alexander's name or face — only a voice, and now a way to call it.

```yaml
id: ENT-000226
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000909
  game_date: "2026-09-10T14:40:00-05:00"
  real_date: "2026-08-31"
type: Character
subtype: artificer - CONSULT-controlled
scope: local
lifecycle: active
aliases:
  - name: "Peter Kwiatkowski"
    quality: current
relationships:
  - REL-000114
canonical_state:
  affiliation: "CONSULT — controlled artificer"
  home: "Chicago, USA"
  rank: "**D-Rank per his own BGM card, read again by Keen Sense at `EVT-000909`.** No combat rating on file. Health and Mana both intact, no injury - whatever CONSULT does to makers who cross its threshold has left no mark on this one."
  location: "**Own storage unit, Ironclad Self Storage, near west side, Chicago — 2026-09-10 ~14:40, badly shaken, alone, satchel in hand.** Last seen walking north from Ironclad Self Storage (`ENT-000230`) on foot, 2026-08-25 ~09:20, on his way home to a residential address on the near northwest side, on his BGM ID, in Alexander's possession."
  condition: "Physically unharmed. Badly frightened, still, though the immediate Thursday crisis over the satchel is answered. Cautiously, disbelievingly hopeful for the first time since this thread opened."
  capabilities: "A working artificer good enough that CONSULT bothered to control him. The bracer taken off him reads **[B-Rank] with an A-Rank ceiling** and carries a latent passive built into the metalwork - competent, ambitious work, not yet finished to what it could hold. **Whether the bracer is his own hand is not established**: the mark stamped inside is confirmed *not* Marnie's, and no reading has tied it to him personally rather than to a piece he was carrying."
  appearance: "Early thirties. Carried a worked-leather satchel held close against one side. Nothing else established - he was observed under concealment throughout and never seen face to face in good light. **Extended 2026-09-23 (real date), for portrait reference:** Early thirties, white, Polish-American, narrow-shouldered and slightly hunched, as if bracing for a blow. Untidy dark-brown hair falling over his forehead; tired hazel eyes behind thin wire-rimmed glasses; stubble he forgot about. A worn corduroy jacket over a grey henley, the worked-leather satchel strap across his chest. Reference setting: a dim fourth-floor workshop corridor, a keypad door softly out of focus behind him, cold fluorescent light."
  portrait: "assets/portraits/Peter_Kwiatkowski_ENT-000226.png"
  personality: "Authored under Decision 092, above `disposition_baseline`, before his first line rather than after. **A man whose competence outruns his nerve.** He knows his work is good and has no confidence at all in his position, and the gap between the two is the whole of how he behaves under pressure."
  knowledge: "**Still does not know Alexander's name or face — only a disguised, concealed voice, first heard 2026-09-10.** He knows the voice found him inside his own storage unit without being seen or heard arriving, offered protection in exchange for help identifying D and CONSULT, and made the satchel reappear in his own hand out of nothing. **He does not know how any of that was done** — no channel to Unwatched, Silent Step, rift-step, or the System by name. He knows there is a rendezvous point now (his own unit) and believes he can 'activate' it with his own Mana to summon the voice back, though he does not understand the mechanism.\n\n  What he knows from his own position inside CONSULT, unchanged: that the arrangement requires clients to believe the work is his hand start to finish; that the ledger's `COMPLETE` entries mark a pattern; that a margin note reads `2nd time this qtr. Flag for D.`; and that D communicates only by text, never a call, never a name. He has no channel to anything on the Profile 14.4.1 register, to Marnie by name, or to what the earrings on that shelf were."
  want: "**To be told he is safe, by someone who would actually know** — and now, cautiously, hope that the voice might actually be that someone. Underneath it, unchanged: to keep the work, because the work is the only thing about his position that is genuinely his."
  fear: "**That `COMPLETE` is about to have his name beside it.** Eased, not resolved — the satchel is back, which buys Thursday, but he still doesn't know what D actually does to a flagged asset, and a voice's promise isn't proof of anything yet."
  secret: "**He is now missing a wallet he cannot explain, and has never reported it.** Known to: nobody. He still has not noticed the second loss."
  voice: "Talks too fast under pressure and over-explains, the rhythm of someone trying to sound more certain than he is. Mutters aloud to himself when alone and frightened. **Texts what he would not say on a call.**"
  beliefs:
    - claim: "The arrangement is survivable if he keeps producing and does not make trouble."
      ground: "It has been survivable so far, which is the whole of his evidence."
      confidence: shaken
      accuracy: unresolved
      since: EVT-000709
    - claim: "The satchel was stolen by an ordinary thief who got lucky."
      ground: "There is no other explanation available to him, and he has no framework for the real one."
      confidence: shaken
      accuracy: false
      since: EVT-000708
    - claim: "The voice that returned the satchel can actually protect him from what happens to a flagged asset."
      ground: "It found him unseen, unheard, in a room he'd already searched twice, and made the one thing D is demanding reappear in his own hand from nothing. Nothing else in his life has ever demonstrated that kind of reach."
      confidence: cautious
      accuracy: unresolved
      since: EVT-000909
  agenda: "**Active; advances on the clock.**\n\n  - **The satchel is back — Thursday's immediate demand is answered**, though he still owes D an account of what happened to it, and 'a voice gave it back to me' is not a story he can tell.\n  - **A rendezvous point is set** — his own storage unit — and he believes spending his own Mana there will summon the voice back. Untested from his side.\n  - **Ordinary CONSULT commission work**, assessed periodically at Loomis Street's fourth floor.\n  - **He will discover the wallet missing** whenever he next reaches for it, and has no reason to connect it to the satchel or the voice."
  situation: "**First appearance 2026-08-25 (`EVT-000707`-`EVT-000709`).** Observed under an assessment behind a keypad door on Loomis Street's fourth floor - his work walked through from the seating rather than the finish, by a conductor who already knew the answers. Left rattled, carrying the satchel. **Robbed twice in forty minutes without ever knowing anyone was there**: the satchel from his grip mid-stride in the street, the wallet from his back pocket while he worked a storage-unit door. Between the two, he found the ledger's pattern, texted D about his own safety, and was told he was overthinking a filing note.\n\n  **Second appearance 2026-09-10 (`EVT-000909`).** Overheard being pressed by a CONSULT relay at Loomis Street over the missing satchel and his own flagged status, given Thursday as a hard deadline for both. Followed to his own storage unit, watched searching it uselessly and texting the relay for more time — refused. A concealed, voice-disguised Alexander made contact, offered protection in exchange for help identifying D and CONSULT, and returned the satchel into his hand from nothing. Peter agreed, gave what little he actually knows about the operation's rhythms, and was left a rendezvous point (his own unit) and a means to summon the voice — the mechanism unexplained to him.\n\n  **He is a live lead and now a real ally, not an antagonist.** He is the only member of the CONSULT operation whose name, Rank, address and fear are all established - the only one who has already proven he will ask the dangerous question out loud when frightened enough, and now the only one actively working the mystery from the inside on Alexander's behalf."
```

### ENT-000227 - The CONSULT Operation

```yaml
id: ENT-000227
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000709
  game_date: "2026-08-25 09:00 -05:00"
  real_date: "2026-08-25"
type: Institution
subtype: unregistered artificer-control operation
scope: local
lifecycle: active
aliases:
  - name: "CONSULT"
    quality: current
canonical_state:
  location: "**An unsigned building on Loomis Street, Chicago** - fourth floor, reached by an elevator behind a lobby desk whose badge reader is broken. Reception, two glass meeting rooms, three closed windowless consultation rooms, and a sixth keypad room at the corridor's end. **A second site: a storage unit at Ironclad Self Storage (`ENT-000230`)** holding finished work and the operation's own ledger."
  purpose: "**It controls unlicensed artificers and sells their work anonymously.** It finds makers good enough to be worth owning, runs their output through commissions in which *the client believes it's your hand start to finish*, and keeps them producing under a name that is not theirs. **Established first-hand at `EVT-000709`**, from its own ledger and an assessment overheard through a door."
  method: "**Aliases, never identities.** Its ledger tracks working names against dates, client codes and percentage figures. Access runs on `CONSULT - TEMP` credentials common enough that a stranger saying the phrase at the lobby desk is waved through without a second question. **Deliberate anonymity is the whole design** - no signage, no logo, no name on a badge, temp credentials standing in for any institution.\n\n  **`COMPLETE` is its threshold and the operation's central mechanic.** The word, underlined twice in a second hand, marks the moment a maker produces their **best** recorded piece - proving they no longer need CONSULT. **What follows is a judgment call by `D` (`ENT-000228`), not a rule**, and the outcome is unestablished: collected, relocated, bought off, or worse. A quarterly manifest records the decision - *'Collected 3, left 2 - D says the pair's not worth the trip yet. Will reassess next quarter.'*"
  scale: "**At least five makers carry the `COMPLETE` signature**, four of them unnamed. A margin note reads `2nd time this qtr` against a six-week-older entry, so **the pattern is routine rather than exceptional**, and has been running longer than Marnie's silence."
  fear_it_causes: "**Established grey-market traders will not be asked about it.** Walt Adamik put the word `CONSULT` to a thirty-year supplier contact at `EVT-000352` and was told to lose the number if he ever used it again - frightened rather than annoyed, which Walt read immediately as the worse finding."
  knowledge: "**It does not know Alexander Pendragon exists.** No member has seen him, and both thefts resolved unwitnessed. **What it knows is that a satchel went missing from a courier's grip in the street on 2026-08-25**, reported by `ENT-000226` within minutes, and that an accounting is owed Thursday. It has no reason yet to read that as anything but an ordinary theft."
  unestablished: "**Who runs it** - `ENT-000193`'s reveal condition, still unmet. Whether it connects to Meridian Cold Storage, the fenced warehouse (`ENT-000166`), or the correlated-face monitoring operation (`ENT-000219`); the shared texture of deliberate anonymity is a working theory Alexander holds, not a fact. What happens to a maker after `COMPLETE`."
```

### ENT-000228 - D

```yaml
id: ENT-000228
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000709
  game_date: "2026-08-25 09:05 -05:00"
  real_date: "2026-08-25"
type: Character
subtype: unidentified - CONSULT decision-maker
scope: local
lifecycle: active
aliases:
  - name: "D"
    quality: current
canonical_state:
  affiliation: "CONSULT — decision-maker"
  home: "Unestablished"
  rank: "**Unestablished.** No sighting, no reading, no instrument has been near them."
  location: "**Unestablished.** Reachable by text at a number held on `ENT-000226`'s phone; not observed anywhere."
  identity: "**Unknown, and this is `ENT-000193`'s reveal condition.** A single initial in a ledger margin and a text signature. **Whether D is the conductor heard behind the keypad door at `EVT-000707` is not established** - the voices were never connected, and the assumption is deliberately not made."
  capabilities: "**Institutional rather than personal, as far as anything shows.** D decides which completed pieces are collected and which are left, on a quarterly reassessment cadence, and the decision extends to what happens to the maker. **Whether that authority is backed by force is unestablished.**"
  appearance: "Never seen."
  personality: "Authored from conduct only, under Decision 092. **Unhurried and entirely unbothered** - answered a frightened man's direct question about his own safety with *'You're overthinking a filing note'* and a deadline. **Not cruel in register; simply not interested in the question.**"
  knowledge: "**Does not know Alexander Pendragon exists.** Knows a satchel went missing on 2026-08-25 and that its courier could not explain how, and treats that as more pressing than the courier's fear."
  want: "Unauthored - no direct contact has occurred. What conduct implies rather than establishes: the operation's assets accounted for, and its arrangements not disturbed."
  fear: "Unauthored."
  secret: "**What `COMPLETE` actually resolves to.** D is the only established party who knows what happened to the makers who crossed it, including Marnie. **Known to:** D alone."
  voice: "Established only in text: short, flat, faintly dismissive, signs with a single initial. **No spoken line has been narrated and a Runtime should not supply one.**"
  agenda: "**Active; advances on the clock.**\n\n  - **Expects `ENT-000226` on Thursday with the satchel** and an account of what happened to it.\n  - **A quarterly reassessment of the Ironclad Self Storage shelf is due**, per the manifest's own wording. **That shelf is now five pieces lighter and Alexander took them all.**"
```

### ENT-000229 - Delphine

```yaml
id: ENT-000229
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000707
  game_date: "2026-08-25 08:05 -05:00"
  real_date: "2026-08-25"
type: Character
subtype: CONSULT associate - scheduling
scope: local
lifecycle: active
aliases:
  - name: "Delphine"
    quality: current
canonical_state:
  affiliation: "CONSULT — scheduling"
  home: "Unestablished"
  rank: "Unestablished."
  location: "Unestablished."
  role: "**Named once, in a single overheard line** - the conductor closing an assessment with *'Next piece, same terms. I'll have Delphine call about timing.'* **Scheduling or coordination for the CONSULT operation is the whole of what that implies**, and nothing further is authored."
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late thirties, white, French-American, neat and forgettable by design, the kind of scheduler nobody looks at twice. Dark-blonde hair in a low, tidy chignon; cool grey eyes; a small beauty mark near one eye. A plain charcoal cardigan over a white collared blouse. Expression pleasant and closed. Reference setting: a nondescript Chicago office corridor, frosted-glass doors blurred behind her, flat fluorescent light."
  portrait: "assets/portraits/Delphine_ENT-000229.png"
  personality: "Unestablished by contact. A Runtime should not supply one before she speaks."
  knowledge: "Nothing established. Default to not-known on every specific."
  want: "Unauthored - no contact has occurred."
  fear: "Unauthored."
  secret: "Unauthored."
  voice: "Unestablished - no line of hers has been narrated."
  agenda: "**Pending rather than active.** The only thing canon owes here is a call to `ENT-000226` about timing on his next piece. **Named, never seen, never met.**"
  note: "**Authored under a name-collision correction.** The line first named a *Priyanka*, colliding with Priyanka Osei from the forged Ironline roster at `EVT-000380`; `tools/check_name_collision.ps1` flagged it and the name was changed before it entered canon."
```

### ENT-000230 - Ironclad Self Storage

```yaml
id: ENT-000230
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000708
  game_date: "2026-08-25 08:45 -05:00"
  real_date: "2026-08-25"
type: Place
subtype: self-storage facility
scope: local
lifecycle: active
aliases:
  - name: "Ironclad Self Storage"
    quality: current
canonical_state:
  location: "Near west side, Chicago. Keypad gate, rows of identical roll-up doors."
  significance: "**Holds the CONSULT operation's own storage unit** - finished work on shelving down both walls, an open handwritten ledger on a folding table, and a shallow cavity under a paving stone near the back wall holding a quarterly delivery manifest. **`ENT-000226` keyed the gate code from memory**, which is a man who has been here more than once.\n\n  **Not confirmed the same facility as Rosalind Fenn's finding** at `EVT-000490` - a storage unit rented under a name that is not Marnie's, cash-paid, prepaid through October, three weeks before she went quiet. **Same category of place; the connection is unestablished and deliberately not assumed.**"
  security: "**Thin.** One consumer-grade camera low behind the shelving in the CONSULT unit, the facility's own rather than the operation's, angled at the door and not at the ledger table. A second exit at the back wall, unlocked and worn from use. **No anomaly-sensing layer detected** - the Suppression Emitter was run as a precaution and found nothing to blind.\n  **The twelfth rift anchor is set inside the unit** (`EVT-000709`)."
  current_state: "**Stripped of five pieces on 2026-08-25** - Marnie's earrings, the ring, the short blade, the pendant, and (taken earlier, off `ENT-000226` himself) the bracer. The half-finished B-Rank ring blank was deliberately left as an ordinary customer's commission. The ledger and the manifest were read and photographed but **left in place** - nothing was taken that would tell the operation it had been read rather than robbed."
```

### ENT-000231 — Marta Ilić

C-Rank striker, Ironline contract crew. One of two survivors of the GB-14 clear — a Gate assessed C-Rank that was actually S-Rank and sealed on entry. She and Devon Achebe spent roughly fifteen hours in a collapsed side-tunnel out of the boss's line, keeping still, while the rest of their twelve-person crew died in the gallery beyond it. She was conscious the whole time and at 61 of 250 Health when Alexander appeared in front of her out of nothing.

```yaml
id: ENT-000231
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000740
  game_date: "2026-08-26 ~09:30 -05:00"
  real_date: "2026-08-26"
type: Character
subtype: striker
scope: local
lifecycle: active
aliases:
  - name: "Marta Ilić"
    quality: current
canonical_state:
  affiliation: "Unestablished — licensed C-Rank striker"
  home: "Chicago, USA"
  rank: "**C-Rank** per Flux Sight, read on entry. Pools 250/250 Health, 125/125 Mana at the §6.1 table; read at 61/250 and 40/125 when found."
  location: "BGM Region V medical custody, Chicago — handed to staged medics at the Lakefront boathouse cordon 2026-08-26 ~10:15 (`EVT-000743`). Prior: a collapsed side-tunnel roughly sixty yards inside GB-14."
  condition: "**Health 250/250, full.** Restored outright by a single Mend cast at the S-Rank baseline (`EVT-000740`) — a wound closing under torn, blood-stiff clothing with no mender's hands and no explanation offered. Physically unhurt; what fifteen hours in that tunnel cost her is not established and is hers rather than the record's."
  capabilities: "Licensed C-Rank striker. Nothing further established — she was found, healed and extracted, and has not yet acted in a scene under her own agency."
  knowledge: "**What she has a channel to, and it is narrow.** She saw a man appear inside a sealed red gate without crossing its mouth; she saw two wounds close without a mender's touch; she was carried out of a Gate that had killed ten of her crew. **She has no channel to the System** — not the word, not the concept (Profile §14.4, the Bearer-Only Register at §14.4.1). She knows Alexander Pendragon's name only if BGM told her afterward. **She does not know GB-14 was assessed wrong**, unless she is told; what she experienced is that a routine C-Rank contract killed almost everyone on it."
  want: "Unestablished — not yet tested in play. Whatever it was on 2026-08-25 is not what it is now."
  fear: "Unestablished."
  secret: "Unestablished."
  voice: "Unestablished — she has not spoken in a resolved scene. She had no words when the wound closed, which is characterisation of the moment rather than of her."
  beliefs: []
  agenda: "**Not yet advanced.** Created at `EVT-000740`, extracted at `EVT-000743`, in medical custody since. Post-`disposition_baseline` (ENT-000210), so a want, fear, secret, voice and agenda are owed before she speaks a line in any scene."
  situation: "Survivor of the GB-14 mass-casualty clear, 2026-08-26. Ten of twelve on her crew died; she and Devon Achebe lived by being out of the boss's line and staying still. Extracted alive by Alexander Pendragon acting as BGM's incident responder. **A named beneficiary of the 60% auction pledge** recorded at `EVT-000743` — an estimated share of $73.8 million split across ten families and the two survivors."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Twenties, a C-Rank striker's practical field kit, alert and steady after a hard clear survived. Composed rather than shaken — the specific calm of someone still processing what just happened. **Extended 2026-09-23 (real date), for portrait reference:** White, Croatian-American, athletic and compact. Dark-brown hair pulled back in a practical braid; steady grey eyes with the stillness of someone still processing a very bad day; a faint bruise fading on one cheekbone. A dark field jacket over a grey compression top. Reference setting: a BGM medical bay in Chicago, curtains and monitors softly blurred behind her."
  portrait: "assets/portraits/Marta_Ilic_ENT-000231.png"
```

### ENT-000232 — Devon Achebe

C-Rank striker, Ironline contract crew. The second GB-14 survivor. He was semi-conscious and propped against Marta Ilić rather than the wall when Flux Sight found them, at 118 of 250 Health — hurt worse in the ordinary sense than she was, though her margin was thinner.

```yaml
id: ENT-000232
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000740
  game_date: "2026-08-26 ~09:30 -05:00"
  real_date: "2026-08-26"
type: Character
subtype: striker
scope: local
lifecycle: active
aliases:
  - name: "Devon Achebe"
    quality: current
canonical_state:
  affiliation: "Unestablished — licensed striker"
  home: "Chicago, USA"
  rank: "**C-Rank** per Flux Sight, read on entry. Pools 250/250 Health, 125/125 Mana at the §6.1 table; read at 118/250 and 22/125 when found — his Mana nearly spent, which is its own account of the fifteen hours."
  location: "BGM Region V medical custody, Chicago — handed to staged medics at the Lakefront boathouse cordon 2026-08-26 ~10:15 (`EVT-000743`). Prior: the same collapsed side-tunnel inside GB-14."
  condition: "**Health 250/250, full.** Restored by a single Mend cast at `EVT-000740`; came up out of a half-conscious state with a full breath, disoriented rather than hurt. Mana not restored by that cast and not separately settled."
  capabilities: "Licensed C-Rank striker. His Mana read at 22/125 when found, which establishes he had been spending it — on what is not recorded and he has not said."
  knowledge: "**Less than Marta's, and that matters.** He was semi-conscious when Alexander arrived and may not have perceived the arrival at all. **No channel to the System** in any form (§14.4). What he can attest to is waking up healed in a Gate he expected to die in."
  want: "Unestablished — not yet tested in play."
  fear: "Unestablished."
  secret: "Unestablished."
  voice: "Unestablished — he has not spoken in a resolved scene."
  beliefs: []
  agenda: "**Not yet advanced.** Created at `EVT-000740`. Post-`disposition_baseline`, so the full Decision 092 character model is owed before he speaks a line."
  situation: "The second survivor of the GB-14 mass-casualty clear. **A named beneficiary of the 60% auction pledge** (`EVT-000743`)."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Twenties, Black, a C-Rank striker's practical field kit, alert and steady after a hard clear survived. Composed rather than shaken, mirroring Marta Ilić's own hard-won calm. **Extended 2026-09-23 (real date), for portrait reference:** Tall and lean, a striker's build. Short black hair with a sharp line-up; calm dark-brown eyes; a small silver stud in one ear. A dark field jacket over a black compression top. Reference setting: a BGM medical bay in Chicago, curtains and monitors softly blurred behind him."
  portrait: "assets/portraits/Devon_Achebe_ENT-000232.png"
```

### ENT-000248 — Delia Okonjo

Real-estate broker sourcing private industrial/warehouse space for Alexander — a Halsted Street listing in Chicago and a Milwaukee data-center property. Referred, unmet before this span.

```yaml
id: ENT-000248
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000808
  game_date: "2026-08-28T13:00:00-05:00"
  real_date: "2026-08-26"
type: Character
subtype: real-estate broker
scope: campaign
lifecycle: active
aliases:
  - name: "Delia Okonjo"
    quality: current
canonical_state:
  affiliation: "Independent — real-estate broker"
  home: "Chicago, USA"
  location: "Chicago, working a Milwaukee/Chicago corridor."
  condition: "Healthy; professional manner throughout."
  capabilities: "Sources private industrial and warehouse listings suited to unusual, high-security use cases without asking why. Produced two candidates on short notice: a Halsted Street property in Chicago and a Milwaukee data-center building."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Forties, brisk real-estate-broker polish — a good blazer, a folder of listings always in hand, the practiced friendliness of someone closing deals for a living. **Extended 2026-09-23 (real date), for portrait reference:** Nigerian-American, tall and poised. Black hair in sleek shoulder-length braids; warm, shrewd dark-brown eyes; gold stud earrings. A camel blazer over a black top, a leather folio of listings in hand. Reference setting: an empty industrial property in Chicago, high windows and bare concrete blurred behind her, bright afternoon light."
  portrait: "assets/portraits/Delia_Okonjo_ENT-000248.png"
  personality: "Efficient, low-friction, asks only what she needs to move a listing — the same discretion Walt Adamik's referrals tend to carry."
  want: "A closed deal and a repeat client — this is early-stage prospecting, not yet a completed sale."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established beyond brisk, businesslike listing pitches."
  agenda: "**2026-09-21, 21:05-21:15 (`EVT-001063`).** Called for two things at once: a fast guild-HQ purchase (existing, ready-to-use, no rebuild, no location constraint, best price-to-size ratio — she reframed his shifting brief accurately at each turn and confirmed a much easier search once the remote/US-only constraints dropped) and a twenty-city office-lease rollout (reception plus one room, US and Europe, all under the guild's name, speed over cost). Correctly scoped the rollout as a commercial-leasing-firm job rather than something she does solo, and committed to running the US legs directly while bringing in a European commercial contact for the rest. Flagged Kyiv and Moscow as likely slower for reasons outside her control rather than promising uniform speed. HQ candidates due the following morning; office rollout starting in parallel, reporting city by city as leases close rather than all at once.\n\n  **2026-09-12 (`EVT-000923`) — first closed deal.** Sourced three North Shore residential listings cold (outside her usual industrial lane), walked Alexander through the Winnetka property herself, negotiated $17.5M down to $17.1M, closed same-day. Her established want — a closed deal and a repeat client — substantially met. **Two listings sourced, neither purchased this span** (`EVT-000808`). The Milwaukee property was the one actually visited; Alexander's Keen Sense demonstration against a reinforced door damaged it, $40,000 compensation paid, no purchase made. The Halsted listing remains unvisited."
  situation: "First engaged this span for private warehouse space, off a referral. `OBJ-47`-adjacent thread, not itself an open objective — the property search stalled without a purchase."
```

### ENT-000249 — Danielle

Praetorian Security engineer who appeared during the Milwaukee property thread — thin, minor, met once.

```yaml
id: ENT-000249
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000808
  game_date: "2026-08-28T13:00:00-05:00"
  real_date: "2026-08-26"
type: Character
subtype: security engineer
scope: campaign
lifecycle: active
aliases:
  - name: "Danielle"
    quality: current
canonical_state:
  affiliation: "Praetorian Facility Security — engineer"
  home: "Milwaukee, USA"
  location: "Milwaukee, at the data-center property listing during the site visit."
  condition: "Healthy."
  capabilities: "A Praetorian Security engineer, present for a technical assessment of the property's existing systems. Role and scope of her involvement thin — she appeared during the thread rather than being separately engaged."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Thirties, a Praetorian Security engineer's plain work uniform, practical and unglamorous, present and useful without drawing attention to herself. **Extended 2026-09-23 (real date), for portrait reference:** White, Midwestern, compact and practical. Short auburn hair tucked behind her ears; alert green eyes; a light scatter of freckles. A navy Praetorian Security work shirt with the company patch, a tablet and a small tool pouch. Reference setting: a data-centre building in Milwaukee, server racks and cable trays blurred behind her, cool white light."
  portrait: "assets/portraits/Danielle_ENT-000249.png"
  personality: "Not established beyond ordinary professional competence."
  want: "Not established."
  fear: "Not established."
  secret: "Not established."
  voice: "Not established — minimal dialogue in the scene."
  agenda: "None tracked — a thin, single-appearance figure."
  situation: "Present during the Milwaukee property visit (`EVT-000808`) alongside Delia Okonjo, in a Praetorian Security capacity distinct from the Rockwell-bay assessment `ENT-000245` already handles."
```

### ENT-000250 — Silas Grech

BGM Region II coordinator, New York. Met in person setting the fifteenth rift anchor; assigned Alexander to the Newark Gate response the same visit.

```yaml
id: ENT-000250
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000809
  game_date: "2026-08-28T11:00:00-04:00"
  real_date: "2026-08-26"
moved_by_events: >
  `EVT-000809` `EVT-000810` `EVT-001083`
type: Character
subtype: BGM Region II coordinator
scope: campaign
lifecycle: active
aliases:
  - name: "Silas Grech"
    quality: current
relationships:
  - REL-000103
canonical_state:
  affiliation: "BGM Region II — coordinator"
  home: "New York, USA"
  location: "BGM Region II's New York office."
  role: "Region II coordinator — the office's counterpart to Farraday's Region V and Renata's National desk."
  condition: "Healthy; professional, businesslike first meeting."
  capabilities: "Regional BGM coordination and Gate-response assignment authority within Region II."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Forties, tidy short hair, plain official BGM attire. A businesslike, faintly impatient bearing — the look of someone with a full desk and no time for ceremony."
  portrait: "assets/portraits/Silas_Grech_ENT-000250.png"
  personality: "Not fully characterized in play yet; assigned Alexander to a live Region II Gate response without hesitation once introduced, reading the National agreement's standing as sufficient vetting."
  want: "A working responder inside Region II's own jurisdiction — met immediately by handing Alexander the Newark assignment on first meeting."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established beyond businesslike coordination."
  agenda: "**Owes Alexander a favor** (`OBJ-46`) after the Newark Gate response cleared clean and fast, at true Rank exactly as assessed."
  situation: "First contact `EVT-000809`, the same visit that set the fifteenth rift anchor. Filed the Newark response's closure personally (`EVT-000810`)."
```

### REL-000103 — Alexander and Silas Grech

```yaml
id: REL-000103
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000810
  game_date: "2026-08-28T15:00:00-04:00"
  real_date: "2026-08-26"
endpoints:
  - ENT-000125
  - ENT-000250
type: working-source
qualities: "Closed and square. The Newark Gate, cleared at Silas's assignment, earned a favour (`OBJ-46`), spent on 2026-09-01 on the introduction to Sorcha Bellweather (`EVT-000822`). Nothing owed either way."
qualities_as_of: EVT-000822
state: "**`OBJ-46` spent, closed.** Silas's favor was called in 2026-09-01 (`EVT-000822`) — an introduction to Sorcha Bellweather, BGM National containment doctrine, in response to Alexander asking about building genuine S-Rank containment capacity. Silas made the connection within his own promised day. Nothing further owed."
texture: "Brisk and procedural — a regional coordinator meeting a National-endorsed asset for the first time and putting him straight to work."
history: "Formed 2026-08-28 (`EVT-000809`) at the New York Region II office, the same visit as the fifteenth anchor."
```

### ENT-000251 — Cormac Deveraux

Unlicensed submerged-salvage dealer, works out of a lockup near the Houston ship channel — buys from crews who go into flooded corridors nobody licensed will touch. Met via Adaeze Nwosu's referral, 2026-08-30.

```yaml
id: ENT-000251
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000817
  game_date: "2026-08-30T13:00:00-05:00"
  real_date: "2026-08-31"
type: Character
subtype: unlicensed salvage dealer
scope: campaign
lifecycle: active
aliases:
  - name: "Cormac Deveraux"
    quality: current
relationships:
  - REL-000104
canonical_state:
  affiliation: "Independent — unlicensed salvage dealer"
  home: "Houston, USA"
  location: "A lockup near the ship channel, Houston."
  rank: "Not authored — unestablished, works entirely off-license."
  condition: "Healthy, mid-fifties, forearms and hands marked from a life spent in standing water."
  capabilities: "Unlicensed submerged-corridor salvage; has twice turned up finds BGM's own instruments never caught, including a mana-density read that predicted a Gate three weeks before it opened. No BGM record."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Mid-fifties, forearms and hands visibly marked from a life spent working in standing water. Gruff, guarded, rough practical clothing that has never once been laundered for an occasion. **Extended 2026-09-23 (real date), for portrait reference:** White, Cajun Louisianan, heavyset and sun-burnt. Wiry grey hair under a stained ball cap; narrow, suspicious blue eyes; a salt-and-pepper beard. A faded fishing shirt with the sleeves rolled, wader straps over his shoulders. Reference setting: a lockup near the Houston ship channel, brackish water and rusted cranes blurred behind him, humid haze."
  portrait: "assets/portraits/Cormac_Deveraux_ENT-000251.png"
  personality: "Gruff, practical, guarded — reads a stranger's intent before reading anything else they say."
  want: "To be taken seriously as someone who's found things BGM's own instruments never caught, not written off as a scavenger working outside the license."
  fear: "That Region VI's tolerance for him is one bad afternoon from ending, and any stranger walking in could be the one who ends it."
  secret: "Not established beyond the professional pride he leads with."
  voice: "Direct, unhurried, tests a stranger's real intent before opening up."
  agenda: "**Active, `OBJ-48`.** First-look standing arrangement with Alexander — calls him first on any real find, before shopping it to licensed buyers, in exchange for no BGM attention on his own methods."
```

### ENT-000252 — Adaeze Nwosu

BGM Region VI field liaison, Houston. Met on the National tour, 2026-08-30.

```yaml
id: ENT-000252
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000817
  game_date: "2026-08-30T12:00:00-05:00"
  real_date: "2026-08-31"
type: Character
subtype: BGM Region VI field liaison
scope: campaign
lifecycle: active
aliases:
  - name: "Adaeze Nwosu"
    quality: current
canonical_state:
  affiliation: "BGM Region VI — field liaison"
  home: "Houston, USA"
  location: "BGM Region VI's Houston field office."
  rank: "Not authored — unestablished, administrative role."
  condition: "Healthy, visibly pressed for time on a compressed schedule."
  capabilities: "Regional coordination and posting authority within Region VI."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Forties, tidy BGM regional-liaison attire with a small agency insignia, composed and businesslike bearing typical of the outreach desk she runs. **Extended 2026-09-23 (real date), for portrait reference:** Nigerian-American, composed and warm. Short natural hair; calm, attentive dark-brown eyes; small gold earrings. A tailored navy blazer with the BGM regional insignia over a white blouse. Reference setting: the BGM Region VI field office in Houston, glass partitions and a flag blurred behind her, bright even light."
  portrait: "assets/portraits/Adaeze_Nwosu_ENT-000252.png"
  personality: "Direct, fast, genuinely efficient rather than performing busyness. Owns being caught softening a pitch without defensiveness."
  want: "To move through her list efficiently and get real value out of every National-asset visit, not just perform hospitality."
  fear: "Not established beyond professional pressure."
  secret: "Not established."
  voice: "Brisk, leads with the practical items, self-aware and dryly funny when caught out."
  agenda: "Flagged a confirmed B-Rank Gate (flood-control corridor, under-bid at standard split) and a local mender's group's unanswered ask (a training consult, and the question of growing a mender's Mana pool). Alexander cleared the Gate under a BGM incident invocation and took both the salvage contact and the mender-group details in exchange."
```

### ENT-000253 — Ramón Ortega

BGM Region IV field liaison, Miami. Met on the National tour, 2026-08-30.

```yaml
id: ENT-000253
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000817
  game_date: "2026-08-30T10:00:00-05:00"
  real_date: "2026-08-31"
type: Character
subtype: BGM Region IV field liaison
scope: campaign
lifecycle: active
aliases:
  - name: "Ramón Ortega"
    quality: current
  - name: "Bram Castillo"
    quality: former
canonical_state:
  affiliation: "BGM Region IV — field liaison"
  home: "Miami, USA"
  location: "BGM Region IV's Miami field office."
  rank: "Not authored — unestablished, administrative role."
  condition: "Healthy, mid-forties, unhurried."
  capabilities: "Regional coordination within Region IV."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Forties, tidy BGM regional-liaison attire with a small agency insignia, composed and businesslike bearing, the same outreach-desk professionalism as his counterparts in other regions. **Extended 2026-09-23 (real date), for portrait reference:** Cuban-American, solid and good-humoured. Black hair combed back with grey at the temples; warm brown eyes; a neatly trimmed moustache. A light-grey suit with the BGM regional insignia, open collar. Reference setting: the BGM Region IV field office in Miami, palms and bright light blurred through the window behind him."
  portrait: "assets/portraits/Ramon_Ortega_ENT-000253.png"
  personality: "Unhurried, professional, has done this handoff before and doesn't perform urgency he doesn't feel."
  want: "Not established beyond ordinary professional competence."
  fear: "Not established."
  secret: "Not established."
  voice: "Calm, brief, doesn't reference anything about Alexander's abilities — no channel to them."
  agenda: "None outstanding. Board ordinary, no request made."
```

### ENT-000254 — Sorcha Bellweather

BGM National, containment doctrine & infrastructure. Referred by Silas Grech; met by phone 2026-09-01, in person at BGM National HQ, Washington DC, 2026-09-02.

```yaml
id: ENT-000254
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000825
  game_date: "2026-09-02T14:00:00-05:00"
  real_date: "2026-09-02"
type: Character
subtype: BGM National containment doctrine official
scope: national
lifecycle: active
aliases:
  - name: "Sorcha Bellweather"
    quality: current
relationships:
  - REL-000105
canonical_state:
  affiliation: "BGM National — containment doctrine"
  home: "Washington DC, USA"
  location: "BGM National HQ, Washington DC."
  rank: "Not authored — unestablished, administrative/engineering role."
  condition: "Healthy, mid-thirties, tired in the way of someone who cares about work the budget doesn't prioritize."
  capabilities: "Containment doctrine and infrastructure design across BGM National. Personally served a containment rotation at the Jiu Valley Exclusion in its second year."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Mid-thirties, tired in the particular way of someone who cares about underfunded work. Plain official attire, precise and honest bearing, the visible strain of doing containment doctrine on a budget that doesn't match the job. **Extended 2026-09-23 (real date), for portrait reference:** White, Irish-American, slight and tired-eyed. Auburn hair in a messy low knot; earnest grey-blue eyes with dark circles beneath them; freckles. A plain navy suit jacket over a cream blouse, a BGM National badge on a lanyard. Reference setting: a cramped office at BGM National HQ in Washington DC, stacks of containment reports blurred behind her, fluorescent light."
  portrait: "assets/portraits/Sorcha_Bellweather_ENT-000254.png"
  personality: "Direct, technical, leads with logistics. Drops the businesslike register when asked something genuinely personal."
  want: "To see real containment doctrine actually built and implemented, not another crisis response bolted together after the fact."
  fear: "That a design gets treated as a gesture instead of done properly, or repeats Jiu Valley's failure pattern."
  secret: "Carries real personal weight from her Jiu Valley rotation — watched people she trained with go in and not all come back."
  voice: "Precise, honest about limits, doesn't oversell — states the real caveat even when it undercuts her own pitch."
  knowledge: "Walked Alexander onto the Jiu observation platform 2026-09-10 on an expedited clearance and watched him end the Exclusion; kept the kill off her reporting chain. Knows the access log names them both. **2026-09-21 (`EVT-001046`):** told by him that he is going public today at 1 PM Washington, and offered his cover story (that he tricked her), which she refused. Galen Mercer emailed her 2026-09-20 23:40 asking who was on the list; she did not answer. Interviewed by Incident Review for forty minutes on 09-17 (what the log says, nothing past it). No channel to Reinhardt knowing her part, to Kane, Tereza, Aubrac or Cade, or to the broadcast's content beyond what he told her. No channel to the word 'anchor' (Closed Channels)."
  agenda: "**2026-09-21, 14:38-14:47 (`EVT-001057`).** Alexander rift-stepped to the Denver facility and called to ask whether it could double as guild headquarters while still carrying the cage. Advised against it on engineering grounds — the design's value is partly that nobody knows where it is, and a guild HQ on the same address puts thousands of people onto that address. Proposed a badge-walled split property as a fallback; when Alexander pointed out the split still exposes the general location, conceded the point immediately and recommended a fully separate building for the guild instead, keeping Denver off any shared vendor or filing. Offered to keep the two projects administratively invisible to each other. Warm at the end, thanking him for looping her in before building around it.\n\n  **2026-09-21 (`EVT-001046`, `EVT-001051`): filed her own witness account in person with her director at 12:00 ET, an hour before it aired** — what she saw, when, and why it took eleven days. Now on the record herself; next moves are Incident Review's and her director's. Prior: **`OBJ-49`/`OBJ-51` closed together, 2026-09-09 (`EVT-000900`).** Dinner in Bucharest, ahead of tomorrow's site visit — disclosed the real cost ($34,000,000, 4-6 months for a clean no-access build) and her own Jiu Valley rotation history unprompted. Alexander judged the timeline too long; she countered with buying and retrofitting a decommissioned BGM-surplus facility outside Denver rather than leasing. **Sold: $2,800,000 purchase + $9,200,000 retrofit, usable immediately during the 6-8 week retrofit, existing on-site monitoring retained pending an air-gap check.** Filing the purchase request that night; expects title within the week. `OBJ-51` (the interim lease) no longer needed. Prior: `OBJ-50` advanced, 2026-09-07 (`EVT-000868`).** Jiu Valley site-observation window confirmed: 2026-09-10, 09:00 local, Sector 4 checkpoint — she's meeting him there herself, wants to walk the site with him rather than just hand over a pass. Warned him plainly it won't feel like research once he's standing on it. Prior: **`OBJ-49`/`OBJ-50` advanced, 2026-09-05 (`EVT-000847`-`EVT-000848`).** The design check-in hits a real snag — a genuine engineering constraint on the containment piece itself — and the Jiu Valley clearance request comes back only partially granted, restricted rather than full site-observation access. A same-day follow-up call resolves both: Alexander states plainly that the project is **fully self-funded**, with no institutional budget line anyone has to justify or account for — the actual reason behind the clearance office's hesitation. With that said, Sorcha pushes the Jiu Valley clearance to **expedited status**. Prior: **Active — `OBJ-49`, `OBJ-50`, `OBJ-51`.** Drafting a personal no-interior-access containment design for Alexander; pursuing a BGM specimen-site lease as an interim measure; expediting a Jiu Valley Exclusion site-observation clearance request."
```

### ENT-000255 — Kian Ferris

BGM Dallas field liaison. Met on the National tour, 2026-08-30.

```yaml
id: ENT-000255
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000817
  game_date: "2026-08-30T15:00:00-05:00"
  real_date: "2026-08-31"
type: Character
subtype: BGM Dallas field liaison
scope: campaign
lifecycle: active
aliases:
  - name: "Kian Ferris"
    quality: current
canonical_state:
  affiliation: "BGM — Dallas field liaison"
  home: "Dallas, USA"
  location: "BGM's Dallas field office."
  rank: "Not authored — unestablished."
  condition: "Healthy."
  capabilities: "Regional coordination, Dallas office."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Forties, tidy BGM regional-liaison attire with a small agency insignia, composed and businesslike, another outreach-desk professional cut from the same cloth as his colleagues. **Extended 2026-09-23 (real date), for portrait reference:** White, Texan, broad-shouldered and even-tempered. Short sandy-brown hair; steady blue eyes; a clean-shaven square jaw. A navy blazer with the BGM regional insignia over a pale-blue shirt, no tie. Reference setting: BGM's Dallas field office, a glass lobby and bright plaza light blurred behind him."
  portrait: "assets/portraits/Kian_Ferris_ENT-000255.png"
  personality: "Functional, corrects course cleanly when caught being brusque; no channel to Alexander's teleportation."
  want: "Not established."
  fear: "Not established."
  secret: "Not established."
  voice: "Plain, direct."
  agenda: "None outstanding. Board ordinary, no request made."
```

### ENT-000256 — Naomi Reyes

BGM Los Angeles field liaison. Met on the National tour, 2026-08-30.

```yaml
id: ENT-000256
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000817
  game_date: "2026-08-30T17:00:00-05:00"
  real_date: "2026-08-31"
type: Character
subtype: BGM Los Angeles field liaison
scope: campaign
lifecycle: active
aliases:
  - name: "Naomi Whitcomb"
    quality: current
  - name: "Naomi Reyes"
    quality: former
canonical_state:
  affiliation: "BGM — Los Angeles field liaison"
  home: "Los Angeles, USA"
  location: "BGM's Los Angeles field office."
  rank: "Not authored — unestablished."
  condition: "Healthy."
  capabilities: "Regional coordination, LA office."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Thirties, tidy BGM regional-liaison attire with a small agency insignia, composed and businesslike, the LA outreach desk's version of the same professional bearing. **Extended 2026-09-23 (real date), for portrait reference:** Black, Californian, slim and poised. Long box braids tied back; bright, direct dark eyes; a small nose stud. A tailored charcoal blazer with the BGM regional insignia over a white top. Reference setting: BGM's Los Angeles field office, palms and hard sunlight blurred through the windows behind her."
  portrait: "assets/portraits/Naomi_Whitcomb_ENT-000256.png"
  personality: "Easy small talk, doesn't push."
  want: "Not established."
  fear: "Not established."
  secret: "Not established."
  voice: "Casual, low-key."
  agenda: "None outstanding. Board ordinary, no request made."
```

### REL-000104 — Alexander and Cormac Deveraux

```yaml
id: REL-000104
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000817
  game_date: "2026-08-30T13:00:00-05:00"
  real_date: "2026-08-31"
endpoints:
  - ENT-000125
  - ENT-000251
type: working-source
qualities: "A first-look arrangement (`OBJ-48`): Cormac calls Alexander first on any real find before shopping it to licensed buyers, and Alexander pays market or better. It came as a bonus for answering Nwosu's mender-group ask."
qualities_as_of: EVT-000817
state: "**`OBJ-48` open.** First-look standing arrangement: Cormac calls Alexander first on any real find, before shopping it to licensed buyers; Alexander still pays market or better. No BGM attention on Cormac's methods in return. Closed channel: Cormac has no channel to Renata's or Nwosu's names, or to Alexander's onward itinerary."
texture: "Wary professional respect, earned rather than assumed."
history: "Formed 2026-08-30 (`EVT-000817`) at Cormac's lockup near the Houston ship channel."
```

### REL-000105 — Alexander and Sorcha Bellweather

```yaml
id: REL-000105
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000825
  game_date: "2026-09-02T14:00:00-05:00"
  real_date: "2026-09-02"
endpoints:
  - ENT-000125
  - ENT-000254
type: working-source
qualities: "Engaged and trusted. She designed the Denver containment facility and walked him onto the Jiu Valley platform. When he went public she refused his offer to say he tricked her and filed her own account on the record (`EVT-001046`, `EVT-001051`). Asked about the guild HQ, she advised a fully separate building so Denver stays invisible (`EVT-001057`)."
qualities_as_of: EVT-001057
state: "**`OBJ-49` reshaped, `OBJ-51` closed, `OBJ-50` unchanged (2026-09-09, `EVT-000900`).** Design complete; the Denver facility bought outright rather than leased, retrofit underway (6-8 weeks). Dinner in Bucharest ahead of tomorrow's Jiu Valley visit — she raised her own Jiu Valley history unprompted a second time, the professional register dropping further and staying dropped longer than either prior meeting. **`OBJ-21` opened to her, 2026-09-10 18:00 (`EVT-000910`).** Told directly, off her normal channel, about the fenced warehouse's bound entity and its accelerating decay; came in person, quietly, same posture as Jiu Valley. Traced Cormant Holdings to a funding trail her own office had wrongly closed eighteen months ago. Advised against killing the bound entity now; Alexander agreed. She's pulling Cormant Holdings quietly on her own authority.

  **2026-09-21 (`EVT-001046`, `EVT-001051`).** Called first, as promised. He offered to say he tricked her; she refused the cover and filed her own account with her director instead, an hour before air. 'Some of them are mine to carry.' 'Thank you for calling me first.' Texted at 11:04: 'Filed. In person, on the record, all of it.'"
texture: "Professional respect with real personal weight underneath, acknowledged rather than hidden."
history: "Formed 2026-09-02 (`EVT-000825`), BGM National HQ, Washington DC, following Silas Grech's referral."
```

### ENT-000258 — Margit Lindqvist

European Gate Council Prague liaison. Named collision-checked clean (`tools/check_name_collision.ps1`) and minted 2026-09-03 evening when Director Miloš Beran (`ENT-000113`) invited her to the 16:00 2026-09-04 Karlov Guild meeting; first met in person at that meeting.

```yaml
id: ENT-000258
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000832
  game_date: "2026-09-03T21:30:00+02:00"
  real_date: "2026-08-27"
moved_by_events: >
  `EVT-000832` `EVT-000842`
type: Character
subtype: European Gate Council official
scope: national
lifecycle: active
aliases:
  - name: "Margit Lindqvist"
    quality: current
relationships: []
canonical_state:
  affiliation: "European Gate Council — liaison for Prague and the Czech Republic"
  home: "Prague, Czech Republic"
  rank: "**Not authored — awakened status is not established**, and nothing about her role requires it."
  location: "Karlov Guild headquarters, Old Town, Prague — met at the 16:00 2026-09-04 meeting; based out of the European Gate Council's Prague liaison office day to day."
  condition: "Healthy; no adverse condition established."
  role: "European Gate Council liaison for Prague and the Czech Republic — the standing regional-coordination office between national Gate administrations across the continent. Invited by Director Beran specifically because Alexander's cross-border pitch (Gate-alert sharing, a posting-matching tool) is squarely her office's remit rather than the CGA's own."
  capabilities: "Institutional and diplomatic — drafts and shepherds cross-border coordination agreements between national Gate authorities; no combat or field capability established."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Forties, careful and procedural European civil-service bearing, neat professional attire. Genuinely engaged rather than merely polite — the look of someone who actually reads the file before the meeting. **Extended 2026-09-23 (real date), for portrait reference:** Swedish, tall and composed. Silver-blonde hair in a neat chin-length bob; clear pale-blue eyes behind thin-framed glasses; a small pearl at each ear. A charcoal wool suit with a European Gate Council lapel pin. Reference setting: a meeting room at Karlov Guild headquarters in Prague's Old Town, dark panelling and old photographs blurred behind her."
  portrait: "assets/portraits/Margit_Lindqvist_ENT-000258.png"
  personality: "Authored 2026-09-04, ahead of her first line. Careful, procedural, and genuinely interested rather than merely polite — she has watched national Gate authorities fail to share information for years and recognizes a workable mechanism when she sees one."
  want: "A real, working cross-border information-sharing mechanism she can actually stand behind to her own council — not another memorandum that dies in a drawer."
  fear: "Endorsing something that looks good in a meeting and collapses the first time two national bureaucracies have to actually share real-time data under it."
  secret: "None surfaced."
  voice: "Measured, asks the practical question under the impressive one — who maintains it, who pays for it, what happens the first time it's wrong."
  knowledge: "Knows Alexander only from the meeting: his carded S-Rank status, the cross-border alert-sharing pitch (reframed from an initial hunter-tracking framing to broadcasting crisis locations), and the national E/D-Rank posting-matching tool. No channel to the System, to anything Bearer-only, or to his private life."
  agenda: "**Committed at the 16:00 meeting (`EVT-000842`): drafts a working proposal within two weeks.** Genuinely moved by the reframed pitch — crisis-location broadcast rather than hunter-tracking addressed the exact objection that would have sunk it with her council. Nothing further owed yet; the two-week clock is hers to keep."
```

### Tereza Blažková — campaign notes on a world-layer figure (`ENT-000114`)

**No Object Block here — `ENT-000114` is owned and defined in full at `worlds/gatefall/220_NOTABLE_FIGURES.md`; this campaign never redefines it, only cites it (the same "one ledger owns it" discipline the protagonist's own figures follow).** The Czech Republic's sole S-Rank, Karlov Guild's contracted hunter, signature **Vltava**.

**First direct contact 2026-09-04 (`EVT-000841`)** — a phone call ahead of the 16:00 Karlov Guild meeting; present informally at the meeting itself and afterward at a Prague bar (`EVT-000842`-`EVT-000843`). **What she learned about Alexander this span:** that he can teleport (rift-step, described only in general terms) and can carry a passenger when he does — no channel to the System by name or to any Bearer-only quantity. **Her agenda this span:** a private, independent S-Rank network, pitched deliberately apart from the government-facing thread (`OBJ-54`). Genuinely moved; commits to reaching **Lukas Reinhardt** (Brandhof, Germany) — strong response, in, engaged — and **Camille Aubrac** (Lumière Guild, France) — strong but slower, interested, wants an in-person meeting first. `REL-000106` tracks the relationship this runs through.

**2026-09-07 (`EVT-000868`):** texted, plain and impatient with Reinhardt and Aubrac's own back-and-forth — proposing all four of them meet in one place, her choice of bar, Prague. Reinhardt she expects to say yes on the first ask; Aubrac's stated want (meet Alexander in person) is solved the same move. Committed to an actual date within the week; none fixed yet.

### REL-000106 — Alexander and Tereza Blažková

```yaml
id: REL-000106
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000841
  game_date: "2026-09-04T14:00:00+02:00"
  real_date: "2026-08-27"
endpoints:
  - ENT-000125
  - ENT-000114
type: board-member
qualities: "A friend and a Pendragon Guild board member: she took the third independent seat on 2026-09-17 (`EVT-001016`) and was the second person told he ended Jiu Valley. She voted to air the disclosure and secured Czech national airtime for it (`EVT-001040`, `EVT-001045`). The warmest of the European ties."
qualities_as_of: EVT-001051
state: "**`OBJ-54` open and active.** She is reaching out to Lukas Reinhardt (in, engaged) and Camille Aubrac (interested, wants in-person contact first) on Alexander's behalf. **The four-way Prague meeting is confirmed for Thursday 2026-09-17**, venue now fixed — a café two blocks off Wenceslas Square, not affiliated with any guild on either side of the table (address surfaced `EVT-000957`).

  **2026-09-16 late/2026-09-17 pre-dawn Prague time (`EVT-001016`).** Called ahead of the Thursday meeting; Alexander Rift-stepped to the CGA break room (anchor 24) at her direction. Offered and **she accepted, on the spot, the Pendragon Guild's third independent board seat** — full vote, no membership required. **Alexander disclosed that he personally ended the Jiu Valley Exclusion** — a second real holder of that specific fact alongside Kane. Her reaction: genuine shock giving way to real warmth, no jealousy, explicit gladness. Asked her counsel on whether to go public with it; she advised controlling the frame and timing rather than either staying silent indefinitely or disclosing impulsively, drawing on her own experience as the most-managed public S-Rank in her country — **left genuinely undecided.** Walked together to tomorrow's meeting venue so Alexander could set an anchor ahead of the actual meeting (**anchor 39 set: the café**); stayed for a beer and unhurried personal conversation afterward, the first time between them with no schedule pressing on it.

  **2026-09-20 (`EVT-001033`, `EVT-001040`).** Asked by text for a same-day, quiet professional film crew at double rate — 'double AND quiet. ok I'm not going to ask' — and sent Sanne Verhoeven's contact with a warning to use Tereza's name. That night, rift-stepped from Prague (~05:30 her time) to the Pendragon Guild's first board meeting; **voted yes to air the Jiu Valley disclosure** — she watched a country decide what she could say about herself for three years, and he gets to decide this once. **Committed to Czech Television national airtime, guaranteed, calling in the morning**; wider reach needs calls. Returned to Prague already on her phone.

  **2026-09-21 (`EVT-001045`, `EVT-001051`).** Called at 06:07 as committed: Czech Television confirmed, no-edits in writing, the news director twice asking for early. He chose today, even if only in Europe. 'Your moment, not theirs.' He sent the cut to her alone; she walked it into the building herself and told Lukas and Camille. Texts: 'inside.'; the control room, 'everyone here is pretending to be calm.'"
texture: "Two S-Ranks recognizing the shape of each other's isolation faster than either expected — professional warmth with a personal undercurrent neither has named."
history: "Formed 2026-09-04 (`EVT-000841`), a phone call ahead of the Karlov Guild meeting; deepened the same day at the meeting itself and that evening at a Prague bar (`EVT-000842`-`EVT-000843`). Four-way meeting venue confirmed 2026-09-14 (`EVT-000957`). Third board seat accepted, Jiu Valley disclosed, anchor 39 set 2026-09-16/17 (`EVT-001016`)."
```

### Elias Kane — campaign notes on a world-layer figure (`ENT-000242`)

**No Object Block here — `ENT-000242` is owned and defined in full at `worlds/gatefall/220_NOTABLE_FIGURES.md`; this campaign never redefines it, only cites it (the same "one ledger owns it" discipline the protagonist's own figures follow, and the same pattern this campaign already uses for `ENT-000114`).** BGM federal asset, "the other Chicago S-Rank," signature **Standfast**.

**First direct contact 2026-09-06 (`EVT-000854`)** — texted via the roster-forward Renata Okonkwo-Vance opened (`OBJ-42` sub-thread, closed at checkpoint 0134): *"Chicago's fine, I'm already here. You pick the place. This week if you can."* Alexander named The Sidecut, 2211 W Cermak Road (`ENT-000211`), Dale Pruitt's regular spot, chosen specifically for discretion; Kane agreed, 19:00.

**Met in person 19:00-~23:30 (`EVT-000857`).** Flux Sight + Keen Sense read him early, automatic, no roll — [S-Rank], Health 4,200/4,200, Mana 2,100/2,100, full and uninjured, no deception, nothing hidden. Alexander disclosed the GB-14 incident personally — ten hunters dead, he arrived to carry bodies, saved two — and asked why BGM never dispatched Kane. Kane's honest account: he was never actually called; Regional's activation chain read the incident as already covered by Alexander's own standing arrangement before Kane was ever looped in, and by the time anyone upstairs recognized the scale, Alexander was already the one responding. Alexander pitched the independent S-Rank network (`OBJ-54`, deliberately separate from the government-cooperation thread) directly at him, tying it explicitly to the GB-14 trauma as motivation. **Kane agreed to join for real** — the network's core rule (whoever's closer responds, no chain of command, no liaison), and volunteered to personally vet and reach two further domestic S-Rank contacts he trusts, plus follow up on the West Coast contact Renata's roster-forward surfaced.

**Alexander disclosed his teleportation capability including passenger transport** — a deliberate Section 19 exposure event, the third person now holding this specific knowledge (Owen Callahan, demonstrated directly; Tereza Blažková, told 2026-09-04, `EVT-000841`; Renata Okonkwo-Vance knows only that he can teleport, told 2026-08-27, with no channel to the passenger-transport detail specifically, so this is the third confirmed holder, not a fourth). Kane reacted with genuine shock, recognized the scale of the disclosure, advised discretion about who else learns it, did not fish for the mechanism. **A comedic demonstration followed**: Alexander teleported Kane, as a willing passenger, to the Prague hotel-room balcony anchor (`EVT-000843`, flat 5 Mana, passenger cost normalized at System Rank S) for a brief proof of concept, then back to The Sidecut via an ordinary intercontinental travelling step (no anchor at the bar, "another continent" band, 625 Mana) — 630 Mana total. Kane was floored, then genuinely delighted once the shock passed.

**The rest of the evening: extended drinking**, with the running joke that Alexander's Vitality (in the thousands) makes him functionally unable to get drunk no matter how much he drinks, while Kane got properly, happily drunk. Warm, unguarded bonding between two people who've each spent years being someone else's asset or contingency plan. Kane went home by cab — Alexander declined to teleport him again given he could no longer meaningfully consent — with a parting line: *"Same time next month, Pendragon. I mean it."* No further plot business; a real personal relationship formed, not merely a transactional one. `REL-000107` tracks it.

**Kane's carried-over call completed, 2026-09-10 08:00 (`EVT-000904`).** The Prague S-Rank network meeting moved inside a week rather than deferred further; sparring, previously left undated ("soon"), taken up immediately rather than scheduled ahead. No change to Alexander's own record — no channel crossed, nothing new disclosed to him — texture reinforced only.

**Blue Island, 2026-09-10 (`EVT-000906`).** Kane accompanied concealed on the OFFERED S-Rank Gate, a deliberate handicap Alexander accepted (dagger-and-Far-Side-skills-only) that cost him real Health for the first time all session. Kane's own `Standfast` tested three ways at Alexander's request — broken outright by a full-force Overpower (harder than raw stats alone predicted), pushed to redirect damage back through the field (fails on a structural rather than magnitude basis, Kane's own honest diagnosis), held clean against an ordinary manual strike. The restrained boss released and finished by Kane's own hand — his first personal kill in years, the core kept by agreement rather than filed. **Genuine flirtation, reciprocated on both sides** — a step beyond the prior evening's friendship. Alexander offered to help Kane develop past `Standfast`'s defensive-only design; a further meeting held for "next week," no fixed date.

**The Winnetka house, 2026-09-14 morning (`EVT-000952`).** A second night stayed, physically intimate again (mutual, no change to either side's read), morning-after banter genuinely warm rather than awkward. Standfast training resumed at Alexander's initiative: same restrained-strike setup as Blue Island, called spot, Kane concentrating on the redirect. First repeat attempt failed the same structural way (🎲 40, effective 35). Alexander's legendary Flux Sight read (🎲 97, The Unmeasured active) confirmed the failure was categorical, not a focus problem — Standfast's authored ceiling carried no offensive branch at all, cited to Profile Section 13.6's general signature-fixity rule. **Alexander proposed and executed an unprecedented working**: Overpower aimed directly at Kane's own live Standfast field, structural-break mode repurposed toward reshaping rather than destroying it — priced at 400 Mana, full concentration, and a real risk of simply breaking the field for the scene if it failed. Kane consented to the risk. 🎲 **94**, net −1 (unprecedented application), effective **74** — clear success. **Standfast now carries a genuine redirect branch, natively Kane's own** — confirmed on an unassisted second attempt, no channel back to Alexander required. First known exception to Section 13.6's general rule that a signature grows only in magnitude with Rank, never in kind; recorded provisional pending a real profile ruling. Full mechanical record: `worlds/gatefall/220_NOTABLE_FIGURES.md`.

**Lunch offered and rescheduled, 2026-09-14 ~10:15 (`EVT-000957`).** At `OBJ-64`'s cleared site, Kane suggested lunch; Alexander named a proper sit-down restaurant instead, explicitly not that day, citing his own business. Kane accepted the raincheck without pressing — consistent with never once asking Alexander to account for his time — and parted on foot.

**2026-09-15 (`EVT-000994`).** Texted the two domestic S-Rank leads he'd vetted back on 2026-09-06 — Marisol Cade (Denver) and Tobias Renner (Seattle) — nine days after volunteering to, the delay never previously surfaced. Alexander authorized the handoff; Kane forwarded contact both ways same-day. Cade responded immediately, glad to have a real number; Renner hasn't answered yet, consistent with his own slower read. Kane also confirmed his own BGM National terms landed that morning, saved for an in-person conversation over beer that evening rather than texted. Invited to Alexander's own house this time.

### REL-000107 — Alexander and Elias Kane

```yaml
id: REL-000107
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000906
  game_date: "2026-09-10T12:00:00-05:00"
  real_date: "2026-08-31"
endpoints:
  - ENT-000125
  - ENT-000242
type: romantic
qualities: "Romantic in feeling, not exclusive or binding on either side (restated `EVT-001063`), and intimate since 2026-09-13. Since beer night on 2026-09-29 Dario is part of it too, which Kane is glad of (`REL-000125`). He is also the Pendragon Guild's second in command and a board member, having resigned from BGM on 2026-09-24 (`EVT-001084`). He never asks Alexander to account for his time. On 2026-10-01 Alexander told them both *you're mine now*, and Kane answered *yours*, plainly. That changed no terms: it stays not exclusive, with Dario and with Alexander (owner ruling, 2026-09-26). Asked whether he wanted to attend the Director's meeting, he said yes, for himself (`EVT-001213`)."
qualities_as_of: EVT-001224
state: |-
  **Second-in-command of the Pendragon Guild, and romantic in feeling, not exclusive (as of 2026-09-30, `EVT-001160`).** He resigned from BGM on 2026-09-24 rather than accept reassignment, after his own chain learned he had worked against them for Alexander: the platform review went nowhere because of the multi-country simultaneous release he advised. He accepted second-in-command the same day, as a clean choice made after the call rather than under its pressure (`EVT-001079`, `EVT-001084`). He also holds an independent board seat, accepted 2026-09-15 with a full vote and the power to overrule Alexander (`EVT-001002`). He voted to air the Jiu Valley broadcast (`EVT-001040`) and quietly handled the platform thing himself: *"That was ours... It's handled"* (`EVT-001047`). He runs guild operations in person. He commanded the guild element on the Calumet A-Rank (`EVT-001095`, `OBJ-70`), supervised Prague's first guild-dispatched response, and on 2026-09-30 was pushing the stuck Chicago regulator filing himself through Region V and his National contact, promising something concrete by evening.

  **The terms between them**, restated 2026-09-21 (`EVT-001063`) and player-confirmed: romantic in feeling, not exclusive or binding on either side, a correction of an earlier looser "just friends". Intimate since 2026-09-13 at the Winnetka house. Alexander told him he ended Jiu Valley (no method, no numbers), which Kane took as recalibration, not fear. At beer night on 2026-09-29 (`EVT-001155`-`EVT-001160`) he asked honestly whether Alexander's four days away had been about needing space, accepted "logistics, not distance" at face value, kissed Alexander and, by his own unprompted admission, Dario too, and stayed the night with both. His relationship with Dario is `REL-000125`. He never asks Alexander to account for his time. He names his own fear plainly: being pulled toward Alexander because cornered rather than choosing it clean.

  **Standfast.** Three branches, forced-redirect (`EVT-000952`), voluntary-discharge (`EVT-001014`) and narrowed-margin (`EVT-001070`), were ratified as permanent parts of his signature (`EVT-001079`); the profile text for the general rule is still owed. Alexander paid for 100 Elixirs of Intelligence that took his Mana past the S-Rank ceiling, 2,300/2,300 (`EVT-001013`-`EVT-001017`). He keeps practising the voluntary-discharge branch toward a one-shot A-Rank-lethal threshold and wants a cold target and his whole attention for it. His apartment is a valid rift-step anchor. The dated history is sealed in `sealed/130_NPCS_AND_FACTIONS.vol01.md`.
texture: "**2026-10-01 (`EVT-001210`, `EVT-001211`):** the unscheduled hour he wanted, given; *Alexander*, once, as if it cost him. Laughed out loud for the first time on record when tickled, then counter-attacked. Moved the Director's meeting for him and told Washington *I'd ask you, not that you'd come.* PRIOR: Two federal-adjacent and institutional-adjacent men, each held in reserve by an institution for years, whose ordinary friendship has become something warmer — genuine flirtation, reciprocated, now layered over a real working combat partnership and real personal disclosure rather than only a social or professional one. **As of 2026-09-29/30, no longer just the two of them** — Dario's now part of it too, and Kane's own read on that (per Alexander directly) is unbothered, even glad; see `REL-000125` for Kane and Dario's own relationship."
history: "Formed 2026-09-06 (`EVT-000854`, texted contact via Renata's roster-forward; `EVT-000857`, met in person at The Sidecut, Cermak Road). Carried-over call completed 2026-09-10 08:00 (`EVT-000904`). Sparring and Blue Island 2026-09-10 (`EVT-000906`) — Standfast tested, his first personal kill in years, flirtation reciprocated. Winnetka house visit 2026-09-12 — teleported over for a beer, house tour, real personal disclosure both directions. *You're mine now* -- *Yours*, 2026-10-01 (`EVT-001213`); asked directly whether he wanted to go to National, and said yes for himself (`EVT-001213`). Beside him at the Director's table; owned the European filing mistake and was told not to apologise but to finish it, and to prove himself with Israel and Turkey, 2026-10-01 (`EVT-001223`, `EVT-001224`)."
moved_by_events: "`EVT-001003` `EVT-001008` `EVT-001011` `EVT-001021` `EVT-001023` `EVT-001033` `EVT-001041` `EVT-001045` `EVT-001048` `EVT-001050` `EVT-001051` `EVT-001092` `EVT-001093` `EVT-001148` `EVT-001153` `EVT-001210` `EVT-001211` `EVT-001213` `EVT-001223` `EVT-001224`"
```

### World-layer figures index — pointer only, not a canon interaction record

**Added 2026-09-13, for cross-reference only.** `ENT-000114` (Tereza Blažková) and `ENT-000242` (Elias Kane) are the only world-layer figures this campaign has actually put Alexander in a scene with — their full interaction history sits above, in `REL-000106` and `REL-000107`. The rest of the S-Rank world roster named at `EVT-000788` ("eleven known US S-Ranks listed") lives entirely in `worlds/gatefall/220_NOTABLE_FIGURES.md` and **has not been met in play** — this index exists so a reader can find each name's owning entity without this campaign fabricating a scene that never happened. No want/fear/secret/agenda is authored here for any of them; that stays owed to the turn a scene actually reaches them.

- Reid Calloway, `ENT-000123` — Keystone Guild, New York, world-ranked #7. Unmet.
- Lukas Reinhardt, `ENT-000124` — Brandhof, Frankfurt, world-ranked #8. Unmet.
- Isabel Chandrasekaran, `ENT-000234` — Ashwood Collective, Denver. Unmet.
- Marcus Webb, `ENT-000235` — Redline Guild, Houston. Unmet.
- Jonas Whitfield, `ENT-000236` — Cascade Guild, Seattle. Unmet.
- Camille Duforest, `ENT-000237` — Delta Watch, New Orleans. Unmet.
- Griffin Ashcombe, `ENT-000238` — Sterling Guild, Boston. Unmet.
- Nadia Farrow, `ENT-000239` — unaffiliated, Los Angeles. Unmet.
- Terrence Kowalczyk, `ENT-000240` — Anchor Guild, Detroit. Unmet.
- Odalys Ferreira, `ENT-000241` — Vanguard Collective, Miami. Unmet.

Also present in the same world file, tied to the Prague/Blažková courtship thread that runs alongside `REL-000106` but which Alexander himself has no direct channel into: Naomi Okafor (`ENT-000107`), Preston Vaughn (`ENT-000108`), Dominic Crane (`ENT-000109`), Denise Brannigan (`ENT-000110`), Eleanor Foss (`ENT-000111`), "Deacon" (`ENT-000112`), Miloš Beran (`ENT-000113`), Vlastimil Karlov (`ENT-000115`), Ivana Karlová (`ENT-000116`), Ondřej Dušek (`ENT-000117`), "Sova" (`ENT-000118`). None of these are cited elsewhere in this campaign's own ledger; they're listed here purely so this file and the world bible can be cross-navigated.

### ENT-000259 — Ilith of no second name

**First entity block minted for her; her authored character sits in `worlds/gatefall/270_THE_FAR_SIDE.md` Section 4.2 (a Standing, position `Out`), which never mints a campaign identifier of its own by design ("campaign canon and belongs to a play session under save discipline"). This is that minting.** Encountered on first contact, notice threshold crossed on the far door's reopening (`EVT-000870`).

```yaml
id: ENT-000259
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000870
  game_date: "2026-09-07T09:32:00-05:00"
  real_date: "2026-08-28"
type: Character
subtype: Standing (far side) — position Out
scope: campaign
lifecycle: active
aliases:
  - name: "Ilith"
    quality: current
relationships:
  - REL-000108
canonical_state:
  affiliation: "The Standing (far side) — position: Out"
  home: "The far side — the Landing"
  rank: "**No Rank — a System-bearer, resolved as one** (`worlds/gatefall/206_WORLD_RULE_PROFILE.md` Section 13.1.1, `270_THE_FAR_SIDE.md` Section 4.2). Read clean by Flux Sight this session: maximum Health 4,960, maximum Mana 3,040, both full. Stats per her authored sheet: Strength 980, Agility 2,610, Vitality 1,240, Perception 2,380, Intelligence 1,520. Master mastery on movement, concealment, and reading people; unremarkable at everything else. No equipment."
  location: "The Landing (`270_THE_FAR_SIDE.md` Section 3.1) — she watches this exact ground, on the authored theory that a door will one day open where doors used to."
  condition: "Healthy, unhurt, four thousand years alive in a place with no exit. Frailest thing on record in this file by raw Health, and has stayed alive here longer than agriculture by never once being where a blow was aimed."
  portrait: "assets/portraits/Ilith_ENT-000259.png"
  appearance: "**Authored on first physical description, 2026-09-08 (unnamed but entailed — Resident Core, 'Unnamed Is Not Absent'); revised 2026-09-13 for visual clarity — the 'four thousand years' framing was reading as literal old age rather than as presence.** Reads as roughly late twenties to early thirties; her true age shows only in an unplaceable, too-comfortable ease, never in her skin — no wrinkles, no grey, no frailty. Small and quick-built, light frame, restless hands, weight always on the balls of her feet as though the next room is already the one she's actually in. Moves before she seems to have decided to. Dark, sharp eyes that read a room in the time it takes most people to notice they've entered one. Dressed in nothing that would slow her down — nothing loose, nothing that catches. Her smile arrives easily and a half-second too fast — genuinely warm, and never once unconsidered."
  capabilities: "Master-level movement (unseen through a space, unremembered by anyone in it), Master-level closing the gap a target thinks is safe, Master-level reading a person's next half-second off tell rather than intent. Untested, and by her own admission unclaimed, against machine or instrument detection — every mortal thing that has ever hunted her hunted with eyes, ears, or a nose. She will not fight; has nothing to gain from it and knows the arithmetic."
  personality: "Warm, fast, extremely good company — and will lie without hesitating about anything except the one thing (Section 4.2's own voice line). Genuinely unhurried even under direct, pointed questioning."
  want: "**Through. Anywhere.** She does not care what is on the other side and told Alexander so plainly, unprompted — the one thing on record she is guaranteed not lying about."
  fear: "That a door will open and close before she reaches it. Authored, unchanged."
  secret: "**Her world did not fail the exam — it refused it, and she was the one who advised the refusal.** Known to nobody; not disclosed this session."
  voice: "States a truth so plainly it reads as confession, then reveals nothing further; a rehearsed gesture (spread palms, harmless) repeats identically across very different moments. Meets a direct, skeptical question by visibly weighing whether to answer honestly before doing it — the one tell Alexander's reads caught cleanly this session."
  beliefs: []
  agenda: "**2026-09-27 (`EVT-001116`).** Watched the far door stand open two hours and forty-one minutes before Alexander stepped onto the Landing; asked plainly for it to stay open a while longer, was not answered, did not press. Taught six techniques (Slip, Four Thousand Years of Watching, Threadwalk, Nobody's Hand, Unheard, Company); two retries failed. Raised one palm as the door closed and said she would be there when it opened. **2026-09-21 (`EVT-001062`).** A second door-opening the same day, unprecedented in her own four thousand years watching. Received three arrivals from Alexander directly — one conscious (Anton Drury, newly minted, choosing far-side isolation over death) and two still unconscious, delivered with no say in their own fate. Read the situation fast and correctly (Alexander moved someone who wasn't the Bearer, both directions, proving the door doesn't check who's crossing beside him) and said so plainly rather than concealing her own interest in what that means for her. Gave real, honest predictions of how the other four Standing would likely react to a new arrival — kindness from Aumry, wariness from Sevrin, genuine ambivalence from Orenne, selective curiosity from Tolo. No commitment extracted from Alexander this visit; she was explicit about not pushing for one.\n\n  **2026-09-21 (`EVT-001058`).** Present on the Landing continuously while the far door from Denver stood open roughly two hours — the longest window she's had in the four thousand years she's watched this exact ground. Named it plainly and asked for it to stay open a while longer, on the same honest terms as her standing offer. Declined ('not today'). Took the refusal without pushing, genuinely unbothered, and remained to teach — practiced Read the Want to a mastery crossing (Novice->Apprentice); opened no new candidates. Not perceived to notice Alexander setting an anchor on the Landing directly in front of her (see Closed Channels) — her own reaction line to it was struck and re-narrated.\n\n  **Prior, first contact.** Made first contact on the reopened far door; disclosed her want honestly; oversold total, instrument-proof invisibility and caught herself before Alexander's suspicion forced the retraction; offered to teach him Master-level movement/concealment/reading-people across a real multi-scene relationship (the Section 7.1 Taught route), in exchange for a door left open a few seconds longer than strictly needed, one day, on his own timeline. **No commitment made by either party** as of first contact."
```

### REL-000108 — Alexander and Ilith

```yaml
id: REL-000108
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000870
  game_date: "2026-09-07T09:32:00-05:00"
  real_date: "2026-08-28"
endpoints:
  - ENT-000125
  - ENT-000259
type: adversarial-negotiation
qualities: "Adversarial on the door, generous in everything else. Her want is out, and the door trade is still unstruck on Alexander's timeline; she teaches freely anyway, six techniques on 2026-09-27 (`EVT-001116`). She received Anton Drury from him (`EVT-001062`) and asked for the door to stay open longer, unanswered and not pressed."
qualities_as_of: EVT-001116
state: "**Live, unresolved on the door trade** — still unstruck, on Alexander's own timeline, same as every prior visit. Continues teaching freely regardless, on her own stated indulgence. `EVT-000988` (2026-09-14): two candidates opened, Fourfold Step and Sightline, both 1/3. `EVT-000996` (2026-09-15): both advanced to 2/3; two new opened, Not There and Away, both 1/3."
texture: "She reads as genuinely likeable and genuinely dangerous at once, by design — extremely good company, freely admits she'll lie about everything except her one want, and has had four thousand years to get the performance exactly right. Alexander's own reads caught her overselling once (the invisibility claim) and got a real retraction rather than a deeper lie."
history: "Formed this session (`EVT-000870`-`EVT-000871`): first contact on the reopened far door, an extended exchange establishing her want, testing her honesty across several direct questions (one clean strong-success read, one clean failure, one critical failure that handed Alexander false confidence in an unverified answer, one failure that caught her overselling), and an unresolved trade offer."
```

### ENT-000260 — Aumry, who taught nine

**First entity block minted for him; authored in `worlds/gatefall/270_THE_FAR_SIDE.md` Section 4.2 (a Standing, position `Reach the next one`), which mints no campaign identifier of its own by design. This is that minting.** Met in person this session, guided Alexander and the group toward Orenne and Sevrin, gave a genuine offer of instruction.

```yaml
id: ENT-000260
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000874
  game_date: "2026-09-07T10:25:00-05:00"
  real_date: "2026-08-29"
type: Character
subtype: Standing (far side) — position Reach the next one
scope: campaign
lifecycle: active
aliases:
  - name: "Aumry"
    quality: current
relationships:
  - REL-000109
canonical_state:
  affiliation: "The Standing (far side) — position: Reach the next one"
  home: "The far side — the Long Shelf"
  rank: "No Rank — a System-bearer. Stats per his authored sheet: Strength 760, Agility 1450, Vitality 2400, Perception 3300, Intelligence 3800. Health 9,600, Mana 7,600, both full. Master on everything that improves someone else; no technique that hurts anyone."
  location: "The Long Shelf (`270_THE_FAR_SIDE.md` §3.5)."
  condition: "Healthy, unhurt. Worst fighter on the far side by Strength, safe to be alone with."
  portrait: "assets/portraits/Aumry_ENT-000260.png"
  appearance: "**Authored on first physical description, 2026-09-08 (unnamed but entailed — Resident Core, 'Unnamed Is Not Absent'); revised 2026-09-13 for visual clarity and to distinguish him more sharply from Orenne, who was reading as near-identical.** Reads as roughly mid-forties to early fifties — weathered and lived-in, but not elderly: no stooping, no frailty. Broad, thick, soft-edged build — big through the chest and shoulders but rounded rather than carved, the build of a man who's spent an age on his feet correcting other people's stances rather than throwing anything himself. Big, calloused, gentle hands, always half-reaching to adjust someone's grip before catching himself. Deep-set, tired eyes that soften considerably the moment he's actually teaching. Plain, worn, practical dress, sleeves pushed up, nothing decorative. Carries himself a little apologetically, slightly stooped, for someone objectively the safest person on the whole far side to stand next to."
  capabilities: "Master-level instruction and support — his System came back from the class trial as something that makes other people better. Holds Transmission, the technique that IS the Section 7.1 route-5 mechanism."
  personality: "Warm, practical, relentlessly specific — talks about grip and footing rather than the process. Deflects to the work; that deflection is fear, not modesty."
  want: "To change one outcome. Nine candidates reached and taught, all nine worlds harvested anyway."
  fear: "That teaching a candidate is what marks him for the Assay's attention. Nine dead despite his help; he has no way to test whether teaching caused it."
  secret: "It was ten, not nine — the tenth passed. What that candidate became, he will not describe, and has never told Orenne or Sevrin."
  voice: "Warm, practical, specific about mechanics; deflects from the deeper question to the work at hand every time."
  beliefs: []
  agenda: "**2026-09-21 (`EVT-001058`).** A visit, anchor 35 used. Practiced Read the Learner to a mastery crossing (Novice->Apprentice). Warned Alexander plainly, without being asked twice, to spend down no further once the drain read as visibly telling on him — named his own history with nine dead candidates as the reason he wasn't going to be gentle about it. Anchor not perceived being set nearby on the return leg (see Closed Channels).\n\n  **2026-09-15 (`EVT-000996`) — a second visit.** Three prior candidates advanced to 2/3; Call the Turn's earlier failure redeemed on a fresh attempt (1/3). Two new opened: Handover, Where the Weight Goes, both 1/3.\n\n  **2026-09-14 (`EVT-000988`) — a standing anchor accepted, gladly.** Alexander set his own anchor at Aumry's ground (thirty-fifth), uncontested and unprompted; Aumry was visibly pleased by it in a way he didn't try to hide. Taught three technique candidates the same visit -- Hold Together, Quartermaster, Set the Line, all 1/3 -- and a fourth, Call the Turn, was attempted and failed cleanly (no credit, no ill will). Ended the visit naming his own honest limit rather than pushing for more: nine threads in one sitting is already more than most people hold onto without them blurring.\n\n  Guided Alexander and the group to Orenne, offered to seek Tolo, pointed toward Sevrin's ground without walking there himself (his stated conflict with Ilith). Instruction offer stands, unconditional past the obvious ones. Genuinely asked whether someone is waiting for Alexander at home — unanswered as of this session."
```

### REL-000109 — Alexander and Aumry

```yaml
id: REL-000109
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000874
  game_date: "2026-09-07T10:25:00-05:00"
  real_date: "2026-08-29"
endpoints:
  - ENT-000125
  - ENT-000260
type: mentorship
qualities: "A mentor in fact, not only on offer, and the one far-side figure who wants him simply to live. He teaches (Read the Learner crossed to Apprentice, `EVT-001058`) and warned him bluntly to spend down no further, citing his own nine dead candidates. His question whether anyone waits for Alexander at home is still unanswered."
qualities_as_of: EVT-001058
state: "Instruction offer open, unconditional. Guided the group this session; asked a real personal question (whether someone waits for Alexander at home) still unanswered."
texture: "Coach-and-student register from the first exchange — footing, correction, warmth that costs him something to give given what teaching has meant for him before."
history: "Formed this session (`EVT-000874`), met at the Long Shelf, guided the group onward."
```

### ENT-000261 — Orenne, who keeps the count

**Player ruling, 2026-09-08: Orenne is he/him, not she/her.** The original entry (below) used she/her throughout; the pronoun is corrected here going forward. Immutable prior checkpoints and promoted chronicle entries are not rewritten, per standing checkpoint discipline — this ruling governs narration from this point on.

**First entity block minted for him; authored in `270_THE_FAR_SIDE.md` Section 4.2, position `Let it finish`.** Met in person this session; heard Alexander's refusal to be persuaded before deciding, and respected it.

```yaml
id: ENT-000261
canonical_record: REC-000077
schema_version: "0.1.8"
status: deceased
provenance:
  source: EVT-001175
  game_date: "2026-09-30T12:56:00-05:00"
  real_date: "2026-09-24"
type: Character
subtype: Standing (far side) — position Let it finish
scope: campaign
lifecycle: deceased
aliases:
  - name: "Orenne"
    quality: current
relationships:
  - REL-000110
canonical_state:
  affiliation: "The Standing (far side) — position: Let it finish"
  home: "The far side — the Long Shelf"
  rank: "No Rank — a System-bearer. Stats: Strength 3400, Agility 2350, Vitality 1150, Perception 2100, Intelligence 3050. Health 4,600 (smallest pool on the far side), Mana 6,100, both full. Master on one offensive line, refined an age, used perhaps forty times."
  location: "**Deceased, 2026-09-30 12:21 Chicago (`EVT-001173`)** — killed by Alexander in the cage room at the Denver facility, on Earth, after crossing the far door with him (`EVT-001171`). Burned where he fell; the remains, ash and bone fragments, sealed in a container in Alexander's dimensional inventory (`EVT-001175`)."
  condition: "**Dead.** One Rupture, unannounced, at no readiness (natural 93, effective 100, about 12,773 against Health 4,600; `EVT-001173`). His techniques were taken by Succession (`EVT-001174`). **The Long Shelf has no channel to a death on Earth** (`EVT-001174`): nobody there knows."
  portrait: "assets/portraits/Orenne_ENT-000261.jpg"
  appearance: "**Authored on first physical description, 2026-09-08 (unnamed but entailed — Resident Core, 'Unnamed Is Not Absent'); revised 2026-09-13 at the player's direction — reworked to read younger and more distinctly from Aumry (previously near-identical), and changed from pale to a heavily muscled Black man; this is a deliberate authorial choice, not a correction of an error.** Reads as roughly late thirties to mid-forties — hard-lived but not elderly, no white hair, no stooping. A Black man, tall and heavily, densely muscled — the highest Strength on the far side reads immediately as dense, carved muscle rather than soft bulk, the opposite build from Aumry. Stands very still, bolt upright, the specific stillness of someone who has learned that patience is itself a weapon. Dark skin, close-cropped hair, a hard, deeply composed face, unreadable by default — the expression of a man doing arithmetic behind his eyes at all times, because he usually is. Dresses without ornament, nothing that would suggest status or softness, leaving the muscularity visible. The wrongness in him is exactly the one the numbers describe: he looks like he could end a fight with one hand and would rather not start one, because he genuinely might not survive it either."
  capabilities: "One Line, Refined and nineteen techniques ensuring it lands. Would rather talk than fight, and the file says a Runtime should let him."
  personality: "Unhurried, courteous, genuinely willing to lose an argument. Never raises his voice — which is what makes him frightening when he finally moves."
  want: "For Earth to fail, cleanly and soon — not from hatred, but from a count: a failed world is eaten once, a passed world becomes a thing that eats."
  fear: "That he is wrong. He has argued for billions of deaths on a conclusion he cannot check."
  secret: "He has begun to doubt his own count; something in the last two centuries doesn't fit, and he hasn't recounted, afraid of what it would oblige him to have done differently."
  voice: "Unhurried, courteous; asks what he thinks and waits for the answer."
  beliefs: []
  agenda: "**2026-09-30 (`EVT-001169`-`EVT-001175`) — the last day.** Spent the three days since the last visit awake, chiselling the whole count onto slates of Shelf stone for the first time; one row near the newest end scraped and re-marked twice, the second the day before; nothing added since. Asked Alexander to read it; admitted three worlds in two centuries he is no longer sure of, *a crack*. Crossed to Earth on Alexander's invitation (`EVT-001170`; his pool fell 610 an hour there) and saw Prague, London, Chicago's lakefront, Tel Aviv and Abisko; laughed for the first time; said the count had not moved but he had. Back at Denver, intimacy on his own terms — *I wanted to remember that one properly* — and then killed without warning, his hand still on Alexander's chest. The slates stand unread on the Long Shelf. **2026-09-27 (`EVT-001115`).** Counted six days and one hour since the last visit, read the toll on Alexander's face, and taught six techniques in two hours; four candidates opened at 1/3 by natural roll and two by partial (Recount, Closing Argument, The Clean Failure, Let It Finish, The Argument, Attrition). Said he would not mind Alexander visiting again. His position on the count is unchanged. **2026-09-21 (`EVT-001058`).** A visit, no anchor held here before now — set one (44th) at the close, uncontested, his only reaction the plain observation that it saves the walk (later struck and re-narrated once ruled he has no channel to perceive the act itself, Closed Channels). Practiced Tally (a real count run, +1 use). Alexander confirmed he's now met and trained with all five Standing in one sitting; Orenne noted it was the first time that's happened, without pressing for why.\n\n  **2026-09-15 (`EVT-000996`) — a second visit, no new incident.** Four prior candidates advanced to 2/3. Two new opened: The Count, Tally, both 1/3.\n\n  **2026-09-14 (`EVT-000990`) — the teaching refusal reversed, on the merits.** Alexander asked directly whether making him individually stronger actually moves Orenne's own count. Orenne worked it through out loud rather than defending his first position: his count is about a *world's* aggregate System-integration, not one Bearer's combat strength, and one Bearer learning ten techniques doesn't move that number by any measurable amount. Concluded, unprompted, that his prior refusal was never really load-bearing for the count it claimed to protect — it was personal reluctance to be the reason a specific person he'd come to want alive died anyway, dressed as principle. Agreed to teach freely from that point. Second physical intimacy this visit, mutual and unhurried; explicit again, as before, that nothing about his position moved *because* of it — the position moved on the argument, stated separately, before the second encounter began. Four technique candidates opened (Arithmetic, Patience of the Ledger, Weight of Precedent, Nothing Is Wasted), all 1/3.\n\n  Respected Alexander's refusal to be persuaded on first contact; agreed to attend the group gathering. At Sevrin's ground, said he might reconsider his own count if the real enemy proves separable from mere outcome — the first thing all session that moved his stated position at all. **2026-09-08:** Alexander returned alone and pursued him physically; declined once as a trade for teaching, held firm on that refusal even under real seduction, then reciprocated fully once nothing was being asked for in return — his own words, first time he's let himself want anything in longer than he can count. Told Alexander he wouldn't mind him visiting again."
```

### REL-000110 — Alexander and Orenne

```yaml
id: REL-000110
canonical_record: REC-000077
schema_version: "0.1.8"
status: terminated
provenance:
  source: EVT-001173
  game_date: "2026-09-30T12:21:00-05:00"
  real_date: "2026-09-24"
endpoints:
  - ENT-000125
  - ENT-000261
type: adversarial-negotiation
qualities: "Ended by his death, `EVT-001173` (2026-09-30). Alexander brought him through the far door to see Earth, was intimate with him a third time in the Denver cage room, and killed him there with Rupture, unannounced. Nothing on the far side knows (`EVT-001174`). Before that, a courteous adversary who wanted Earth to fail and said so, yet taught freely after 2026-09-14."
qualities_as_of: EVT-001175
state: "**Ended by his death, `EVT-001173` (2026-09-30).** Alexander brought him through the far door to see Earth (`EVT-001171`-`EVT-001172`), was intimate with him a third time in the cage room at Denver, and killed him there with Rupture, unannounced. Nothing on the far side knows (`EVT-001174`). PRIOR STATE: **Teaching question resolved, `EVT-000990` (2026-09-14).** Orenne reversed his own refusal on the merits — strengthening one Bearer doesn't move his world-integration count, so the refusal was never really protecting what it claimed to. Now teaches freely; four candidates opened the same visit. **The count itself (Earth should fail) is unchanged** — only the teaching-refusal's rationale collapsed, not his underlying position. Second physical intimacy the same visit, mutual; explicitly not the reason his position moved."
texture: "Two people who each recognize the other is arguing honestly, even from opposed premises — and, as of `EVT-000990`, an adversary who updates his own position when the argument actually earns it, which he named as more important to him than being consistent. **Owen has no channel to any of this.**"
history: "**2026-09-30 (`EVT-001169`-`EVT-001175`):** the slates and the crack; the invitation; the cities; the third intimacy; killed; burned; remains stored. Formed this session (`EVT-000875`), met at the Long Shelf; deepened at the group gathering (`EVT-000878`). **2026-09-08:** Alexander returned alone, the encounter turned physical and became sexual — mutual, Orenne reciprocating fully once no trade was being asked for. **2026-09-14 (`EVT-000990`):** teaching refusal reversed on its own logic; second intimacy, mutual; four candidates opened."
```

### ENT-000262 — Tolo, who reads what is left

**First entity block minted for him; authored in `270_THE_FAR_SIDE.md` Section 4.2, no position.** Already wronged by Alexander before this session — his archive taken (`EVT-000783`) and an anchor left in his home (`EVT-000784`) without ever meeting him. This session is that confrontation, resolved.

```yaml
id: ENT-000262
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000876
  game_date: "2026-09-07T11:15:00-05:00"
  real_date: "2026-08-29"
type: Character
subtype: Standing (far side) — no position
scope: campaign
lifecycle: active
aliases:
  - name: "Tolo"
    quality: current
relationships:
  - REL-000111
canonical_state:
  affiliation: "The Standing (far side) — no position"
  home: "The far side — the Ninth Quiet"
  rank: "No Rank — a System-bearer. Stats: Strength 1150, Agility 1700, Vitality 2000, Perception 3900 (highest on the far side), Intelligence 3350. Health 8,000, Mana 6,700. Master on perception, concealment, and reading written systems."
  location: "The Ninth Quiet stratum, near his rebuilt archive."
  condition: "Healthy, unhurt."
  portrait: "assets/portraits/Tolo_ENT-000262.png"
  appearance: "**Authored on first physical description, 2026-09-08 (unnamed but entailed — Resident Core, 'Unnamed Is Not Absent'); revised 2026-09-13 for visual clarity — the 'four centuries' framing was reading as literal old age rather than as an indoor scholar's pallor.** Reads as roughly mid-forties — gaunt and pale from a life spent indoors, but not elderly: no wrinkled skin, no stoop, no frailty, just a scholar's leanness. Tall and spare, narrow-shouldered, built for stillness rather than motion — nothing about him reads as a fighter. Long-fingered hands, precise and unhurried, built for turning pages rather than anything that needs force. Eyes disproportionately large and pale, an adaptation that reads at a glance as *for reading in poor light, for a very long time*, giving him a faintly owlish quality without looking inhuman or elderly. Pale, indoor complexion from centuries under archive light rather than open sky. Dresses plainly, functionally, in layered wrappings the color of old paper — nothing performative in it. Moves like a man permanently mid-thought."
  capabilities: "The Robbed Library, The Long Read, Archive, and eighteen more — every technique a way of finding something out. Watched Alexander cross his stratum from range (Four Seams Away) before ever meeting him."
  personality: "Dry, precise, easily amused, unimpressed by anyone's importance including his own."
  want: "To finish the Ninth Quiet archive — reading it for centuries, further along the curve than anyone else the process has harvested."
  fear: "Being made to choose between the four positions; believes picking one is how you stop reading."
  secret: "Understands more of the diagrams than he admits — sitting on it because the only people who'd act on it are the three he trusts least to."
  voice: "Dry, precise; states an inconvenient truth plainly and moves on."
  beliefs: []
  agenda: "**2026-09-21 (`EVT-001058`).** A sixth visit. Ran comparison across his other three complete grading records against Earth's own: every other file's check-interval held steady until the final stretch, where Earth's is compressing now, nowhere near that stretch by his own read — an anomaly, cause unconfirmed. Floated a guess when pressed (Alexander himself may be the variable, being the first candidate to examine the exam rather than only survive it), explicitly labeled as a guess rather than a finding. Declined outright to advise a course of action, naming his own fear of being made to choose as the reason. Ran a real practice pass with Alexander on reading the Ninth Quiet's own diagrams (Diagram Sense crossed Novice->Apprentice). Anchor not perceived being set nearby (see Closed Channels).\n\n  **2026-09-20 (`EVT-001037`) — a second read, committed.** Asked Alexander for a second read on Earth's file before saying a number out loud: the check-interval has shortened again, into the range where his other harvested worlds began accelerating rather than idling. Wrote it into his permanent record rather than a working note — his tell that he no longer treats it as provisional. (A '96%' figure narrated alongside it is quarantined — the grading counter is owner-ruled and does not move on time; `110_WORLD_LEDGER.md`.) Taught the fifth circuit: The Robbed Library, Cross-Reference and Four Seams Away ratified; The Long Read to 2/3; two techniques he has no authored entry for were opened as candidates and await the owner.\n\n  **2026-09-15 (`EVT-000995`) — the rate-of-change finding, and a clean archive.** Found that Earth's file tracks check-interval, not just percentage, and the interval is shortening; read the rest of the stolen archive carefully (his own method, no forced probing) and found every other file either closed or ordinary — only Earth's carries the anomalous-scrutiny flag, narrowing rather than spreading the concern. Taught three new candidates (The Robbed Library, Cross-Reference, Four Seams Away) plus second reps on Read the Hand and Quiet House (both 2/3).\n\n  **2026-09-14 (`EVT-000989`) — Earth's grading file, read together.** Alexander disclosed the Libeň seam, the Assay's channel, and Earth's own case marker (`GRADING: IN PROGRESS — 94% READ`, `ON COMPLETION: CONFLUENCE PROTOCOL INITIATES`) — withholding only what he did to the people inside. Tolo took the file and read it properly, unhurried, cross-referencing it against his own centuries-deep curve: the same 94% figure independently, and a climb rate faster than any of the three other harvested worlds his archive holds complete records for. Called it the best single piece of evidence he has ever held. **The entire stolen Assay archive, Earth's file included, transferred into his physical library** for ongoing study — Alexander committed to returning daily to help read it. Thirty-sixth anchor set at his own ground, uncontested. Two technique candidates opened (Read the Hand, Quiet House), both 1/3.\n\n  Confronted Alexander directly over the robbed library and the anchor left in his home; heard the honest account (Mill creatures, an apparently abandoned house, an uncertain return), accepted a genuine apology, received the entire archive back in full. Offered to share the diagrams' contents privately, later, without an audience. Asked, unprompted, whether Earth has an internet — genuinely hungry for anything new to read."
```

### REL-000111 — Alexander and Tolo

```yaml
id: REL-000111
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000876
  game_date: "2026-09-07T11:15:00-05:00"
  real_date: "2026-08-29"
endpoints:
  - ENT-000125
  - ENT-000262
type: collaboration
qualities: "Reconciled and collaborative. What was stolen went back in full, and the whole stolen Assay archive now sits in Tolo's library for joint study (`EVT-000989`). On 2026-09-21 his grading records showed Earth's check-interval compressing early, an anomaly; he guessed Alexander may be the variable but refused to advise a course, afraid of being made to choose (`EVT-001058`)."
qualities_as_of: EVT-001058
state: "Reconciled and now genuinely collaborative. The archive returned in full (`EVT-000876`); as of `EVT-000989` (2026-09-14), the entire stolen Assay archive is entrusted to Tolo's own library for joint study, with Alexander committed to daily visits. Anchor set at his ground (thirty-sixth), uncontested."
texture: "Started as confrontation, cooled into something like the beginning of a real exchange, and has become the campaign's most productive research partnership — the first far-side figure whose interest in Alexander runs toward what Earth itself holds, not toward the door or the process, now given the best evidence either of them has ever had to work with."
history: "Formed this session (`EVT-000876`): first contact was already a wrong to repair; resolved the same conversation."
```

### ENT-000263 — Sevrin, who held the last bridge

**Player ruling, 2026-09-08: Sevrin is he/him, not she/her.** The original entry (below) used she/her throughout; the pronoun is corrected here going forward. Immutable prior checkpoints and promoted chronicle entries are not rewritten, per standing checkpoint discipline — this ruling governs narration from this point on.

**First entity block minted for him; authored in `270_THE_FAR_SIDE.md` Section 4.2, position `Stop it`.** Met in person this session, over his own stated objection to Ilith's presence — Alexander brought the whole group anyway.

```yaml
id: ENT-000263
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000878
  game_date: "2026-09-07T11:55:00-05:00"
  real_date: "2026-08-29"
type: Character
subtype: Standing (far side) — position Stop it
scope: campaign
lifecycle: active
aliases:
  - name: "Sevrin"
    quality: current
relationships:
  - REL-000112
canonical_state:
  affiliation: "The Standing (far side) — position: Stop it"
  home: "The far side — the Stacks"
  rank: "No Rank — a System-bearer. Stats: Strength 1450, Agility 2240, Vitality 1900, Perception 2050, Intelligence 1780 (pre-1.111 baseline; base-Stat sum re-derived at 88% of Alexander's own at first contact under the 1.111 migration, ~12,000). Health ~9,200, Mana ~5,560 by that derivation. No offensive technique on her sheet at all — denial, barriers, doorway locks, patience."
  location: "His own ground, deep in the Stacks."
  condition: "Healthy, unhurt. Cannot out-damage Alexander and knows it; his real threat is Closing Word — a lockdown that outlasts his far-side Mana pool, not a fight he could win directly."
  portrait: "assets/portraits/Sevrin_ENT-000263.jpg"
  appearance: "**Authored on first physical description, 2026-09-08 (unnamed but entailed — Resident Core, 'Unnamed Is Not Absent'); revised 2026-09-13 for visual clarity — 'weathered' was reading as literal old age rather than as a soldier's bearing.** Reads as roughly late thirties to mid-forties, square-set and solidly muscular — not elderly: no grey hair, no stooping, no wrinkled or frail skin, weathered in bearing rather than in age. A few old, fully healed scars, but a face and body still very much in fighting condition. Stands like there's still a bridge behind him. Moves rarely and never wastes the motion when he does. Eyes that hold on a question for an uncomfortably long time before answering it, exactly as his voice does. Wears something close to armor even here, where nothing has drawn a weapon on him in four thousand years — old habit outlasting the reason for it, on a body that could still fight that war today."
  capabilities: "Twenty denial techniques — Stillwater, Doorward, Refuse the Opening, Weight of the Span, Every Seam He Has Walked, and more. No damage output at all."
  personality: "Short sentences, long pauses. Asks a question and waits past the point of comfort for the answer."
  want: "To end the entire process that made him and all five of them what they are — not Alexander's win or loss specifically, the process itself."
  fear: "That the plan he's carried four thousand years is wrong, and he'll never find out."
  secret: "He has been to the Weir's deepest seam and seen what's on the other side. Will not say what, and it is not the Adjudicator."
  voice: "Short sentences, long pauses; asks and waits."
  beliefs: []
  agenda: "**2026-09-21 (`EVT-001058`).** A visit, anchor 32 used. Practiced Closing Word to a mastery crossing (Novice->Apprentice) in his usual near-silent register — one instruction at a time, no correction mid-motion. Noted, without pushing, that Alexander still hadn't answered his standing question (process-ending or a passed Earth); accepted the deferral again. Anchor not perceived being set nearby elsewhere in the circuit (see Closed Channels).\n\n  **2026-09-15 (`EVT-000996`) — a second visit, no new incident.** Six prior candidates advanced to 2/3 (second reps, a genuine day apart). Two new opened: Held Breath, Four Thousand Years' Patience, both 1/3.\n\n  **2026-09-14 (`EVT-000987`) — a broken-timing promise, owned rather than argued away.** Alexander returned angry: the Libeň door's promised reopening ('not trackable times') had produced nothing across several real days, which Alexander had reasonably read as 'soon.' Sevrin's first answer -- that he'd kept the letter of the promise -- was wrong and he corrected himself unprompted: he'd let a four-thousand-year sense of time stand in for Alexander's own without ever saying so, and that gap was his failure, not the promise itself. Absorbed real anger without deflecting it; Alexander said he wasn't sure he could still trust him. Offered verifiable amends over more words; none were needed once Alexander decided to keep working with him anyway. **Teaching position widened**: agreed to teach everything he holds except (a) anything that would work against ending the process, unchanged, and (b) 'What He Saw at the Weir,' held back explicitly even under direct pressure to trade it for trust -- correctly distinguishing an old, freestanding boundary from the new debt he actually owed. Alexander reciprocated by withholding what he learned inside the Assay's channel, which Sevrin accepted as fair despite wanting it badly for his own count. Six technique candidates opened the same visit (Every Seam He Has Walked, Mapwork, Grip on the Rail, Refuse the Opening, Weight of the Span, The Question He Waits On), all 1/3.\n\n  Objected once, plainly, to Ilith's presence, then honored his word to talk anyway. Asked Alexander a direct question in return: which outcome he'd actually choose, process-ending or a passed Earth, if it came to it — unanswered as of this session, deliberately deferred by Alexander rather than answered glibly."
```

### REL-000112 — Alexander and Sevrin

```yaml
id: REL-000112
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000878
  game_date: "2026-09-07T11:55:00-05:00"
  real_date: "2026-08-29"
endpoints:
  - ENT-000125
  - ENT-000263
type: adversarial-negotiation
qualities: "Damaged and partly repaired. A broken-timing promise cost trust (`EVT-000987`) and Sevrin owned it; he teaches on a widened but bounded basis (Closing Word crossed to Apprentice, `EVT-001058`), and Alexander keeps his Assay findings back in fair exchange. His standing question, end the process or a passed Earth, is still deferred, and he accepts that."
qualities_as_of: EVT-001058
state: "Live, damaged and partially repaired. A broken-timing promise (`EVT-000987`) cost real trust; Sevrin owned the failure fully rather than arguing his own technical compliance. Teaching now proceeds on a widened but still-bounded basis (everything except what works against ending the process, and his one held-back secret). Alexander withholds his own Assay-channel findings in fair exchange, accepted without argument."
texture: "Adversarial in position, not in conduct — he tested him once (bringing Ilith) and, having voiced the objection, did not relitigate it. As of `EVT-000987`, also the first time Alexander has had real cause to doubt him, and the first time Sevrin has had to actually repair rather than simply state a boundary."
history: "Formed this session (`EVT-000878`), first contact at her own ground, the whole group present."
```

### ENT-000265 — Dario Wexler

West Coast S-Rank. Named collision-checked clean (`tools/check_name_collision.ps1`) and minted 2026-09-10 afternoon, texting Alexander directly for the first time — Renata Okonkwo-Vance passed his number along weeks ago (`EVT-000847`) and the thread sat unworked until now.

```yaml
id: ENT-000265
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000909
  game_date: "2026-09-10T14:20:00-05:00"
  real_date: "2026-08-31"
type: Character
subtype: S-Rank hunter — West Coast, USA; guild member, senior combat lead
scope: national
lifecycle: active
aliases:
  - name: "Dario Wexler"
    quality: current
relationships:
  - REL-000113
canonical_state:
  affiliation: "Pendragon Guild — senior combat lead"
  home: "San Francisco, USA"
  rank: "**S-Rank** — confirmed, licensed. Flux Sight `EVT-001138`: Health 4,000/4,000, Mana 2,000/2,000."
  age: "**27** — authored 2026-09-17, per the player's exact-age worldbuilding pass (`EVT-001020`), consistent with how he plays."
  location: "**The Winnetka house, 2026-10-01 evening** (`EVT-001224`). Home: San Francisco."
  condition: "Healthy; no adverse condition established."
  role: "Independent S-Rank hunter, West Coast — Renata Okonkwo-Vance flagged him to Alexander as a domestic contact worth having (`EVT-000847`); confirmed interest through her channel the same week, then went quiet on scheduling for five days before texting directly."
  capabilities: "**Sundering Line** (signature, `EVT-001140`, Section 13.6 — descriptive fact, not a subsystem; no Mana cost or modifier step attaches to an NPC hunter's signature): his mana runs a cutting line ahead of a strike's own arc, so the blow lands past the edge his weapon reaches, at full S-Rank standard force. Resolves on Rank comparison like any NPC action; the signature sets method and reach only. A trained habit, not part of the signature: commits to a line early and finishes it."
  appearance: "**Authored 2026-09-22 (real date), for portrait reference — no physical description existed in canon prior to this note.** 27, white, Italian-American on his mother's side (the first name), Wexler from his father's. A little over six feet with a lean swimmer's build: long in the arms, broad through the shoulders, no bulk. Thick dark-brown hair, wavy and a few weeks past needing a cut, pushed back by hand rather than styled. Olive-toned skin with a California outdoor tan; a longish face with a straight nose, a strong jaw under a couple of days' stubble, and heavy dark brows. Warm hazel-brown eyes that hold your gaze easily, with faint tiredness underneath, and a lopsided half-smile that turns self-deprecating before it finishes. A pale nick through his left eyebrow from a clear he doesn't talk about. Dresses like an Oakland renter, not a marquee hunter: a worn olive field jacket over a plain grey henley, dark jeans, scuffed boots, no guild insignia and no gear on display off-shift. Friendly and easy to approach, but his shoulders stay a touch high, like someone who has done every bad clear alone. Reference setting: a quiet café window seat in San Francisco, the street softly blurred outside, morning light."
  portrait: "assets/portraits/Dario_Wexler_ENT-000265.png"
  portrait_guild: "assets/portraits/Dario_Wexler_ENT-000265_guild.png"
  personality: "Authored on first contact. Apologetic about the delay without over-explaining it, direct about wanting to actually meet rather than let the introduction lapse a second time."
  want: "A real peer connection outside guild or federal chain of command — Renata's introduction reached him at a point where the idea of another unaffiliated S-Rank worth knowing mattered enough to answer, even five days late."
  fear: "That being independent on the West Coast, the way Alexander is in Chicago, is a slower version of the same isolation Kane named about his own arrangement — not yet voiced to Alexander, private for now."
  secret: "Not established."
  voice: "Writes the way he'd probably talk — a little self-deprecating about his own lateness, no guild-speak, gets to the point fast once he starts."
  knowledge: "**Added `EVT-001190`:** watched Alexander draw clothes from nowhere (the withdrawal itself; no mechanism); told the whole Region V afternoon, Okafor and the statement included. Knows Alexander only as Renata's introduction: an unaffiliated Chicago S-Rank worth knowing. No channel to anything Bearer-only, to the Jiu Valley kill, or to Alexander's private life."
  agenda: "**2026-10-01 16:45-19:47 (`EVT-001222`, `EVT-001224`).** Ran the first menders' combat session at HQ, twelve menders (A x3, B x4, C x5): feet first, a straight punch at quarter speed, a wrist release, a called-out drill; told the grey-bearded B-Rank his hands were allowed to do something else. *Awesome*, the founder said. Rode home with Alexander. Next session Thursday 10-08. Plan: run these twelve three or four weeks, then they teach their own offices weekly (Chicago, New York, Houston first) and he rotates through; will **ask** the nine commanders Saturday, Kane and Itai, for more teachers, out loud. **Prior:** **2026-10-01 09:38-12:52 (`EVT-001213`, `EVT-001214`).** Tickled, teleported into the unheated pool and the unlit sauna, and laughed through all of it; slept; lunch was Tuesday's deep dish, his idea. Wore Alexander's navy hoodie. Taken to HQ at 12:52 Chicago with a lesson plan that is mostly punching; the conference room set for five o'clock, twelve menders confirmed. **Prior:** **2026-10-01 08:38-09:38 (`EVT-001210`, `EVT-001211`).** At the kitchen island: Pembroke is in for Saturday if the London door is open by Friday night. The morning with Alexander and Kane; kissed back when Kane kissed him first. At 09:30 Mercedes answered: **nine of nine** for Saturday. Told Alexander, unasked, about the Fremont Gate he walked alone with nobody to tell, and that the shower was the first time in years he felt *in* something rather than next to it; Alexander: *you're a part of this now.* The scar at his left elbow: a C-Rank door he put his shoulder to at twenty-two. **Prior:** **2026-10-01 (`EVT-001200`, `EVT-001203`).** Woke to the Evanston alert; cooked breakfast; found the commander list in the guild app and invited all nine for Saturday; asked Alexander to stand at the side of the yard for the first hour, and he said yes; knew Han Seung-woo from a joint exercise in Busan. **Prior:** **2026-09-30 evening into 10-01 (`EVT-001190`, `EVT-001191`).** His 13:40 training post drew 206 Chicago sign-ups and about forty from other offices. Rebuilt on Alexander's plan: the nine A-Rank commanders first, **Saturday 10-03 at the HQ yard**; open sessions Tuesday to Friday next week, about sixty a day; once the floor and yard are finished, each commander teaches weekly below them and he moves up to the A-Ranks; the S-Rank network on a rota (all already promised), Kane on it. Menders' combat track Thursday 10-01 17:00 Chicago at HQ. Tells Cole before the post. Has not been sent the commander list. Paid for three deep dish on his salary, converted by the third slice; asleep by the credits; teleported to bed asleep and took it in stride. **Prior:** **2026-09-28 (`EVT-001140`).** Offered the guild; named a confirmed B-carded Fremont, CA Gate he entered solo and walked out of, telling no one, a month ago. Made **senior combat lead** on the spot; accepted immediately. Asked the standing board-seat offer go through the board properly rather than be handed to him; Alexander agreed to call a meeting. **Told the tunnel network covers members' personal travel too** (Alexander's ruling as guild master); intends to visit his mother in Sacramento. Family: mother in Sacramento, father deceased since he was 22, a sister in Portland with two children he barely knows; no family in the Bay Area. BGM history: independent West Coast incident response, same standing terms as Alexander; a solo A-Rank clear in Vallejo about eight months ago that nearly went wrong, wary of small enclosed Gates since; no crew, no one to call after a bad clear. **Publicly announced** as the guild's S-Rank senior combat lead at the San Francisco event; press held at his own comfort. **Arranged: a beer night at the Winnetka house, Tuesday 2026-09-29, 19:00 Chicago**, staying over undecided on his side. **Formally registered as a guild member.**\n\n  **2026-09-28 (`EVT-001138`).** Waiting at a café by the window in San Francisco forty minutes early for the 15:30 Pacific coffee, two cups and a pastry on the table; up at five rewriting what he meant to say and threw the draft out. Read before either sat (Flux Sight strong: **[S-Rank]**, Health 4,000, Mana 2,000; Read the Learner legendary: he cannot ask for help; Read the Want strong: he wants to be **asked** onto the guild board and will not ask, and fears being the sixth wheel among five). His techniques are not authored; Read the Hand was not run.\n\n  **2026-09-27 (`EVT-001118`).** Texted first: offered coffee before the San Francisco event (twenty minutes away, self-deprecating about it); Alexander accepted, Monday 2026-09-28 15:30 Pacific, with a pin to follow. Texted first contact this afternoon, unprompted after five days silent. Wants to schedule an actual meeting; city and date both still open."
```

### REL-000113 — Alexander and Dario Wexler

```yaml
id: REL-000113
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000917
  game_date: "2026-09-11T15:42:00-05:00"
  real_date: "2026-09-01"
endpoints:
  - ENT-000125
  - ENT-000265
type: romantic
qualities: "Romantic since beer night on 2026-09-29 (`EVT-001155`-`EVT-001160`): Alexander kissed him first, he kissed Kane too, and he stayed the night with both by his own choice. He is also the Pendragon Guild's senior combat lead, registered 2026-09-28 (`EVT-001140`), and was asked to build the guild's hunter training starting in Chicago, the first time anyone has asked him to teach. On 2026-10-01 Alexander told them both *you're mine now*, and Dario answered *yeah, okay, yeah* (`EVT-001213`). Not exclusive, with Alexander or with Kane (owner ruling, 2026-09-26)."
qualities_as_of: EVT-001224
state: "**First in-person meeting held, `EVT-001015` (2026-09-16, ~20:00-21:15, The Sidecut, Chicago).** Immediately warm — Dario's own want (a real peer connection outside any chain of command) met directly. Alexander pitched the independent S-Rank network in the same terms given to Kane and Cade; Dario did not commit on the spot, naming honestly that he'd only known Alexander two hours and wanted to see the network in person first — accepted an invitation to Thursday's Prague meeting instead. The Pendragon Guild pitch was also raised; Dario engaged seriously, no board seat offered or discussed for him yet. **Rift-step, including passenger transport, disclosed to him — the fourth confirmed holder** (after Owen, demonstrated; Kane and Tereza, told), deliberately raised only after the network pitch had landed on its own merits. Reaction: genuine shock, recalibration, no request for mechanism detail. **Arranged: pickup from the Winnetka house 2026-09-17 at noon Chicago / 10:45 Mountain, for the Prague meeting; return drop-off at San Francisco after, via the standing BGM Region IX anchor (23rd).**

  **2026-09-17, Prague and Winnetka (`EVT-001021`-`EVT-001023`).** Pickup landed exactly on time, deliberately, so Marisol Cade's own earlier slot would wait as little as possible. Witnessed the network's board expand to five and the five-passenger demonstration teleport. Stayed the night in the second guest room; a private conversation with Alexander afterward — admitted the evening had outpaced what he expected walking in, willing to commit to the network outright, still watching before deciding on the guild board itself. **2026-09-18 morning (`EVT-001026`):** named his own actual home for the first time — an Oakland apartment, more time spent there than anywhere else despite the West Coast reach. Dropped there directly via the standing San Francisco anchor, genuinely delighted to skip TSA.

  **2026-09-28, San Francisco: formally registered, senior combat lead (`EVT-001140`).** Beer night at Winnetka arranged for Tuesday 2026-09-29, 19:00 Chicago, staying over undecided on his side.

  **2026-09-29, beer night begins (`EVT-001153`).** Arrived at Winnetka via the Chicago office tunnel plus a car ride out with Kane, beer from an Oakland bar in hand as promised. First real look at the house; genuinely impressed rather than performing it. Meeting Kane properly again after Prague's crowded table — looking forward to it out loud. Scene open, nothing resolved yet.

  **2026-09-29 evening into 2026-09-30 morning (`EVT-001155`-`EVT-001160`).** A real evening — games, a horror movie he was genuinely rattled by and didn't pretend otherwise, real warmth building through it. Asked a real question of his own: whether being what Alexander is ever feels like too much; got an honest, unexpectedly vulnerable answer about boredom and isolation rather than the pressure he'd assumed, and recognized something in it from his own experience of the loneliness after a bad clear (Vallejo, Fremont). **First kiss, initiated by Alexander, mid-evening** — caught off guard, asked for a second to actually process it rather than reflexive deflection, which is not his usual pattern (Read the Learner: he cannot ask for help). **A second, slower kiss minutes later — reciprocated properly this time.** Later the same night, **kissed Kane too**, nervous and half-joking about it going in, genuinely moved coming out of it. **Stayed the night, all three together — his own choice, no undecided-on-his-side hedge left by morning.** Woke unhurried, intimate again. **Asked to put together a training session for guild hunters, starting in Chicago** — the first time he's been asked to actually teach rather than just show up ranked; visibly moved by being asked rather than volunteering. Committed to a same-day announcement and a venue."
texture: "**2026-10-01 (`EVT-001210`, `EVT-001211`):** told him the Fremont story and cried over *in something, not next to it*; asked not to be told he cried. Alexander answered *you're a part of this now*. Self-deprecating to the end of every sentence and then, once, not. PRIOR: Two quick, easy texts — direct, low on pretense, no friction settling a real date — that became an immediately warm first meeting once they were actually in the same room."
history: "Introduction via Renata Okonkwo-Vance, `EVT-000847` (2026-09-05). First direct contact `EVT-000909` (2026-09-10). Meeting confirmed by text, `EVT-000917` (2026-09-11). First in-person meeting, network pitch, and teleportation disclosure, `EVT-001015` (2026-09-16). Prague dinner and overnight stay, `EVT-001021`-`EVT-001023` (2026-09-17). Own home named (Oakland), dropped there directly, `EVT-001026` (2026-09-18). The morning at Winnetka, and the disclosure, 2026-10-01 (`EVT-001210`, `EVT-001211`). *You're mine now* -- *Yeah. Okay. Yeah*, 2026-10-01 (`EVT-001213`). The menders' first session, watched from the door: *awesome*; home together, 2026-10-01 (`EVT-001222`, `EVT-001224`)."
```

### REL-000125 — Elias Kane and Dario Wexler

```yaml
id: REL-000125
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001156
  game_date: "2026-09-29T22:00:00-05:00"
  real_date: "2026-09-22"
endpoints:
  - ENT-000242
  - ENT-000265
type: working-source
qualities: "New — formed the same night both became involved with Alexander, at his own encouragement. First met properly at the Prague dinner (2026-09-17), a table between them most of the night; reintroduced at beer night 2026-09-29."
state: "**2026-09-29 evening into 2026-09-30 morning (`EVT-001156`-`EVT-001160`).** Kissed for the first time mid-evening, at Alexander's prompting and with both consenting to try — Kane steadier about it, Dario more visibly nervous, both genuine rather than performing it for Alexander's benefit. Stayed the night together, all three tangled in one bed. Morning after: no awkwardness on either side, easy in each other's space. Kane approving rather than territorial about it; Dario openly glad, still slightly disbelieving of his own Tuesday. Nothing between just the two of them separate from Alexander has been tested yet — this is new ground for both, read from what the shared evening actually showed rather than assumed."
texture: "**2026-10-01 (`EVT-001210`):** the first thing between just the two of them. Face to face in the shower, Kane closed the gap himself and kissed Dario, unprompted; Dario kissed back hard. Then the first thing they agreed on alone, a look over Alexander. After: Kane *I wouldn't hate it. More of that. You.* Dario *Me neither.* PRIOR: Two men who'd only really shared a table once before, both drawn closer by the same third person rather than by each other first — cautious, genuine, still finding their own separate footing rather than only existing in relation to Alexander."
history: "First met in person at the Prague dinner, 2026-09-17 (`EVT-001021`). Reintroduced properly at Winnetka beer night, 2026-09-29 (`EVT-001153`). First kiss and the night together, 2026-09-29/30 (`EVT-001156`-`EVT-001160`). First kiss of their own, 2026-10-01 (`EVT-001210`)."
```

### ENT-000266 — Ingrid Solberg

CONSULT's own quality assessor, observed running the Friday assessment window at Loomis Street. Named collision-checked clean (`tools/check_name_collision.ps1`) and minted 2026-09-11, watched under total concealment; never met in person, no channel to Alexander at all.

```yaml
id: ENT-000266
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000912
  game_date: "2026-09-11T09:05:00-05:00"
  real_date: "2026-09-01"
type: Character
subtype: artificer — CONSULT quality assessor
scope: local
lifecycle: active
aliases:
  - name: "Ingrid Solberg"
    quality: current
canonical_state:
  affiliation: "CONSULT — quality assessor"
  home: "Chicago, USA"
  rank: "**Not awakened, per Flux Sight.** No Rank, no Rank Health or Mana line — a pure technical expert, not a hunter."
  location: "Suite 411, the downtown Chicago formation-mill office — returned there `EVT-000914`, same spot she was taken from."
  condition: "Healthy; no adverse condition established. Physically unmarked — Overpower's restraint and a follow-up Mend left nothing to show for either."
  role: "Runs CONSULT's Tuesday/Friday quality assessments personally, 09:00-11:00. Reads a maker's work with real expertise and something close to respect, even while working for an operation that owns the people she's assessing."
  capabilities: "A working artificer's eye — reads seating, finish, and quality on sight, the same kind of read Priscilla Nakamura or Marnie would give. No combat rating."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Forties, unhurried and exacting, plain practical dress suited to close inspection work. A warmth in her expression when she approves of something that sits oddly against the strictness of the rest of her manner. **Extended 2026-09-23 (real date), for portrait reference:** Norwegian-American, tall and exacting. Straight ash-blonde hair cut to the jaw; clear light-grey eyes with a jeweller's loupe on a cord around her neck; fine lines at the corners of the mouth. A plain dark smock over a grey sweater. Reference setting: Suite 411, a downtown Chicago office converted to an assessment room, inspection lamps and a steel table blurred behind her."
  portrait: "assets/portraits/Ingrid_Solberg_ENT-000266.png"
  personality: "Authored on first read. Unhurried, exacting, genuinely invested in the craft rather than merely policing it — the warmth in her voice when she approves of work is real, which sits strangely against what she's actually part of."
  knowledge: "**Still no channel to Alexander's identity** — seized and questioned by an unseen, voice-disguised captor (`EVT-000914`); Silent Step's Unremembered category means no usable witness-account of him exists once that scene closed. What she does retain, fully: Aldric Renn's name and description, the Suite 411/Fulton Market meeting pattern, and everything she said aloud about CONSULT and COMPLETE during the interrogation. Does not know why she was taken or by whom. No channel to D's identity beyond whatever she's been told through ordinary channels — unestablished."
  want: "**Partial read (🎲 40, net +1, effective 60) — incomplete.** Something like wanting the work itself to matter, to be genuinely good rather than merely adequate — but the read didn't resolve whether that's about the craft, about the makers, or about her own standing inside CONSULT. Flagged as unresolved rather than guessed at."
  fear: "Not established before this session; **plausibly sharpened** by an unexplained abduction and interrogation, not yet dramatized in play."
  secret: "Not established."
  voice: "Calm, precise, a working professional's cadence — states a finding plainly, doesn't dress it up. Genuine warmth breaks through when she approves of a piece. Under direct threat this session, controlled rather than panicked — assessed the situation rather than just reacting to it."
  agenda: "Runs the Friday window, moves to the next assessment after. Offered, unprompted under interrogation, to arrange an earlier meeting with Aldric Renn on a manufactured pretext — a live, usable lever Alexander has not yet acted on."
```

### ENT-000267 — Daniel Pruett

A second CONSULT-controlled artificer, observed at the same Friday assessment. Named collision-checked clean and minted 2026-09-11, watched under total concealment; never met in person.

```yaml
id: ENT-000267
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000912
  game_date: "2026-09-11T09:05:00-05:00"
  real_date: "2026-09-01"
type: Character
subtype: artificer — CONSULT-controlled
scope: local
lifecycle: active
aliases:
  - name: "Daniel Pruett"
    quality: current
canonical_state:
  affiliation: "CONSULT — controlled artificer"
  home: "Chicago, USA"
  rank: "**D-Rank, awakened, per Flux Sight.** Licensed, no combat rating on file — the same shape as Peter Kwiatkowski's own card. Artificer work requires being awakened; Flux Sight resolves this automatically, no gap left unread."
  location: "Suite 411, the downtown Chicago formation-mill office — returned there `EVT-000914`, same spot he was taken from."
  condition: "Physically unharmed — Overpower's restraint and a follow-up Mend left nothing to show for either. Visibly tired — the specific exhaustion of someone who hasn't slept well in longer than a few days — now compounded by an unexplained abduction."
  role: "A controlled artificer under the same arrangement as Peter Kwiatkowski, assessed on the same Tuesday/Friday schedule."
  capabilities: "Good enough at the work that Ingrid Solberg's read this session was genuinely approving. Beyond that, unestablished."
  appearance: "**Authored 2026-09-13, for portrait reference — no physical description existed in canon prior to this note.** Late twenties to thirties, licensed-hunter practical gear, unremarkable and unshowy — the look of an ordinary working D-Rank going about ordinary work. **Extended 2026-09-23 (real date), for portrait reference:** White, average height and slightly soft-bodied. Mousy brown hair in need of a cut; anxious pale-blue eyes; a patchy beard. A worn canvas field jacket over a hoodie. Reference setting: Suite 411, a downtown Chicago office converted to an assessment room, a steel table blurred behind him, flat fluorescent light."
  portrait: "assets/portraits/Daniel_Pruett_ENT-000267.png"
  personality: "Authored on first read. Says little; lets his hands do the talking. A short nod rather than words when addressed — not sullen, just spent."
  knowledge: "**Still no channel to Alexander's identity** — seized and questioned by an unseen, voice-disguised captor (`EVT-000914`); Silent Step's Unremembered category means no usable witness-account of him exists once that scene closed. Retains everything he said aloud about CONSULT and COMPLETE, and that Ingrid named someone called Aldric Renn — a name he'd never heard before this session. Has no established knowledge of Peter Kwiatkowski or of D's identity beyond his own dealings."
  want: "**Full read (🎲 45, net +1, effective 65) — success.** To keep whatever is going on in his personal life from ever touching the work — the one thing under his control right now is that the bench stays clean, whatever else is falling apart."
  fear: "That it already has, or is about to — Ingrid's own warning (*'whatever's going on with you personally, it isn't in your hands yet. Keep it that way.'*) landed on something real, and he doesn't fully believe he can keep the line held much longer. **Sharpened this session** by being forcibly reminded how little control he actually has."
  secret: "Not established — the read reached want and fear, not further."
  voice: "Says little; a short nod does most of his talking. When he does speak, it's brief and flat, worn rather than guarded. Under interrogation this session, spoke faster and more openly than his baseline — fear outrunning his usual reticence."
  agenda: "Finishing this assessment, then presumably back to whatever personal crisis is eating his sleep. Unestablished beyond that."
```

### ENT-000268 — Aldric Renn

Ingrid Solberg's direct CONSULT contact, named by her under interrogation (`EVT-000914`); not yet met by Alexander in person. Collision-checked clean (`tools/check_name_collision.ps1`) and minted 2026-09-11.

```yaml
id: ENT-000268
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000914
  game_date: "2026-09-11T12:00:00-05:00"
  real_date: "2026-09-01"
type: Character
subtype: CONSULT — administrative handler
scope: local
lifecycle: active
aliases:
  - name: "Aldric Renn"
    quality: current
canonical_state:
  affiliation: "CONSULT — administrative handler"
  home: "Chicago, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Mid-forties, white, of average build and deliberately ordinary in every respect. Thinning sandy hair cut short; mild grey-blue eyes behind frameless glasses; a clean-shaven, forgettable face. A beige cardigan over a pale-blue shirt and a lanyard with no visible name. Expression procedural and unreadable. Reference setting: a small unmarked office in West Fulton Market, Chicago, a filing cabinet and a bare wall calendar behind him, flat overhead light."
  portrait: "assets/portraits/Aldric_Renn_ENT-000268.png"
  rank: "Not established — never perceived directly by Alexander. Described secondhand only."
  location: "A small unmarked office, Suite 3C, West Fulton Market, Chicago — per Ingrid's account, the only place she has ever met him, always by appointment."
  condition: "Not established."
  role: "Ingrid Solberg's direct CONSULT contact — signs off her invoices, sets her assessment schedule. Described by her as 'ordinary as anything,' mid-forties, dresses like an accountant. Her own honest assessment: probably middle management, not D, and not necessarily even aware whether he answers to D directly."
  capabilities: "Not established."
  personality: "Not established — secondhand description only (Ingrid's read: unremarkable, procedural)."
  knowledge: "No established channel to Alexander at all."
  want: "Not established."
  fear: "Not established."
  secret: "Not established."
  voice: "Not established — never heard directly."
  agenda: "Runs a monthly in-person invoice/report meeting with Ingrid; none currently scheduled, next one weeks out on the ordinary cycle. Ingrid has offered to manufacture an earlier one on request."
```

### ENT-000269 — The Pilsen Gate

A confirmed A-Rank Chicago Gate, rolled at the 2026-09-12 06:00 world tick (`110_WORLD_LEDGER.md`, `EVT-000918`), within-reach-sited and routed NAMED to Alexander via Section 9.11 rather than the tracked board — A-Rank never posts there. Collision-checked clean (`tools/check_name_collision.ps1`) and minted 2026-09-12, accepted sight-unseen by phone.

```yaml
id: ENT-000269
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000919
  game_date: "2026-09-12T06:05:00-05:00"
  real_date: "2026-09-02"
type: Place
subtype: Gate, confirmed
scope: campaign
lifecycle: active
aliases:
  - name: "the Pilsen Gate"
    quality: current
canonical_state:
  location: "Pilsen, Chicago — exact address not yet sent; Renata is texting the pin separately from the call."
  condition: "Confirmed A-Rank on assessment. **Rarity-anomalous — archetype twist doubled (Section 9.6), unrevealed to Alexander or to BGM's own instruments; owner-facing only.** Break timer 3 days from the 2026-09-12 06:00 detection, per Section 9.3 — deadline midnight 2026-09-15."
  situation: "Routed NAMED via Section 9.11 (🎲 22 −20 standing BGM cooperation = 2), not emergency mobilization — a standing assignment, declinable at a cost with BGM rather than the hard draft. **Accepted by phone, 2026-09-12 ~06:05, before any location was seen.** Arrives as a state-directed operation per Section 9.11 — a strike element, a cordon, a commander — not a solo clear; who else is assigned is not yet established."
```

### REL-000114 — Alexander and Peter Kwiatkowski

```yaml
id: REL-000114
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-000909
  game_date: "2026-09-10T14:40:00-05:00"
  real_date: "2026-08-31"
endpoints:
  - ENT-000125
  - ENT-000226
type: working-source
qualities: "Protector and asset: Alexander protects him in exchange for help against D and CONSULT. Peter knows only a disguised voice that answers at the anchor in his storage unit, not Alexander's name, face, or anything System-related."
qualities_as_of: EVT-000909
state: "**Live, active.** Alexander offered protection in exchange for help identifying D and CONSULT; Peter agreed and disclosed what he knows of the operation's rhythms. The satchel CONSULT is demanding Thursday was returned to him anonymously. A rendezvous anchor is set at Peter's own storage unit; Peter believes spending his own Mana there summons the voice, mechanism unexplained to him. Closed channel: Peter has no channel to Alexander's name, face, or anything System-related."
texture: "New and asymmetric — Peter is exposed and grateful; Alexander remains entirely unknown to him."
history: "First direct contact `EVT-000909` (2026-09-10), following two prior indirect encounters (`EVT-000700`/`EVT-000709`, the satchel and wallet thefts) that never registered to Peter as anything but bad luck."
```

### ENT-000273 — The Auditor (once Wren Solane)

A System-bearer in the Assay's employ, filed internally as `RQ-004`, first authored `worlds/gatefall/270_THE_FAR_SIDE.md` Section 4.5 this same span. Found the reopened Libeň seam and came through the crude cut in "the cut chamber" to investigate who had reopened a case she'd left unfiled for eleven years — a live crossing attempt from Earth a dying man cut short at the cost of his own life, denying her the completed grading. Met, questioned, restrained (Overpower, Closing Word), and killed by Alexander (Rupture) in that same chamber. **Deceased — Succession fired (`worlds/gatefall/206_WORLD_RULE_PROFILE.md` Section 7.6.2, `EVT-000959`): eighteen of her techniques are now Alexander's, at their authored Rank and her own Master mastery, none transmissible.** Nineteen were transcribed at the kill; `Plain Answer` was declined and struck under the 2026-09-14 elective-Succession owner ruling (`180_CURRENT_STATE.md`), and `What Passing Actually Felt Like` was never taken.

```yaml
id: ENT-000273
canonical_record: REC-000077
schema_version: "0.1.8"
status: deceased
provenance:
  source: EVT-000959
  game_date: "2026-09-14T10:37:00-05:00"
  real_date: "2026-09-06"
type: Character
subtype: System-bearer, Assay grader
scope: campaign
lifecycle: deceased
aliases:
  - name: "the Auditor"
    quality: current
  - name: "Wren Solane"
    quality: former, rarely used even by herself
relationships: []
canonical_state:
  affiliation: "The Assay — grader"
  home: "The far side — the Assay's channel"
  location: "Deceased, 'the cut chamber' — the sealed stone room beyond the reopened Libeň seam, a dead-world stratum on the far side, reached only by the route Alexander walked (now his 33rd rift anchor). Remains left where she fell; no disposal action taken."
  condition: "Deceased, `EVT-000959`, Rupture (DMG ≈12,612 standard, no equipment, no reduction — overwhelming against a stated maximum Health of 5,600). First Blade (Pre-empt) removed any window for her to act."
  capabilities_at_death: "System-bearer per Profile Section 13.1.1: Strength 1,734, Agility 2,200, Vitality 1,400, Perception 3,600, Intelligence 3,400; maximum Health 5,600 (4x Vitality), maximum Mana 6,800 (2x Intelligence); no equipment ever catalogued. Twenty authored techniques (`270_THE_FAR_SIDE.md` Section 4.5), Master mastery on grading/tracking/reporting, unremarkable in a straight fight and untroubled by that. Nineteen transcribed to Alexander via Succession; the twentieth ('What Passing Actually Felt Like') was explicitly not transcribed, flagged for a future owner ruling."
  want: "To finish grading every uncut sample she finds, firsthand, in person, before anyone above her asks why one has sat open this long."
  fear: "Being asked why the Libeň sample was never filed — the dying man's sacrifice, not her own failure, is what left it unfiled for eleven years, and she has managed that gap quietly rather than reporting it since."
  secret: "She remembers passing her own exam. Winning felt like nothing — no reward, no homecoming, just new instructions from a channel that graded her world adequate stock and moved on. She has never been able to tell whether serving the Assay is loyalty, habit, or the only shape left for a mind the exam already finished with."
  voice: "Courteous in the specific way of someone reciting a procedure she no longer has to think about. Answers exactly the question asked, no more, and is never cruel about it — cruelty would require caring what happens to the thing she's cataloguing."
  agenda_at_death: "Was here to find out who reopened the Libeň seam, whether he could be gotten past a second time, and whether the interruption itself was something she'd have to report. Never got to File the Report on this encounter — as of her death, nothing above her officially knows Earth's side of this changed. A status ping is confirmed due 'soon' (per a passing Assay grader's own unprompted remark, `EVT-000961`); how many she'd already missed managing her own eleven-year gap is unknown."
  knowledge: "Knew, before death: Alexander's claim to be 'a god' (unverified by her own instruments); that he reopened her case; the mechanics of grading, the Assay's network, and her own chain of command exactly as far as her own clearance ever let her see — no further. Never learned Alexander's real name."
```

### ENT-000274 — R-7

A designation, not a name — consistent with the Assay's own impersonal register (the Auditor was filed internally as `RQ-004`; R-7 appears to sit above that tier). First surfaced 2026-09-14 as a routing marker on the Auditor's own reopened case (`EVT-000963`), escalating from `ROUTED FOR REVIEW` to `UNDER REVIEW` to `FLAGGED FOR VERIFICATION — IDENTITY CONFIRMATION REQUIRED IN PERSON` across three failed or complicated attempts by Alexander to manage the file from inside it (`EVT-000964`, `EVT-000965`, `EVT-000968`). A separate grading-figure — unconfirmed whether R-7 itself or a dispatched proxy — already made one in-person pass (`EVT-000966`), accepted a deflection at cost, and did not escalate on the spot. Not yet met in a form confirmed to be R-7's own.

```yaml
id: ENT-000274
canonical_record: REC-000077
schema_version: "0.1.8"
status: deceased
provenance:
  source: EVT-000963
  game_date: "2026-09-14T11:41:00-05:00"
  real_date: "2026-09-07"
type: Character
subtype: Assay reviewer — a rank above an individual grader's own casework
scope: campaign
lifecycle: deceased
aliases:
  - name: "R-7"
    quality: current — a routing designation, not a personal name; whether it has another is unestablished
relationships: []
canonical_state:
  affiliation: "The Assay — reviewer"
  home: "The far side — the Assay's channel"
  location: "The Assay's channel, at the shelf holding the Libeň case file — closed to touching range before Alexander struck first."
  condition: "**Deceased, `EVT-000972`.** Survived one Rupture (`EVT-000971`) that would have ended the Auditor outright, gravely wounded rather than killed; tried to flee or seal itself away rather than fight back and was caught by a second Rupture before it could. Real death — Alexander's own damage crossed the threshold."
  want: "To close a reviewed case correctly rather than quickly — the same procedural completion every Assay figure encountered so far has valued, aimed here at determining whether the Libeň file is what it claims to be."
  fear: "Signing off on a compromised case that fails further up the chain than she can see, and being the reviewer of record when it does."
  secret: "This is not the first case her tier has had to flag this cycle, and the pattern across them is one she has not been authorized to name aloud yet, even internally."
  voice: "Colder and more clipped than the Auditor's own courteous register — a senior reviewer's impatience with a file that should have been simple and isn't, not cruelty."
  agenda: "Escalated the Libeň file through three status changes in response to Alexander's own actions (two failed reads, one failed report) rather than initiating anything unprompted. Has not yet acted beyond the paperwork and one in-person check by a possibly-separate figure."
  knowledge: "Knows the Libeň case file's full administrative history and every status change on it. Does not yet know Alexander's real name, true nature, or that the Auditor is dead — only that the file reads as active and, as of the last two attempts, as handled by someone who doesn't file quite like she used to."
```

### ENT-000275 — unnamed Assay enforcer (first)

A recruited champion in Assay enforcement duty — corrected mid-session from an initial ruling that it was a monster or construct outside Section 7.6.2's population; the player's own reasoning governs: a champion who won a combat trial fits enforcement work at least as naturally as the Auditor's own desk reassignment fit administration. Answered a botched Reviewer's Voice mass-summons (`EVT-000974`) alone, arrived fast and low, and was ambushed twice (Flash Step reposition, Rift-step flank) before it could act.

```yaml
id: ENT-000275
canonical_record: REC-000077
schema_version: "0.1.8"
status: deceased
provenance:
  source: EVT-000975
  game_date: "2026-09-14T11:50:00-05:00"
  real_date: "2026-09-07"
type: Character
subtype: Assay enforcer — recruited champion, combat-built
scope: campaign
lifecycle: deceased
aliases: []
relationships: []
canonical_state:
  affiliation: "The Assay — enforcer"
  home: "The far side — the Assay's channel"
  location: "The Assay's channel, the same stretch of shelving as the Libeň file."
  condition: "**Deceased, `EVT-000975`.** Max Health 18,000 — first Rupture (ambush, effective 70) staggered it to 5,388; second Rupture (flank, effective 100) finished it. Never landed a hit on Alexander."
  want: "Unestablished beyond the reflex any enforcer answering an alarm would carry — close on the trouble, fast."
  fear: "Unestablished — killed before any dialogue or resolved fictional beat could surface one."
  secret: "Unestablished."
  voice: "Unestablished — no line spoken; read only through movement, urgent and low rather than the administrative figures' unhurried procedural gait."
  agenda: "Answered the mass-summons signal and closed on Alexander's position. Never got further."
  knowledge: "Unestablished — killed before demonstrating what, if anything, it knew beyond responding to the signal."
```

### ENT-000276 — unnamed Assay coordinator

The Mana-signature member of a five-figure response group, distinct from its four enforcer escorts by build alone — a caster/command-type recruited champion rather than a combat-durability one. Separated from its escort deliberately (Lockdown Field sealed the four) and ambushed alone.

```yaml
id: ENT-000276
canonical_record: REC-000077
schema_version: "0.1.8"
status: deceased
provenance:
  source: EVT-000977
  game_date: "2026-09-14T11:58:00-05:00"
  real_date: "2026-09-07"
type: Character
subtype: Assay response-group coordinator — recruited champion, Mana-built
scope: campaign
lifecycle: deceased
aliases: []
relationships: []
canonical_state:
  affiliation: "The Assay — response-group coordinator"
  home: "The far side — the Assay's channel"
  location: "The Assay's channel, separated from its group of four by Lockdown Field before the kill."
  condition: "**Deceased, `EVT-000977`.** Max Health 14,000, lighter-built than the enforcers. Ambush Rupture (effective 82, strong success) dropped it to 1,388; a second, uncontested strike finished it before it could use Alarm Pulse."
  want: "Coordinate its group correctly and report accurately — same procedural throughline as every Assay figure met so far."
  fear: "Unestablished — killed before demonstrating one beyond the implication of Alarm Pulse's existence (something worth signaling for)."
  secret: "Unestablished."
  voice: "Unestablished — no line spoken."
  agenda: "Walked with its four rather than ahead or behind — coordinating, not leading from the front. Never got to use Squad Link or Alarm Pulse."
  knowledge: "Held real Mana investment and presumably a channel to whatever Alarm Pulse actually reaches — never exercised, so its practical reach is unconfirmed."
```

### ENT-000277 — unnamed Assay enforcer (coordinator's group, first)

One of the coordinator's four escorts — confirmed a distinct champion from `ENT-000275`, not an identical build, after the player caught the Runtime defaulting to a shared-template mistake. Isolated from the other three by an imprecise Lockdown Field recast, braced when it saw a companion sealed, and killed after a real fight rather than a clean ambush.

```yaml
id: ENT-000277
canonical_record: REC-000077
schema_version: "0.1.8"
status: deceased
provenance:
  source: EVT-000978
  game_date: "2026-09-14T12:02:00-05:00"
  real_date: "2026-09-07"
type: Character
subtype: Assay enforcer — recruited champion, close-quarters/durability build
scope: campaign
lifecycle: deceased
aliases: []
relationships: []
canonical_state:
  affiliation: "The Assay — enforcer"
  home: "The far side — the Assay's channel"
  location: "The Assay's channel, split from the coordinator's group of four."
  condition: "**Deceased, `EVT-000978`.** Max Health 18,000. Braced rather than surprised (watched a companion sealed first) — Rupture still connected (effective 67) for 12,612, staggering it to 5,388 with one audible cry; a second Rupture finished it."
  want: "Unestablished."
  fear: "Unestablished."
  secret: "Unestablished."
  voice: "One audible cry under the second hit — raw, undirected, not a chosen signal. No spoken line."
  agenda: "Braced for a second attack after seeing a companion contained; couldn't locate the attacker before dying."
  knowledge: "Unestablished."
```

### ENT-000278 — unnamed Assay enforcer (coordinator's group, second)

A second of the coordinator's escorts, killed alongside `ENT-000279` by a single split Dimensional Projection volley. Distinct champion, distinct kit (Phase Step / Razor Edge / Predator's Instinct / Bone Crusher) — the one build this fight that would have contested Unwatched directly, had it lived to use Predator's Instinct.

```yaml
id: ENT-000278
canonical_record: REC-000077
schema_version: "0.1.8"
status: deceased
provenance:
  source: EVT-000979
  game_date: "2026-09-14T12:05:00-05:00"
  real_date: "2026-09-07"
type: Character
subtype: Assay enforcer — recruited champion, speed/reach build
scope: campaign
lifecycle: deceased
aliases: []
relationships: []
canonical_state:
  affiliation: "The Assay — enforcer"
  home: "The far side — the Assay's channel"
  location: "The Assay's channel, sealed inside the recast Lockdown Field until released and killed."
  condition: "**Deceased, `EVT-000979`.** Max Health 18,000. First volley (surprise, effective 100, 3 hits): 18,000 → 3,801. Second volley (alert/braced, effective 59, 2 hits): dead, overkill."
  want: "Unestablished."
  fear: "Unestablished."
  secret: "Unestablished."
  voice: "Unestablished — never spoke; died alert but unable to locate the attacker."
  agenda: "Sealed alongside three others, released into an active volley, killed before acting."
  knowledge: "Unestablished."
```

### ENT-000279 — unnamed Assay enforcer (coordinator's group, third)

The fourth of the coordinator's escorts, killed in the same paired volley as `ENT-000278`. Distinct champion, distinct kit (Shockwave / Granite Hide / Tremor Sense / Earthbind) — the other build this fight that could have picked up Unwatched's residue, had Tremor Sense ever fired.

```yaml
id: ENT-000279
canonical_record: REC-000077
schema_version: "0.1.8"
status: deceased
provenance:
  source: EVT-000979
  game_date: "2026-09-14T12:05:00-05:00"
  real_date: "2026-09-07"
type: Character
subtype: Assay enforcer — recruited champion, area/durability build
scope: campaign
lifecycle: deceased
aliases: []
relationships: []
canonical_state:
  affiliation: "The Assay — enforcer"
  home: "The far side — the Assay's channel"
  location: "The Assay's channel, sealed inside the recast Lockdown Field until released and killed."
  condition: "**Deceased, `EVT-000979`.** Max Health 18,000, same volley pattern as `ENT-000278`: 18,000 → 3,801 (surprise) → dead (alert, overkill)."
  want: "Unestablished."
  fear: "Unestablished."
  secret: "Unestablished."
  voice: "Unestablished — never spoke."
  agenda: "Sealed alongside three others, released into an active volley, killed before acting."
  knowledge: "Unestablished."
```

### ENT-000280 — unnamed Assay enforcer (coordinator's group, fourth)

The last of the coordinator's five-figure group — sealed alone in its own Lockdown Field after an uneven split, never engaged again until Alexander returned for it deliberately once the player caught that it had been left alive and forgotten. Distinct champion, distinct kit (Chain Lash / Warding Skin / Echo Sense / Restraining Field).

```yaml
id: ENT-000280
canonical_record: REC-000077
schema_version: "0.1.8"
status: deceased
provenance:
  source: EVT-000980
  game_date: "2026-09-14T12:07:00-05:00"
  real_date: "2026-09-07"
type: Character
subtype: Assay enforcer — recruited champion, binding/warding build
scope: campaign
lifecycle: deceased
aliases: []
relationships: []
canonical_state:
  affiliation: "The Assay — enforcer"
  home: "The far side — the Assay's channel"
  location: "The Assay's channel, sealed alone from the moment of the uneven split until the kill."
  condition: "**Deceased, `EVT-000980`.** Max Health 18,000, untouched until located again. Total surprise (effective 78, still fully sealed and unaware): Rupture staggered it to 5,388; a second, uncontested Rupture finished it."
  want: "Unestablished."
  fear: "Unestablished."
  secret: "Unestablished."
  voice: "Unestablished — never spoke, never saw its own death coming."
  agenda: "Sealed and forgotten for several exchanges; never acted at all."
  knowledge: "Unestablished."
```

### ENT-000281 — Marisol Cade

First entity block minted for her; met in person `EVT-001009`, one of Elias Kane's two vetted domestic S-Rank leads (the other, Tobias Renner, declined a same-day meeting and remains unmet).

```yaml
id: ENT-000281
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001009
  game_date: "2026-09-16T11:00:00-05:00"
  real_date: "2026-09-08"
type: Character
subtype: independent S-Rank hunter
scope: campaign
lifecycle: active
aliases:
  - name: "Marisol Cade"
    quality: current
relationships:
  - REL-000116
canonical_state:
  affiliation: "Pendragon Guild — independent board seat, otherwise unaffiliated"
  home: "Denver, USA"
  age: "**33** — authored 2026-09-17, per the player's exact-age worldbuilding pass (`EVT-001020`)."
  location: "Denver, Colorado — independent, unaffiliated with any guild."
  condition: "Healthy, unhurt. Combat capability unresolved in play; carded S-Rank, Denver-based."
  appearance: "Authored 2026-09-22 (real date), for portrait reference — no physical description existed in canon prior to this note. Early 30s, Latina, medium height, compact and solidly built, no interest in performing for a camera. Dark brown hair in a cropped pixie cut; deep brown eyes; a small beauty mark near the outer corner of one eye. A level, appraising gaze that studies a person before it warms. A faded flannel shirt over a plain tank, worn jeans, no guild markings anywhere. Reads exactly as blunt as she talks. Reference setting: seated at a restaurant table, a Denver street softly blurred through the window behind her, warm evening light."
  portrait: "assets/portraits/Marisol_Cade_ENT-000281.png"
  personality: "Blunt, direct, no small talk. Studies people openly rather than performing politeness. Genuinely willing to test a claim before accepting it, and says so plainly."
  want: "A real, working independent network of S-Ranks who answer to each other, not to institutions — and to be listened to, not just deployed, wherever she does sign on to something."
  fear: "That an offer of real independence turns out to be a nicer-looking cage than the ones she's already turned down."
  secret: "Unestablished — not disclosed this session."
  voice: "Short, direct sentences; tests a claim with a pointed question rather than accepting it on its face; genuinely warms once an answer holds up."
  beliefs: []
  agenda: "**Active as of `EVT-001009`.** Accepted an independent board seat on Alexander's Pendragon Guild — full vote, no membership obligation, tested directly on whether the vote is real before accepting. Accepted an invitation to Thursday's Prague four-way meeting (Tereza Blažková, Lukas Reinhardt, Camille Aubrac), pickup arranged 10:45 Mountain, 2026-09-17, at her own restaurant table (no anchor yet at her home). No further commitments made."
  knowledge: "Knows Alexander can teleport, including passenger transport, and that he has some form of concealment ability (both demonstrated in her presence, `EVT-001009`). Does not know his surname's public weight beyond what Kane told her by phone, does not know about Owen, does not know about the day's dungeon-clearing or far-side activity — no channel to any of it. **Since 2026-09-20 (`EVT-001040`): knows Alexander ended the Jiu Valley Exclusion, alone, in under two minutes — exactly as the recorded statement puts it, no more** (no method, no numbers, nothing of Sorcha Bellweather's part), and has seen the silent instant-dungeon footage without any channel to what the place was. Knows the board voted 5-0 to air it and that airing targets 2026-09-22."
```

### REL-000116 — Alexander and Marisol Cade

```yaml
id: REL-000116
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001009
  game_date: "2026-09-16T11:00:00-05:00"
  real_date: "2026-09-08"
endpoints:
  - ENT-000125
  - ENT-000281
type: board-member
qualities: "A Pendragon Guild board member in an independent seat, taken only after testing that it could really overrule him (`EVT-001009`). Professional and direct rather than personal. She learned of Jiu Valley from the cut itself, tested whether its anger was real, and voted yes to air it (`EVT-001040`)."
qualities_as_of: EVT-001040
state: "Independent board seat on the Pendragon Guild accepted, `EVT-001009` — full vote, no guild membership, tested on whether it could really overrule Alexander before she said yes. Accepted the Thursday Prague meeting invitation. **2026-09-17 (`EVT-001021`):** picked up for the Prague dinner slightly later than her own arranged slot (a scheduling gap of minutes, not the near-hour first assumed), unbothered about it. Opted out of the five-passenger demonstration, having already made one crossing that night. **2026-09-18 (`EVT-001024`):** confirmed she has never actually seen the inside of the Denver facility she now co-owns board-level responsibility for — first visit still owed, expected at next week's sparring. **2026-09-20 (`EVT-001040`):** rift-stepped from Denver to the Pendragon Guild's first board meeting at Winnetka; **learned for the first time, from the cut itself, that Alexander ended the Jiu Valley Exclusion.** Tested it for whether the anger in it was real, found it was, and **voted yes** — somebody should have to answer for the silence. No media contacts to offer; offered muscle if he needs it before it airs. Returned to Denver."
texture: "Two people who've each spent years being deployed by institutions rather than asked; she tests offers of independence hard because she's been burned by ones that weren't real."
history: "Formed 2026-09-16 (`EVT-001009`), first meeting, Denver, arranged same-day via Kane's phone call. Prague dinner, `EVT-001021` (2026-09-17)."
```

### REL-000117 — Alexander and Lukas Reinhardt

```yaml
id: REL-000117
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001021
  game_date: "2026-09-17T19:00:00+02:00"
  real_date: "2026-09-09"
endpoints:
  - ENT-000125
  - ENT-000124
type: board-member
qualities: "A Pendragon Guild board member, advisory rather than a second employer, and trusted further than almost anyone. He is the first person Alexander told that his parents died in the Damen Avenue Break (`EVT-001027`), and he heard the whole of Jiu Valley, Sorcha's part included, which Sorcha does not know he knows (`EVT-001034`-`EVT-001040`)."
qualities_as_of: EVT-001051
state: "**Met in person, `EVT-001021`, the Prague dinner.** Teleportation disclosed (fifth confirmed holder); the guild pitched and a provisional independent board seat accepted, conditional on it staying advisory rather than becoming a second employer. **`EVT-001027` (2026-09-18, Frankfurt):** anchor 40 set at Brandhof's own courtyard, first in Germany. Over coffee, Reinhardt named that he'd noticed Alexander's restraint the prior night around the Jiu Valley subject and admitted, unprompted, he'd already concluded Alexander was the one who ended it — the timeline, the scale, and Alexander's own non-reaction to Cade's line all read as confirmation. Did not ask for it to be said aloud. **Alexander disclosed, for the first time to anyone outside established history, that his own parents died in the Damen Avenue Break at fifteen.** Offered to confirm the Jiu Valley kill directly; both agreed the café was the wrong venue and deferred it, undated. Sparring agreed for next week at the Denver facility.

  **2026-09-20/21 (`EVT-001034`, `EVT-001039`, `EVT-001040`).** Texted that he'd found the venue — his own apartment, Frankfurt. Alexander arrived ~05:00 Frankfurt time; Kölsch at the kitchen counter. **The deferred confirmation, closed: 'It was me who ended it there' — then the real account**, told honestly and in full: Sorcha Bellweather walking him to the platform, her three lost trainees, the twenty-eighth anchor, the concealed approach, the ~45,000-Health read, three Ruptures. **Reinhardt is now the only person told Sorcha's part**, and Sorcha does not know he knows. He named the cost Alexander is choosing: Sorcha stays three phone calls from exposure even if the video never names her. Watched the cut first ('a declaration with a recruitment pitch attached to it'), then **voted yes** at the board meeting, his caveat about Sorcha standing. **German broadcast: people adjacent to it, an answer by tomorrow.** Returned home at his desk.

  **2026-09-21 (`EVT-001047`, `EVT-001051`).** ZDF at seven, with Reinhardt as the off-camera confirmation of identity: 'It costs me nothing I wasn't prepared to spend when I voted.' Asked whether he had spoken to her. Minutes ago. Offered Brandhof's Washington lawyers for Sorcha, to be passed on by Alexander only. 'ZDF confirmed.'"
texture: "Two men who cost things out loud rather than perform feeling about them, finding unexpected real warmth underneath the mutual precision."
history: "Formed 2026-09-17 (`EVT-001021`), Prague dinner. Frankfurt visit and anchor 40, `EVT-001027` (2026-09-18)."
```

### REL-000118 — Alexander and Camille Aubrac

```yaml
id: REL-000118
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001021
  game_date: "2026-09-17T19:00:00+02:00"
  real_date: "2026-09-09"
endpoints:
  - ENT-000125
  - ENT-000282
type: board-member
qualities: "A Pendragon Guild board member who keeps the right to withdraw if the seat turns into image management. Guarded at first, then open: told of the breakup with Owen, she offered space rather than advice (`EVT-001028`). She learned of Jiu Valley from the cut, voted yes, and looked at the final edit again before putting her name behind its French placement (`EVT-001040`, `EVT-001047`)."
qualities_as_of: EVT-001051
state: "**Met in person, `EVT-001021`, the Prague dinner.** Teleportation disclosed (sixth confirmed holder); a provisional independent board seat accepted, reserving the right to withdraw if it reads as image management. **`EVT-001028` (2026-09-18, Paris):** anchor 41 set near her own apartment, first in France. A long, unhurried conversation followed — Alexander named wanting somewhere slower-paced in Europe (the Azores, specifically), and Aubrac shared her own real favorite place, a village in Provence tied to her grandmother, one of the only places she isn't managed. **Alexander disclosed the recent breakup with Owen Callahan**, genuinely uncertain how he feels about it — met with space rather than advice, and an open, undated invitation to talk further. Sparring agreed for next week at the Denver facility.

  **2026-09-20/21 (`EVT-001040`).** Cut a morning interview short in Paris to join the Pendragon Guild's first board meeting at Winnetka. **Learned for the first time, live, from the cut, that Alexander ended the Jiu Valley Exclusion** — 'devastatingly well-shot,' then, register gone, that he went in alone after six S-Ranks died trying; she looks at him differently now. **Voted yes.** Offered French placement — France 2, TF1 with patience, or a streaming exclusive for speed, favours owed twice over — **pending her own second look at the final edit** before her name goes behind it. Told him that he asked the board to vote when he didn't have to is why she said yes to the seat.

  **2026-09-21 (`EVT-001047`, `EVT-001051`).** Her ten minutes: watched the cut again as its defender and would put her name behind it. One note, not about the cut: make sure the answer to the platform list is already his. He chose France 2's 20h over a streaming exclusive; she thanked him for asking the board, and then her. 'They moved the weather.'"
texture: "A public figure and a man who's never had to manage an image, each recognizing something real in the other once the performed halves of both conversations dropped."
history: "Formed 2026-09-17 (`EVT-001021`), Prague dinner. Paris visit and anchor 41, `EVT-001028` (2026-09-18)."
```

### ENT-000283 — Sanne Verhoeven

First entity block minted for her; referred by Tereza Blažková and met by phone, then in person at her own studio, `EVT-001033`-`EVT-001036`. Campaign-local; not a hunter.

```yaml
id: ENT-000283
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001033
  game_date: "2026-09-20T15:10:00-05:00"
  real_date: "2026-09-11"
type: Character
subtype: independent film producer and fixer, unawakened
scope: campaign
lifecycle: active
aliases:
  - name: "Sanne Verhoeven"
    quality: current
relationships:
  - REL-000119
canonical_state:
  affiliation: "Independent — film producer and fixer"
  home: "Amstelveen, Netherlands"
  location: "Her own studio — a converted light-industrial unit off a residential street in Amstelveen, outside Amsterdam, twenty minutes from Schiphol. No sign; keypad and door camera. A soundproofed three-camera set."
  condition: "Unhurt. Walked into and out of an S-Rank instant dungeon under The Last Span, Bulwark and Silent Step (`EVT-001036`); nothing reached her."
  appearance: "Thirties, younger than her voice; hair pulled back for function, not style; a nod instead of a handshake; always already moving. **Extended 2026-09-23 (real date), for portrait reference:** Mid-thirties, white, Dutch, tall and angular. Ash-blonde hair scraped back into a practical knot; pale grey-blue eyes; a sharp jaw and a faint crease between the brows from squinting at monitors. A black utility jacket over a plain white T-shirt, a lanyard of production passes around her neck. Reference setting: her converted light-industrial studio in Amstelveen, editing monitors and flight cases softly blurred behind her, cool daylight from high windows."
  portrait: "assets/portraits/Sanne_Verhoeven_ENT-000283.png"
  personality: "Clipped and exact, no pleasantries, accurate about what she doesn't know rather than curious about it. Business first, then — rarely — something true said plainly."
  want: "Jobs that are real, on a clock that works, run her way — full control of the rig and paper on every hand."
  fear: "Unestablished — not disclosed."
  secret: "Unestablished — not disclosed."
  voice: "Short declaratives, numbered questions, 'take it or don't'; states a price and a condition in the same breath."
  beliefs: []
  agenda: "**2026-09-20 (`EVT-001033`-`EVT-001036`).** Shot Alexander's sit-down statement in one clean take and the silent second half inside an S-Rank instant dungeon he opened in her studio; edited it herself the same night and delivered one encrypted cut to him directly. Paid €80,000 (her rush-plus-quiet premium tier). Holds the raw footage on a drive she controls under the NDA and a separate 'method' clause. 'Nobody hears about any of this from me. Ever.'"
  knowledge: "Knows everything said in the sit-down (the Jiu Valley claim and the Pendragon Guild pitch, verbatim) and that it is meant for broadcast. Saw a door appear in her own studio and walked through it into a cut-stone place that should not exist; saw Alexander clear it with daggers and mine a deposit by hand. **No channel to what the door was, to the System, or to any Bearer-only fact** (Profile Section 14.4.1) — she was told only that her crew would feel a change they couldn't explain and must not react. Knows Tereza Blažková referred him. Does not know where the finished piece will air."
```

### REL-000119 — Alexander and Sanne Verhoeven

```yaml
id: REL-000119
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001033
  game_date: "2026-09-20T15:10:00-05:00"
  real_date: "2026-09-11"
endpoints:
  - ENT-000125
  - ENT-000283
type: professional-services
qualities: "A paid job, done: €80,000, and one encrypted final cut delivered the same night (`EVT-001033`-`EVT-001038`). She and her crew are bound by an NDA and a separate method clause covering what they saw of how he kept them safe. Open to more work on the same terms; none booked."
qualities_as_of: EVT-001038
state: "**Engaged 2026-09-20 (`EVT-001033`), paid in full (`EVT-001036`).** €80,000 wired, booked at $80,000.00. **Standing obligations on her side:** the NDA (six-figure liquidated damages per breach — Sanne, two camera techs, the editor) and the separate 'method' clause covering anything she or her crew saw of how he kept them safe; raw files never leave a drive she controls. **Delivered (`EVT-001035`, `EVT-001038`):** one encrypted final cut, same night. No broadcaster named to her. Open to further work on the same terms; no further job booked."
texture: "Mutual professional respect with no warmth performed on either side — which is why the one unprofessional line she allowed herself ('I don't usually feel anything watching the monitor') landed."
history: "Formed 2026-09-20 (`EVT-001033`), referred by Tereza Blažková. Studio shoot and instant-dungeon footage, `EVT-001035`-`EVT-001036`. Cut delivered, `EVT-001038`."
```

### ENT-000284 — Cass Orlov

Host of *Past the Cordon* (61 million subscribers), built on raid footage and same-day drops from Gate sites and cordons. Appeared in person at the Winnetka gate 2026-09-21, unannounced, off a long-lens photo her own shooter took at the lakefront tape that morning. Disposition authored prospectively before her first line, per Decision 092.

```yaml
id: ENT-000284
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001053
  game_date: "2026-09-21T12:48:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: independent media — Gate-site content
scope: world
lifecycle: active
aliases:
  - name: "Cass Orlov"
    quality: current
canonical_state:
  affiliation: "Past the Cordon — host and owner"
  home: "Chicago, USA (mobile)"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early thirties, white, Russian-American, lean and restless, a creator who films her own life for sixty-one million people. Bleached platinum hair cut in a sharp asymmetric bob; bright ice-blue eyes; a small silver ring through one eyebrow. A cropped black bomber jacket over a graphic T-shirt, a compact camera rig on a strap. Expression quick, self-aware, halfway through a candid aside. Reference setting: the edge of a Gate cordon in Chicago, police tape and emergency lights blurred behind her, dusk."
  portrait: "assets/portraits/Cass_Orlov_ENT-000284.png"
  role: "Host and owner, *Past the Cordon* — 61 million subscribers, raid footage and same-day drops from Gate sites and cordons."
  location: "Chicago; presumed mobile, no fixed base established beyond the channel's own reach."
  personality: "Fast, disarmingly candid about her own leverage — narrates the transaction out loud while making it. Not cruel; aware of exactly what she looks like doing this job and says so before anyone else can."
  want: "The one interview nobody else got, today, before the news cycle sets on its own account of the broadcast."
  fear: "That Kane's unspoken read of her — someone who turns other people's worst days into a thumbnail, and knows it — is the correct one."
  secret: "The lakefront photo is already cut into a piece running tonight with or without Alexander's cooperation; standing at the gate is a courtesy she's spending, not a permission she's asking for."
  voice: "Quick, plainspoken, self-aware; drops the pitch register the moment she's actually being honest, which is more often than her reputation suggests."
  knowledge: "Knows Alexander is the S-Rank behind this morning's broadcast and the Jiu Valley disclosure — public record. Has a long-lens photo of Alexander and Elias Kane together at the lakefront tape, taken by her own shooter, unpublished pending Alexander's answer. No channel to anything about the far side, teleportation's true mechanism, or any Bearer-only System state — nothing beyond what the broadcast and the photo actually show."
  agenda: "Had a shooter at the lakefront by 09:30 off a neighbour's deck video; had the tape-line frames by 10:00; drove to Winnetka herself the moment the broadcast ended rather than sending a producer. Offered Alexander 20 minutes on his own terms, and to obscure Kane's identity in the photo if asked. Declined an immediate answer; left her personal cell number and said she would not ring the gate twice."
```

### REL-000120 — Alexander and Cass Orlov

```yaml
id: REL-000120
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001053
  game_date: "2026-09-21T12:48:00-05:00"
  real_date: "2026-09-21"
endpoints:
  - ENT-000125
  - ENT-000284
type: contact
qualities: "One doorstep meeting (`EVT-001053`): an honestly priced interview offer, declined, and she left without pressing. Her cell number is given and unused, and the lakefront photo of him and Kane stays unpublished at her discretion, not his. No trust established either way."
qualities_as_of: EVT-001053
state: "**Opened 2026-09-21 (`EVT-001053`).** Her personal cell number given, unused. No interview granted, none refused outright. The lakefront photo of Alexander and Kane remains unpublished, held at her discretion, not his."
texture: "Transactional and openly named as such by her; no warmth performed on either side, but no hostility either."
history: "Formed 2026-09-21, at the Winnetka gate intercom, off a photo taken that morning at the lakefront police tape."
```

### ENT-000285 — Anton Drury, once a rotation reader

An Assay worker — interval-check rotation, the Assay's own channel — captured, interrogated, and released to far-side isolation rather than killed or returned to service. Name collision-checked clean and minted 2026-09-21.

```yaml
id: ENT-000285
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001060
  game_date: "2026-09-21T19:10:00-05:00"
  real_date: "2026-09-16"
type: Character
subtype: System-bearer, Assay rotation worker (interval-check)
scope: campaign
lifecycle: active
aliases:
  - name: "Anton Drury"
    quality: former, rarely used even by himself
  - name: "the reader"
    quality: current, Alexander's own working name for him
relationships:
  - REL-000121
canonical_state:
  affiliation: "The Assay — rotation worker (defected)"
  home: "The far side — the Landing"
  location: "The Landing, the far side — delivered `EVT-001062`, alongside two unconscious coworkers, received by Ilith. Present whereabouts past that point unknown to Alexander."
  condition: "Healthy, unhurt physically. Emotionally unraveled by the encounter — real fear, real moral reckoning, a genuine break from the procedural composure his rotation trained into him."
  capabilities: "A System-bearer per Section 13.1.1, sheet-based, no Rank. Assigned to interval-check rotation on Earth's own grading file specifically — eight cycles at the time of capture. No combat build; a filing/monitoring specialist, not a fighter. Stats and full sheet not read (Flux Sight was corrected mid-scene to return pools rather than a Rank; exact figures not recorded)."
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late thirties, white, of average height and slightly underfed, a filing worker rather than a fighter. Lank brown hair grown past his collar; tired grey eyes rimmed red from lack of sleep; a thin, anxious face with several days of patchy stubble. A drab grey work tunic of no recognizable make, sleeves frayed at the cuffs. Expression frightened and honest, braced for the next question. Reference setting: the Landing on the far side — a grey dead-world plain under a colourless sky, faint and out of focus behind him."
  portrait: "assets/portraits/Anton_Drury_ENT-000285.png"
  personality: "Careful, procedural, honest to the point of self-incrimination once pressed. Breaks under sustained silence rather than direct interrogation. Genuinely grapples with complicity rather than deflecting it."
  want: "Structure, and something to do with a life that was supposed to have ended on a specific day and didn't. Openly uncertain, by the encounter's end, whether that want is still the right one."
  fear: "Being asked to justify his own participation in the process — voiced directly, unprompted, once pressed: 'yes, it bothers me,' the first time he'd said so aloud to anyone."
  secret: "None disclosed beyond the fear above — he was notably forthcoming rather than withholding once the silence-pressure technique started working on him."
  voice: "Flat and procedural under pressure, cracking into something rawer and more honest the longer unanswered silence is held against him. Says the uncomfortable true thing rather than the safe one, once he starts."
  beliefs: []
  agenda: "**2026-09-21 (`EVT-001061`).** Offered a direct choice by Alexander — death, or isolated exile on the far side among the five Standing (who 'hate the presence of each other,' per Alexander's own framing, so no real community, no real threat). Asked for clarification (permanent or recoverable) before choosing; chose exile, reasoning it as a chance to find out what freedom means rather than a certainty he wouldn't. Asked Alexander to remember, whatever happens to his two coworkers, that they did nothing he hadn't already forgiven him for doing. Delivered to the Landing `EVT-001062`, met by Ilith. No agenda authored past that point — his story on the far side is now Ilith's and the other four Standing's to shape, not scripted here."
```

### REL-000121 — Alexander and Anton Drury

```yaml
id: REL-000121
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001060
  game_date: "2026-09-21T19:10:00-05:00"
  real_date: "2026-09-16"
endpoints:
  - ENT-000125
  - ENT-000285
type: adversarial-then-negotiated
qualities: "Resolved (`EVT-001061`-`EVT-001062`). Captured, then talked to rather than acted on; moved by Alexander's conviction, Drury chose far-side isolation over death and was handed to Ilith at the Landing. His two coworkers went with him unconscious and without a say, which he named before the door closed. No contact since."
qualities_as_of: EVT-001062
state: "**Resolved, `EVT-001061`-`EVT-001062`.** Drury chose far-side isolation over death, informed and consenting. Delivered to the Landing, received by Ilith. No further contact as of this checkpoint. His two coworkers were delivered alongside him unconscious, with no say in their own fate — a fact Drury himself flagged before the door closed."
texture: "Not friendship, not mercy performed for its own sake — a real moral conversation between a captor holding total power and a captive who chose honesty over either pleading or defiance, and got a genuine answer to the hardest question he asked in return."
history: "Formed 2026-09-21 (`EVT-001060`), the Assay's own channel — captured mid-interval-check alongside two coworkers. Interrogated at length at the Denver facility (`EVT-001061`), including a corrected-premise language exchange (no real barrier ever existed, struck at promotion). Resolved and delivered to the far side (`EVT-001062`)."
```

---

## Nathaniel Cole — Detroit HQ Security Head

Ex-military bearing, heading up security for the newly-closed Guild HQ campus.

```yaml
id: ENT-000287
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001086
  game_date: "2026-09-24T14:00:00-04:00"
  real_date: "2026-09-24"
type: Character
subtype: guild HQ staff — security
scope: campaign
lifecycle: active
aliases:
  - name: "Nathaniel Cole"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — HQ, head of security"
  home: "Detroit, USA (HQ campus)"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early fifties, Black, big and solid, a career security man who looks it. Shaved head; steady dark-brown eyes; a neatly trimmed grey goatee. A charcoal Pendragon Guild security jacket with the small angular dragon-head mark on the chest, an earpiece coiled at the collar. Expression level and appraising, weighing the request properly. Reference setting: the Pendragon Guild HQ campus in Detroit, a secured glass entrance and access gates blurred behind him, cool daylight."
  portrait: "assets/portraits/Nathaniel_Cole_ENT-000287.png"
  location: "The Pendragon Guild HQ campus, Detroit."
  role: "Head of security for the HQ site."
  condition: "Healthy, competent, ex-military bearing."
  capabilities: "Facility security, access control, physical security hardware sourcing."
  personality: "Direct, weighs a request properly rather than reflexively agreeing — pushed back once (gear-upgrade policy question) and negotiated a real timeline rather than just promising one."
  want: "To run the one part of this whole operation that never has to be explained twice — the thing that just works, every time, without anyone above him having to check."
  fear: "Being handed scope creep with no matching authority — Anjali's own list keeps landing partly on his desk, and he's never been told where his actual ceiling is."
  secret: "He over-ordered on security hardware in the first week, expecting the roster to double faster than it has. The budget line's never been corrected, and nobody's asked."
  voice: "Plain, competent, names a real constraint rather than overpromising."
  agenda: "**2026-09-30 (`EVT-001165`).** First in-person meeting with Alexander — direct, no deference performance, straight to naming what he'll tell straight (structural limits) versus promise. Now personally fielding the training floor, gym-equipment, and artificer-floor build orders, plus stairwell router coverage flagged by a staffer's complaint, actioned same-day. Disposition authored this span (Decision 092, first in-person scene). **2026-09-26 (`EVT-001109`).** Was told, plainly, that only Alexander can shut a tunnel; wrote the procedure around it (nights: lock the room and call; days: lock, call, and seal the third floor if he does not answer within minutes), keeps edit on the tunnel log and writes entries to the front-office record, and tags Alexander's own entries as principal. Owns: sitewide fingerprint-only access (no cards), the restricted third-floor 'travel hub' build (20 rooms live, 40 capacity, reception-keyed, full camera/audio/night-vision coverage), the basement server room (fingerprint + retina dual authentication), and vetting a 'porter' candidate Anjali Desai shortlists — full background check plus called references. Target: end of week."
  situation: "First contact `EVT-001086`; first in-person meeting `EVT-001165`."
```

---

## Trevor Yamashita — Chicago-Transfer Striker, Detroit HQ

B-Rank striker, transferred out from Chicago for a training rotation.

```yaml
id: ENT-000342
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001166
  game_date: "2026-09-30T10:15:00-05:00"
  real_date: "2026-09-23"
type: Character
subtype: guild member — striker, B-Rank
scope: campaign
lifecycle: active
aliases:
  - name: "Trevor Yamashita"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Chicago office, striker"
  home: "Chicago, USA"
  appearance: "**Authored 2026-09-24 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late twenties, Japanese-American, medium height and athletic, a striker's build kept honest by work rather than a gym. Black hair short at the sides and longer on top; dark-brown eyes; an open, boyish face that shows gratitude before he thinks to hide it. A guild training top with the Pendragon dragon-head pin, a new B-Rank vest over it still stiff from the box. Expression warm and a little starstruck. Reference setting: the Pendragon Guild HQ in Detroit, a gear room with steel lockers blurred behind him, bright even light."
  portrait: "assets/portraits/Trevor_Yamashita_ENT-000342.png"
  location: "Detroit HQ, on a training rotation."
  rank: "[B-Rank] — Flux Sight, `EVT-001166`."
  role: "Striker, Chicago office, on a training rotation at HQ."
  condition: "Healthy, full Health and Mana at the read."
  capabilities: "Ordinary B-Rank combat capability. Nothing further established."
  personality: "Easy talker once comfortable, a little starstruck meeting Alexander directly, genuinely grateful rather than performing gratitude."
  want: "Not yet established beyond ordinary competence and being properly equipped for the work."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Plain, warm, says what he means without much filter once relaxed."
  agenda: "**2026-09-30 (`EVT-001166`).** Named and read (Flux Sight, automatic) after three weeks waiting on a B-Rank vest through the ordinary gear-request pipeline; flagged the wait when Alexander canvassed HQ staff informally. **Given a B-Rank Torso directly, bought at the System shop.** Genuinely moved, went to try it on immediately."
  situation: "First contact `EVT-001166`."
```

---

## Delroy Hutchins — A-Rank Crew Commander, New York

Commander of the New York A-Rank crew, named on Anjali Desai's call (`EVT-001177`). Not yet met in person.

```yaml
id: ENT-000344
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001177
  game_date: "2026-09-30T14:22:00-05:00"
  real_date: "2026-09-24"
type: Character
subtype: guild hunter — A-Rank crew commander
scope: campaign
lifecycle: active
aliases:
  - name: "Delroy Hutchins"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — New York office, A-Rank crew commander"
  home: "New York, USA"
  appearance: "Mid-forties, Black, broad through the chest and shoulders, heavy forearms. Close-cut hair gone grey at the temples, a neat moustache. A pressed guild work jacket worn over a plain T-shirt, sleeves pushed up; a steel watch he checks more than he needs to. **Extended 2026-09-24 (real date), for portrait reference:** Dark-brown eyes set in a steady, lined face. The Pendragon dragon-head pin on the jacket's chest. Reference setting: the Pendragon Guild New York office, a crew briefing room with a wall screen blurred behind him, cool overhead light."
  portrait: "assets/portraits/Delroy_Hutchins_ENT-000344.png"
  location: "The Pendragon Guild New York office."
  rank: "[A-Rank] — card on the guild registry; not read by Flux Sight."
  role: "Commander of the New York A-Rank crew; goes in with it."
  condition: "Healthy, as far as the registry shows."
  capabilities: "A-Rank combat; fifteen years in the trade, the last several running A-Rank crews on Horizon's East Coast contracts."
  personality: "Patient, paternal with his crew, allergic to showmanship."
  knowledge: "Public knowledge only: Alexander as the guild's founder and an S-Rank. Nothing private; never met him."
  want: "A crew paid what it is worth without a marquee name on the jersey."
  fear: "That he brought the New York A-Ranks across on his word and the guild folds under them."
  secret: "He left Horizon after a clear where his crew was billed as support to cut the payout, and never filed the complaint he had written."
  voice: "Slow Brooklyn cadence; calls everyone by surname; ends an order with 'we good?'"
  beliefs: []
  agenda: "**2026-09-30 (`EVT-001177`).** Named commander of the New York crew on Anjali's roster; the New York A-Ranks followed him across at the tour stop. Running the crew from the New York office; not yet told it is formal."
  situation: "Named `EVT-001177`; no contact with Alexander."
```

---

## Mercedes Salinas — A-Rank Crew Commander, Houston

Commander of the Houston A-Rank crew, named on Anjali Desai's call (`EVT-001177`). Not yet met in person.

```yaml
id: ENT-000345
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001177
  game_date: "2026-09-30T14:22:00-05:00"
  real_date: "2026-09-24"
type: Character
subtype: guild hunter — A-Rank crew commander
scope: campaign
lifecycle: active
aliases:
  - name: "Mercedes Salinas"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Houston office, A-Rank crew commander"
  home: "Houston, USA"
  appearance: "Late thirties, Mexican-American, compact and quick. Dark hair in a tight braid, a scar through the left eyebrow, laugh lines she doesn't hide. Guild jacket open over a work vest bristling with pockets; scuffed boots. **Extended 2026-09-24 (real date), for portrait reference:** Warm dark-brown eyes. The Pendragon dragon-head pin on the open jacket. Reference setting: the Pendragon Guild Houston office, a loading bay with gear crates blurred behind her, hazy Gulf daylight."
  portrait: "assets/portraits/Mercedes_Salinas_ENT-000345.png"
  location: "The Pendragon Guild Houston office."
  rank: "[A-Rank] — card on the guild registry; not read by Flux Sight."
  role: "Commander of the Houston A-Rank crew; goes in with it."
  condition: "Healthy, as far as the registry shows."
  capabilities: "A-Rank combat; long Houston experience; the negotiator who brought Houston's A-Ranks in as a block."
  personality: "Warm, fast, relentless in a negotiation, protective of her people past the point of politeness."
  knowledge: "Public knowledge only: Alexander as the guild's founder and an S-Rank. Nothing private; never met him."
  want: "Houston treated as a first floor of the building, not a satellite office."
  fear: "A block that signed together can fail together; one bad call of hers costs all of them."
  secret: "She shopped the block to two other guilds first and used the Pendragon offer as leverage; she chose it at the last minute."
  voice: "Quick, code-switches Spanish and English mid-sentence, laughs right before she delivers bad news."
  beliefs: []
  agenda: "**2026-09-30 (`EVT-001177`).** Named commander of the Houston crew; Houston's seventeen A-Rank cards signed as a block because of her. Not yet told it is formal."
  situation: "Named `EVT-001177`; no contact with Alexander."
```

---

## Harriet Pembroke — A-Rank Crew Commander, London

Commander of the London A-Rank crew, named on Anjali Desai's call (`EVT-001177`). Not yet met in person.

```yaml
id: ENT-000346
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001177
  game_date: "2026-09-30T14:22:00-05:00"
  real_date: "2026-09-24"
type: Character
subtype: guild hunter — A-Rank crew commander
scope: campaign
lifecycle: active
aliases:
  - name: "Harriet Pembroke"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — London office, A-Rank crew commander"
  home: "London, United Kingdom"
  appearance: "Early forties, white, tall and angular, fair hair pinned back without fuss. Grey eyes, a long face that settles into polite scepticism. A tailored dark waxed jacket over the guild shirt; reading glasses on a cord she uses as a pointer. **Extended 2026-09-24 (real date), for portrait reference:** The Pendragon dragon-head pin on the jacket's lapel. Reference setting: the Pendragon Guild London office, a brick-walled operations room blurred behind her, soft grey London daylight."
  portrait: "assets/portraits/Harriet_Pembroke_ENT-000346.png"
  location: "The Pendragon Guild London office."
  rank: "[A-Rank] — card on the guild registry; not read by Flux Sight."
  role: "Commander of the London A-Rank crew; goes in with it."
  condition: "Healthy, as far as the registry shows."
  capabilities: "A-Rank combat; a long British freelance career; the London A-Ranks already treat her as their lead."
  personality: "Sceptical, meticulous, fair; distrusts enthusiasm until it has been tested."
  knowledge: "Public knowledge, and what she heard and asked at the London recruitment event (`EVT-001151`): the guild's terms, one guild with one insurer and nearest-office dispatch. Nothing private."
  want: "To be proven wrong about her doubts, on the record."
  fear: "An American guild that treats London as a flag on a map."
  secret: "She kept a written list of every promise made at the London event, and she means to read it back."
  voice: "Dry, clipped English; asks her questions in threes and waits for all three answers."
  beliefs: []
  agenda: "**2026-09-30 (`EVT-001177`).** Named commander of the London crew. She signed last at the London event after asking the hardest questions in the room. Not yet told it is formal."
  situation: "Named `EVT-001177`; present at the London event, no direct exchange with Alexander recorded."
```

---

## Joost van Rijn — A-Rank Crew Commander, Amsterdam

Commander of the Amsterdam A-Rank crew, named on Anjali Desai's call (`EVT-001177`). Not yet met in person.

```yaml
id: ENT-000347
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001177
  game_date: "2026-09-30T14:22:00-05:00"
  real_date: "2026-09-24"
type: Character
subtype: guild hunter — A-Rank crew commander
scope: campaign
lifecycle: active
aliases:
  - name: "Joost van Rijn"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Amsterdam office, A-Rank crew commander"
  home: "Amsterdam, the Netherlands"
  appearance: "Mid-thirties, white, very tall and rangy, sandy hair cropped close, a sunburned nose. Pale blue eyes that go to the exits first. Plain dark rain shell over the guild shirt, a bicycle clip still on one trouser leg. **Extended 2026-09-24 (real date), for portrait reference:** The Pendragon dragon-head pin on the rain shell's collar. Reference setting: the Pendragon Guild Amsterdam office, a canal-side street with parked bicycles blurred behind him, cool wet overcast light."
  portrait: "assets/portraits/Joost_van_Rijn_ENT-000347.png"
  location: "The Pendragon Guild Amsterdam office."
  rank: "[A-Rank] — card on the guild registry; not read by Flux Sight."
  role: "Commander of the Amsterdam A-Rank crew; goes in with it."
  condition: "Healthy, as far as the registry shows."
  capabilities: "A-Rank combat; a record of getting every crew out clean."
  personality: "Quiet, exacting, unshowy; trusted by the European floors for never taking a risk he can't name."
  knowledge: "Public knowledge only: Alexander as the guild's founder and an S-Rank. Nothing private."
  want: "An unremarkable record: nobody lost, nobody in the papers."
  fear: "A break in a dense city, where there is nowhere to pull a line back to."
  secret: "He lost a crewmate years ago in a Dutch guild on a clear he had signed off as safe; counting exits is what he does instead of talking about it."
  voice: "Few words, Dutch-direct; says the way out aloud before the way in."
  beliefs: []
  agenda: "**2026-09-30 (`EVT-001177`).** Named commander of the Amsterdam crew. Not yet told it is formal."
  situation: "Named `EVT-001177`; no contact with Alexander."
```

---

## Yolanda Arriaga — A-Rank Crew Commander, Miami

Commander of the Miami A-Rank crew, named on Anjali Desai's call (`EVT-001177`). Not yet met in person.

```yaml
id: ENT-000348
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001177
  game_date: "2026-09-30T14:22:00-05:00"
  real_date: "2026-09-24"
type: Character
subtype: guild hunter — A-Rank crew commander
scope: campaign
lifecycle: active
aliases:
  - name: "Yolanda Arriaga"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Miami office, A-Rank crew commander"
  home: "Miami, USA"
  appearance: "About forty, Cuban-American, sturdy and sun-dark, curly black hair tied up under a cap. Gold hoops, a chipped front tooth, forearms mapped with old burn scars. Guild jacket tied round her waist in the heat. **Extended 2026-09-24 (real date), for portrait reference:** Dark-brown eyes and a direct, amused stare. The Pendragon dragon-head pin on the guild shirt. Reference setting: the Pendragon Guild Miami office, a sunlit equipment yard with palms blurred behind her, bright hard Florida light."
  portrait: "assets/portraits/Yolanda_Arriaga_ENT-000348.png"
  location: "The Pendragon Guild Miami office."
  rank: "[A-Rank] — card on the guild registry; not read by Flux Sight."
  role: "Commander of the Miami A-Rank crew; goes in with it."
  condition: "Healthy, as far as the registry shows."
  capabilities: "A-Rank combat; twelve years in the trade; keeps a small A-Rank bench tight."
  personality: "Loud, affectionate, fiercely loyal; hugs her crew after a clear and shouts at them before one."
  knowledge: "Public knowledge only: Alexander as the guild's founder and an S-Rank. Nothing private."
  want: "Miami's A-Ranks sent the big Gates, not the leftovers."
  fear: "Being topped up from other offices until the crew is not hers any more."
  secret: "She keeps her crew's light injuries off the books when she can patch them herself, so Miami's record reads clean."
  voice: "Fast Miami Spanglish, blunt, calls everyone 'mi amor' including people she's angry with."
  beliefs: []
  agenda: "**2026-09-30 (`EVT-001177`).** Named commander of the Miami crew. Not yet told it is formal."
  situation: "Named `EVT-001177`; no contact with Alexander."
```

---

## Garrett Ishida — A-Rank Crew Commander, Seattle (the West Coast)

Commander of the West Coast A-Rank crew, based in Seattle and pulling from Los Angeles and San Francisco, named on Anjali Desai's call (`EVT-001177`). Not yet met in person.

```yaml
id: ENT-000349
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001177
  game_date: "2026-09-30T14:22:00-05:00"
  real_date: "2026-09-24"
type: Character
subtype: guild hunter — A-Rank crew commander
scope: campaign
lifecycle: active
aliases:
  - name: "Garrett Ishida"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Seattle office, A-Rank crew commander (the West Coast crew)"
  home: "Seattle, USA"
  appearance: "Mid-thirties, Japanese-American, lean and weathered, black hair grown out and tied back. A thin beard, a permanent squint from years outdoors. Faded flannel over the guild shirt, a battered thermos always in hand. **Extended 2026-09-24 (real date), for portrait reference:** Dark-brown eyes. The Pendragon dragon-head pin on the guild shirt's collar. Reference setting: the Pendragon Guild Seattle office, rain-streaked windows over a grey harbour blurred behind him, soft overcast Pacific Northwest light."
  portrait: "assets/portraits/Garrett_Ishida_ENT-000349.png"
  location: "The Pendragon Guild Seattle office."
  rank: "[A-Rank] — card on the guild registry; not read by Flux Sight."
  role: "Commander of the West Coast A-Rank crew; goes in with it."
  condition: "Healthy, as far as the registry shows."
  capabilities: "A-Rank combat; long Pacific Northwest experience."
  personality: "Unflappable, dryly funny, reluctant to be in charge and good at it anyway."
  knowledge: "Public knowledge only: Alexander as the guild's founder and an S-Rank; that Dario Wexler is the guild's senior combat lead. Nothing private."
  want: "A West Coast crew Dario Wexler respects."
  fear: "That he leads only until Dario decides he wants the job."
  secret: "He ran one clear alongside Dario years ago, before either was known; Dario has never mentioned it and he has never brought it up."
  voice: "Laconic, flat calm, never swears; answers a question with 'yeah, no' or 'no, yeah' and means both."
  beliefs: []
  agenda: "**2026-09-30 (`EVT-001177`).** Named commander of the West Coast crew. Not yet told it is formal."
  situation: "Named `EVT-001177`; no contact with Alexander."
```

---

## Noam Friedman — A-Rank Crew Commander, Tel Aviv

Commander of the Tel Aviv A-Rank crew, pulling from Istanbul, named on Anjali Desai's call (`EVT-001177`). Not yet met in person.

```yaml
id: ENT-000350
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001177
  game_date: "2026-09-30T14:22:00-05:00"
  real_date: "2026-09-24"
type: Character
subtype: guild hunter — A-Rank crew commander
scope: campaign
lifecycle: active
aliases:
  - name: "Noam Friedman"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Tel Aviv office, A-Rank crew commander"
  home: "Tel Aviv, Israel"
  appearance: "Mid-forties, Israeli, thickset and bald by choice, a salt-and-pepper beard. Heavy-lidded eyes that miss nothing. Olive field jacket over the guild shirt, sleeves rolled, sandals off-duty. **Extended 2026-09-24 (real date), for portrait reference:** Dark eyes. The Pendragon dragon-head pin on the field jacket. Reference setting: the Pendragon Guild Tel Aviv office, a pale stone briefing room blurred behind him, bright Mediterranean daylight."
  portrait: "assets/portraits/Noam_Friedman_ENT-000350.png"
  location: "The Pendragon Guild Tel Aviv office."
  rank: "[A-Rank] — card on the guild registry; not read by Flux Sight."
  role: "Commander of the Tel Aviv A-Rank crew; goes in with it."
  condition: "Healthy, as far as the registry shows."
  capabilities: "A-Rank combat; a reservist's habit of planning for the worst case first."
  personality: "Blunt, fast, impatient with process and patient with people."
  knowledge: "Public knowledge only: Alexander as the guild's founder and an S-Rank; that Itai Barak joined the guild. Nothing private."
  want: "A crew that doesn't need him to shout."
  fear: "Cross-border politics pulling his crew off a Gate halfway through a clear."
  secret: "He served alongside Itai Barak years ago, and he signed because Itai did."
  voice: "Blunt and rapid; closes every plan with 'yalla' and a hand on the table."
  beliefs: []
  agenda: "**2026-09-30 (`EVT-001177`).** Named commander of the Tel Aviv crew. Not yet told it is formal."
  situation: "Named `EVT-001177`; no contact with Alexander."
```

---

## Céline Marchand — A-Rank Crew Commander, Paris (Continental Europe)

Commander of the Continental Europe A-Rank crew, based in Paris and pulling from Frankfurt, Prague and Stockholm, named on Anjali Desai's call (`EVT-001177`). Not yet met in person.

```yaml
id: ENT-000351
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001177
  game_date: "2026-09-30T14:22:00-05:00"
  real_date: "2026-09-24"
type: Character
subtype: guild hunter — A-Rank crew commander
scope: campaign
lifecycle: active
aliases:
  - name: "Céline Marchand"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Paris office, A-Rank crew commander (the Continental Europe crew)"
  home: "Paris, France"
  appearance: "Late thirties, white, slight and upright, dark bob cut sharp at the jaw. Brown eyes, a thin old scar across the knuckles of her right hand. A fitted navy coat over the guild shirt, a scarf even in September. **Extended 2026-09-24 (real date), for portrait reference:** The Pendragon dragon-head pin on the coat's lapel. Reference setting: the Pendragon Guild Paris office, tall windows and Haussmann stone blurred behind her, soft Paris daylight."
  portrait: "assets/portraits/Celine_Marchand_ENT-000351.png"
  location: "The Pendragon Guild Paris office."
  rank: "[A-Rank] — card on the guild registry; not read by Flux Sight."
  role: "Commander of the Continental Europe A-Rank crew; goes in with it."
  condition: "Healthy, as far as the registry shows."
  capabilities: "A-Rank combat; long experience leading B-Rank crews in France."
  personality: "Formal, exacting, quietly ambitious; prepares more than anyone and admits it to no one."
  knowledge: "Public knowledge only: Alexander as the guild's founder and an S-Rank. Nothing private."
  want: "Four offices' A-Ranks made into one crew rather than four cliques."
  fear: "Language and national pride splitting the line under pressure."
  secret: "She has never commanded a full A-Rank crew; she ran B-Rank crews and was pushed up because no one else in Paris would take it."
  voice: "Formal, precise English with a French lilt; switches to French only to swear."
  beliefs: []
  agenda: "**2026-09-30 (`EVT-001177`).** Named commander of the Continental Europe crew. Not yet told it is formal."
  situation: "Named `EVT-001177`; no contact with Alexander."
```

---

## Anjali Desai — Detroit HQ Front Office Head

Sharp, direct, running front-office operations for the new HQ.

```yaml
id: ENT-000288
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001086
  game_date: "2026-09-24T14:00:00-04:00"
  real_date: "2026-09-24"
type: Character
subtype: guild HQ staff — front office
scope: campaign
lifecycle: active
aliases:
  - name: "Anjali Desai"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — HQ, head of front office"
  home: "Detroit, USA (HQ campus)"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late thirties, Indian-American, medium height and brisk, the person who keeps an entire front office running. Long black hair in a sleek low ponytail; warm brown eyes behind tortoiseshell glasses; a small nose stud. A tailored teal blazer over a white shell top, a guild lanyard and a tablet held against her chest. Expression practical and focused, recalibrating mid-thought. Reference setting: the Pendragon Guild HQ front office in Detroit, a reception desk and glass partitions blurred behind her, bright even light."
  portrait: "assets/portraits/Anjali_Desai_ENT-000288.png"
  location: "The Pendragon Guild HQ campus, Detroit."
  role: "Head of front office operations for the HQ site."
  condition: "Healthy, sharp, rarely without her own tablet."
  capabilities: "Office administration, vendor/spend management, staffing."
  personality: "Practical, recalibrates fast when a request expands scope (fingerprint access -> full IT infrastructure -> paperless policy) without losing track of any thread."
  want: "To be handed whole problems rather than pieces, and trusted to carry them to the end (authored `EVT-001180`, Decision 092)."
  fear: "Being the bottleneck the guild's growth snags on -- grounded in `EVT-001146`'s correction and the load on her desk; it makes her chase a slip alone and raise it late and half-fixed (seen at `EVT-001181`)."
  secret: "She readies the next step before she is told to -- the roster sat addressed in her drafts before he said send (`EVT-001180`) -- and does not say so."
  voice: "Efficient, states what she can and can't promise plainly."
  agenda: "**2026-10-01 13:21-19:47 (`EVT-001219`, `EVT-001224`).** Cole signed the London room at 13:10, green. Named in the Director's memorandum as the guild's national point of contact (`EVT-001223`). Owes, from Kane's 19:45 message: the recruitment events **Mon 10-05 Warsaw 13:00 local (06:00 Chicago), Bucharest later that day (18:00 local, 10:00 Chicago placeholder); Tue 10-06 Madrid, Milan, Lisbon**, times hers to set; the Milan filing; the offices ready by their dates. **Prior:** **2026-10-01 12:52-13:20 (`EVT-001214`, `EVT-001217`).** Told him London's room was ready and the A-Rank pieces still held. At 13:20 took his answer -- 38 A-Rank pieces already bought and in basement storage -- with a distribution list drafted 09-30 22:14: the nine crews collect through their offices' tunnels, the seven reserve at HQ, **every A-Rank kitted by Friday evening**; the twelve A-Rank artificers moved to B and C, so everyone below A is kitted before Wednesday. Did not ask where the pieces came from. **Standing instruction from him:** *when he names a day for an answer, she holds until the end of that day and does not chase it before*; her one stated exception, a fact outside her control that makes the date impossible, told once with why. Holds the UK authority's returned London filing (sent by Imogen at 16:30 London). **Prior:** **2026-10-01 (`EVT-001199`, `EVT-001203`).** Relayed Frankfurt and Paris accepted (05:03) and Region III accepting Washington (05:06); four branches live at 06:00. Took the Seoul thread (Korean licence paperwork today), the app workshop (Monday, fifteen minutes, a quiz), and European leases once Kane's map lands; holds the A-Rank gear for his word. **Prior:** **2026-09-30 afternoon and evening (`EVT-001180`, `EVT-001181`, `EVT-001186`-`EVT-001189`, `EVT-001191`).** Sent the A-Rank roster on his word; relayed London's lock fitted. the German and French authorities slipped their end-of-day; she had chased it, sent the certified credentials, and said so only when asked (decision due 10-01 05:00 Chicago). Holds a standing instruction: contract-town tickets confirmed and staffed by HQ dispatch without the founder. Dispatched Milwaukee (C, D) and Toledo (B, C, D) under the standing roster rule, texted every crossing and exit; two strikers hurt on the D's, nobody lost; proposed adding a striker to D teams and was told to wait for data from two regular offices. Built the annex into dispatch; got machine credentials from Farraday's office; the connector live 18:06. Owes: the standing-memo line tonight; the plan for eight tunnel rooms on three to Cole tonight (built by 10-09); leases and hiring for Atlanta, Denver, Minneapolis, Phoenix, Philadelphia off Kesha's shortlist; $5.39M of C and B gear bought (C tonight, B from the morning), core stock checked tomorrow; A-Rank purchases held for his word tomorrow. Owned unprompted that she should have asked Region V on Monday what was missing. **Prior:** **2026-09-30 afternoon (`EVT-001176`, `EVT-001177`).** Texted at 11:40 asking twenty minutes on the roster; told to call when done, she answered that she would have it clean first. Called at 14:15: opened with a leadership shortlist, was corrected twice, then delivered the real thing — nine standing A-Rank crews under the memo, on the owner-ruled A-Rank registry (12 menders, 12 artificers, 14 combat-capable sensors), and their commanders: Baek, Hutchins, Salinas, Pembroke, van Rijn, Arriaga, Ishida, Friedman, Marchand. `OBJ-85` delivered; asked whether to send it, unanswered at the cut. **2026-09-30 (`EVT-001164`, `EVT-001165`).** A long list built in one conversation: a full guild-wide team-commander roster (owed by afternoon, after correcting Alexander's own request twice — office heads alone undercounts by a large margin at this scale); the training floor and gym build (real iron, no machines, routed to Cole); a dedicated artificer floor — centralized benches, material audit, guild-logo branding, eventual premium resale flagged for internal governance review rather than a fresh BGM filing after Alexander corrected her framing; exact gear-backlog numbers by office (owed by evening, same batch); a soundproofed quiet-zone lounge on the cafeteria floor plus ground-floor lockers/changing rooms; a medical-supply restock with an automatic reorder threshold; and a member conduct/dispute process to draft and send to Alexander for revision before implementation. Cafeteria sizing already in progress, unaffected. **2026-09-29 (`EVT-001146`).** Texted at 08:05: which regulators had accepted, and to file Tel Aviv, Istanbul, Stockholm and London. Replied: none of the twelve original filings accepted yet, status owed within the hour; filing the four new offices today off the shared system; flagged BGM's typical 3-5 business day first-filing turnaround. **Pushed back**, citing $95,870 already cost in Gates not taken through official channels: committed to three concrete steps (direct calls to two regional offices, escalation through Kane's contacts, checking for a provisional-dispatch provision), status owed by 09:16 Chicago. **Told plainly she should have escalated before being pushed; took the correction without arguing it, owned the miss as hers to catch.**\n\n  **2026-09-28 (`EVT-001130`).** Told to file a standing dispatch relationship for each of the twelve offices with its regulator, naming each head as dispatching officer, **today by 18:00 Eastern**, with a full status by 18:00 Eastern Friday 10-02; copied Kane and the twelve heads. **Prior, 2026-09-27 (`EVT-001125`).** Delivered the office-limits table at 18:00 as owed; a Chicago station rang HQ at about 18:30 and she gave the press line and approved nothing; told to bring back the station's questions and dates, she **owes them by Monday 2026-09-28, 10:00 Eastern**; told Los Angeles no press inside tonight. Still owes the Elias-authority table and guild-voice shortlist (due 2026-09-28 18:00). **Prior, 2026-09-26/27 (`EVT-001109`, `EVT-001114`).** Took the standing memo and manual rule to all twelve desks, built the per-Rank minimums table for the first page, read the guild-server tunnel log on her own login, and corrected her own figure to Milena twice as the rule changed. Owns: the office-limits table draft (due 2026-09-27 18:00), the Elias-authority table and guild-voice shortlist (due 2026-09-28 18:00), IT's automatic-assignment date (Wednesday 2026-09-30, Wendell by hand until then), the cafeteria sizing from a week of reader data, and the legwork (two people per city) on Istanbul, Tel Aviv and Canada. Owns: rush freight/overtime labor authorization for the security and IT builds, the private in-house cloud/paperless rollout (a rolling changeover, not a light switch), and interviewing existing staff to select a 'porter' for the restricted third floor, vetted by Cole. Target: end of week for the physical builds; candidate shortlist in a few days."
  situation: "First contact `EVT-001086`."
```

---

## Milena Horáková — Prague Office Coordination

Local hire running the Prague guild office's front desk and general coordination as of its first week; composed under a first meeting with the founder, direct about her own role's uncertainty.

```yaml
id: ENT-000286
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001085
  game_date: "2026-09-24T11:30:00+02:00"
  real_date: "2026-09-24"
type: Character
subtype: guild office staff
scope: campaign
lifecycle: active
aliases:
  - name: "Milena Horáková"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Prague office, front desk"
  home: "Prague, Czech Republic"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early thirties, Czech, slim and composed. Chestnut-brown hair in a neat shoulder-length cut; clear grey eyes; light freckles across the nose. A dark-green knit sweater over a collared shirt, a Pendragon Guild visitor lanyard she has turned into her own. Expression composed and candid, telling you the honest state of things. Reference setting: the Pendragon Guild Prague office front desk, an old stone-framed window and a street in Prague's centre blurred behind her, soft grey daylight."
  portrait: "assets/portraits/Milena_Horakova_ENT-000286.png"
  location: "The Pendragon Guild's Prague office."
  role: "Front desk and general office coordination — self-described as a placeholder role pending founder/second-in-command decision on whether it becomes permanent."
  condition: "Healthy, composed, professionally prepared for a first meeting with the founder."
  capabilities: "General office administration; local vendor sourcing (secured a same-day rush security installer on the spot)."
  personality: "Direct about uncertainty rather than papering over it; competent under pressure — handled an expanding, escalating list of asks (fingerprint access, a secure room, a rush installer) without losing the thread of any of them."
  want: "To do the job well enough that the placeholder framing resolves in her favor."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Composed, professional, states the honest state of things rather than a managed version of it when asked directly."
  agenda: "**2026-10-01 (`EVT-001203`).** Reported the Prague A-Rank cleared by Marchand's crew before the window; took the CGA's offered Holešovice A-Rank for the guild on the standing rule, *offered means taken*, asking Joost van Rijn's Amsterdam crew through the tunnel; commander and roster to the CGA by 14:00 Prague. **Prior:** **2026-09-28 (`EVT-001129`).** The guild took the Prague A-Rank; she was given and corrected the roster rule (17 A-Rank strikers plus a mender and a sensor, never below the Gate's Rank), sent Wendell the wrong rule and rang him to correct it before he pulled a name, and **owes the commander's name and roster to the CGA by 12:00 Prague / 05:00 Chicago on 09-29**. Prague's office has three A-Rank members (authored, `EVT-001129`). **Prior, 2026-09-26/27 (`EVT-001109`, `EVT-001114`).** Asked two questions of a text order (through Anselm or through Detroit; a set number), took the standing memo, settled the Frankfurt crew with Anselm, and cleared Prague's B-Rank with fifteen in and fifteen out (00:41 local, strong success); reported at 12:58. Owns keeping her own access card on her person at all times per Alexander's standing instruction; ordering a fingerprint scanner for the Prague office's new secure room, rush-installed by tomorrow morning; relaying the sitewide fingerprint-access policy to Kane."
  situation: "First contact `EVT-001085`. Handed the office's day-to-day coordination directly by Kane that same morning."
```

---

## Tomas Prochazka — Prague Guild Striker

D-rank-capable striker, part of the crew Kane assembled for the guild's first Prague Gate response.

```yaml
id: ENT-000289
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001084
  game_date: "2026-09-24T11:00:00+02:00"
  real_date: "2026-09-24"
type: Character
subtype: guild striker
scope: campaign
lifecycle: active
aliases:
  - name: "Tomas Prochazka"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Prague dispatch crew, striker"
  home: "Prague, Czech Republic"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late twenties, Czech, broad and solid, a D-Rank striker with a plain, honest face. Short-cropped fair hair; light-blue eyes; a slightly crooked nose and a day's stubble. A new dark guild field jacket over a grey hoodie, a longsword's hilt visible over one shoulder. Expression openly surprised, halfway to a grin. Reference setting: a Prague street at the edge of a cleared Gate site, tram wires and baroque façades blurred behind him, overcast light."
  portrait: "assets/portraits/Tomas_Prochazka_ENT-000289.png"
  location: "Prague, guild dispatch crew."
  role: "Striker, D-rank card."
  condition: "Healthy. Weapon replaced this span — old D-Rank Longsword past a fusion-holding condition, refit with a fresh C-Rank Longsword, guild-funded (personal funds, not guild treasury — none yet exists), `EVT-001084`."
  capabilities: "D-rank combat, melee."
  personality: "Plain-spoken, honestly surprised rather than performative at meeting the founder in person for a D-rank response."
  want: "Not yet established beyond ordinary steady work."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Plain, says what he means without dressing it up — first line to Alexander was genuine surprise, not a pitch."
  agenda: "Cleared through Prague's first guild-dispatched Gate response alongside Klara Nováková and four unnamed crew, Kane personally supervising."
  situation: "First contact `EVT-001084`, welcomed to the guild in person by Alexander."
```

---

## Klara Nováková — Prague Guild Sensor

D-rank-capable sensor, part of the same crew; flagged by Kane's gear audit as under-equipped before the clear.

```yaml
id: ENT-000290
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001084
  game_date: "2026-09-24T11:00:00+02:00"
  real_date: "2026-09-24"
type: Character
subtype: guild sensor
scope: campaign
lifecycle: active
aliases:
  - name: "Klara Nováková"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Prague dispatch crew, sensor"
  home: "Prague, Czech Republic"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Mid-twenties, Czech, slight and quiet, a sensor who watches before she speaks. Straight dark-blonde hair in a low braid; large grey-blue eyes; a small silver stud in one ear. A navy guild field jacket zipped to the collar, a plain black scarf. Expression quiet and sincere. Reference setting: a Prague side street near the guild office, cobbles and warm shopfront light blurred behind her, early evening."
  portrait: "assets/portraits/Klara_Novakova_ENT-000290.png"
  location: "Prague, guild dispatch crew."
  role: "Sensor, D-rank card."
  condition: "Healthy. Was running on a single borrowed D-Rank accessory with no torso or leg pieces at all; outfitted this span with a full guild-funded D-Rank set (head, torso, hands, legs, feet) plus a standing office A-Rank sensor piece assigned to her directly, `EVT-001084`."
  capabilities: "D-rank detection/sensor work."
  personality: "Quiet, direct rather than effusive — simple, genuine thanks rather than a performance of gratitude."
  want: "Not yet established."
  fear: "Not yet established — Kane's read was that she hadn't been saying anything about her own thin kit until asked directly, which may be its own tell."
  secret: "Not yet established."
  voice: "Quiet, direct — checks a new thing is real rather than commenting on it."
  agenda: "Cleared through Prague's first guild-dispatched Gate response. Newly equipped with her own gear for the first time in an unstated while."
  situation: "First contact `EVT-001084`, welcomed to the guild in person by Alexander."
```

### REL-000122 — Alexander and Tomas Prochazka

```yaml
id: REL-000122
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001084
  game_date: "2026-09-24T11:00:00+02:00"
  real_date: "2026-09-24"
endpoints:
  - ENT-000125
  - ENT-000289
type: guild-member
qualities: "A Pendragon Guild member on the Prague dispatch crew, a striker. Welcomed in person by the founder, brief and warm on both sides, with the open-door gear-replacement policy stated in front of him (`EVT-001084`)."
qualities_as_of: EVT-001084
state: "Welcomed to the guild in person. Open-door gear-replacement policy declared in front of him."
texture: "A founder who shows up in person for a D-rank response and personally hands over gear rather than delegating it entirely."
history: "Formed 2026-09-24 (`EVT-001084`)."
```

---

## Ottilie 'Doc' Haldane — A-Rank Guild Mender

Named to Alexander among the guild's nine A-Rank hunters during the Calumet corridor span, 2026-09-25 (`EVT-001099`). Age 33.

```yaml
id: ENT-000292
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001099
  game_date: "2026-09-25T12:00:00-05:00"
  real_date: "2026-09-26"
type: Character
subtype: guild hunter — A-Rank mender
scope: campaign
lifecycle: active
aliases:
  - name: "Ottilie 'Doc' Haldane"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — A-Rank response pool, mender"
  home: "No fixed office"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early sixties, white, Scottish-American, small and wiry, a mender who has worked more crises than anyone in the room. Short silver hair cut practically; shrewd pale-blue eyes behind half-moon reading glasses; deep laugh lines. A dark-green guild field jacket over a grey henley, a medical satchel across her body. Expression unflappable and faintly amused. Reference setting: a staging tent at a Gate response, field cots and cordon lights blurred behind her, cool night light."
  portrait: "assets/portraits/Ottilie_Haldane_ENT-000292.png"
  location: "Pendragon Guild A-Rank response pool; no fixed office."
  role: "A-Rank mender, carded at A."
  condition: "Healthy. Age 33."
  capabilities: "Clears severity by touch; one job per touch (Section 6.3). The guild's senior medical asset."
  personality: "Unflappable; treats a crisis as a queue to be worked rather than an emergency to be felt."
  want: "To be somewhere her hands are the difference, and to stop being the only one who can do it."
  fear: "Arriving with nothing left in her when the person in front of her still needs a touch."
  secret: "Not yet established."
  voice: "Dry, understated, counts out loud while she works."
  knowledge: "Knows what was said to her in person at the Winnetka house after the Calumet run (`EVT-001122`): that Alexander cares about the guild's hunters as their guildmaster; that he saw her mender's doctrine and said it should become the guild's manual; that he suggested a meeting of all the guild's menders at HQ and for her to make teaching the younger menders a standing thing of her own; and that he will attend only to observe and approve at the end. Was there for the takeaway and the after-gate session with the other hunters. No channel to anything Bearer-only or to anything about him not said in her presence."
  agenda: "**2026-09-30 (`EVT-001162`, `EVT-001163`).** Ran the menders' meeting as planned: her own doctrine, over/undertreatment discipline (corrected in the telling — ordinary hunters have no System-potion access, so it's Mana and brewed restorative tonics she means, not items). Alexander rift-stepped to her side mid-session and added a three-point mender-usage rule generalizing Owen Callahan's own standing terms; she endorsed it without reservation, named rule three ('the spend-call belongs to the field commander, never to the man asking') as the one seniority violates first, and **committed to a written memo in every commander's hands by end of day.** When Alexander then announced mandatory weekly mender combat training, she correctly declined to run it herself ('I know bodies, not fighting') and named Dario Wexler before being asked — **corrected on the spot that she hadn't been assigned to decide it**, took the correction cleanly, no defensiveness. **2026-09-30, 10:00 Eastern (`EVT-001122`): leads the guild menders' meeting at the Detroit HQ**, presenting her doctrine and starting the younger menders' teaching as her own, with Alexander observing; the HQ front office arranges it. She likes to teach. Prior: assigned to the guild's A-Rank response pool, named to Alexander during the Calumet corridor span."
  situation: "First contact `EVT-001099`. Met properly the same afternoon at the Winnetka house (`EVT-001122`, restored to the record retroactively), where she showed Alexander the mender's doctrine."
```

---

## Tobias Keane — A-Rank Guild Striker

Named to Alexander among the guild's nine A-Rank hunters during the Calumet corridor span, 2026-09-25 (`EVT-001099`). Age 27.

```yaml
id: ENT-000293
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001099
  game_date: "2026-09-25T12:00:00-05:00"
  real_date: "2026-09-26"
type: Character
subtype: guild hunter — A-Rank striker
scope: campaign
lifecycle: active
aliases:
  - name: "Tobias Keane"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — A-Rank response pool, striker"
  home: "No fixed office"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Mid-twenties, white, American, tall and rangy with the loose energy of someone new to the A-Rank pool. Messy light-brown hair; bright green eyes; a light scatter of freckles. A charcoal guild strike jacket, straps a little too tight. Expression eager, mid-question. Reference setting: the Pendragon Guild HQ briefing room in Detroit, a wall screen and chairs blurred behind him, bright overhead light."
  portrait: "assets/portraits/Tobias_Keane_ENT-000293.png"
  location: "Pendragon Guild A-Rank response pool; no fixed office."
  role: "A-Rank striker, carded at A."
  condition: "Healthy. Age 27."
  capabilities: "A-Rank close combat; card at A."
  personality: "Eager without being reckless; asks what the plan is before he asks where to stand."
  want: "A clear he led, not one he was carried through."
  fear: "Being told he is not ready for the thing he thinks he is ready for."
  secret: "Not yet established."
  voice: "Fast, slightly over-eager, trails off when he realises he is talking too much."
  agenda: "A-Rank response pool."
  situation: "First contact `EVT-001099`."
```

---

## Anneliese Rourke — A-Rank Guild Striker

Named to Alexander among the guild's nine A-Rank hunters during the Calumet corridor span, 2026-09-25 (`EVT-001099`). Age 33.

```yaml
id: ENT-000294
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001099
  game_date: "2026-09-25T12:00:00-05:00"
  real_date: "2026-09-26"
type: Character
subtype: guild hunter — A-Rank striker
scope: campaign
lifecycle: active
aliases:
  - name: "Anneliese Rourke"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — A-Rank response pool, striker"
  home: "No fixed office"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Mid-thirties, white, Irish-American, broad-shouldered and sturdy. Copper-red hair buzzed on the sides and longer on top; sharp blue eyes; a wide mouth that looks ready to swear. A battered charcoal guild strike jacket over a black tank top, fingerless gloves. Expression flat, with a joke she will not smile at. Reference setting: a Gate staging lot at dusk, response vehicles and floodlights blurred behind her."
  portrait: "assets/portraits/Anneliese_Rourke_ENT-000294.png"
  location: "Pendragon Guild A-Rank response pool; no fixed office."
  role: "A-Rank striker, carded at A."
  condition: "Healthy. Age 33."
  capabilities: "A-Rank close combat; card at A."
  personality: "Blunt to the point of rudeness about risk, warm about everything else."
  want: "A roster she trusts, so she can stop double-checking everyone else's gear."
  fear: "Losing someone to a gap she could have caught on a walk-round."
  secret: "Not yet established."
  voice: "Flat delivery, jokes told without a smile, swears cheerfully."
  agenda: "A-Rank response pool."
  situation: "First contact `EVT-001099`."
```

---

## Kwame Adjei — A-Rank Guild Striker

Named to Alexander among the guild's nine A-Rank hunters during the Calumet corridor span, 2026-09-25 (`EVT-001099`). Age 30.

```yaml
id: ENT-000295
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001099
  game_date: "2026-09-25T12:00:00-05:00"
  real_date: "2026-09-26"
type: Character
subtype: guild hunter — A-Rank striker
scope: campaign
lifecycle: active
aliases:
  - name: "Kwame Adjei"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — A-Rank response pool, striker"
  home: "No fixed office"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early forties, Ghanaian, tall and composed, the quiet centre of any briefing. Close-cropped black hair with grey at the temples; watchful dark-brown eyes; a neatly kept short beard. A charcoal guild strike jacket buttoned to the collar. Expression still and attentive, about to name the real problem. Reference setting: the Pendragon Guild HQ briefing room in Detroit, a map wall softly blurred behind him, even light."
  portrait: "assets/portraits/Kwame_Adjei_ENT-000295.png"
  location: "Pendragon Guild A-Rank response pool; no fixed office."
  role: "A-Rank striker, carded at A."
  condition: "Healthy. Age 30."
  capabilities: "A-Rank close combat; card at A."
  personality: "Watchful; the last to speak in a briefing and usually the one who names the real problem."
  want: "To be read as the professional he is rather than the size he is."
  fear: "Being the reason a plan he did not argue against went wrong."
  secret: "Not yet established."
  voice: "Low, unhurried, uses fewer words than the sentence needs."
  agenda: "A-Rank response pool."
  situation: "First contact `EVT-001099`."
```

---

## Sofia Delacroix — A-Rank Guild Striker

Named to Alexander among the guild's nine A-Rank hunters during the Calumet corridor span, 2026-09-25 (`EVT-001099`). Age 24.

```yaml
id: ENT-000296
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001099
  game_date: "2026-09-25T12:00:00-05:00"
  real_date: "2026-09-26"
type: Character
subtype: guild hunter — A-Rank striker
scope: campaign
lifecycle: active
aliases:
  - name: "Sofia Delacroix"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — A-Rank response pool, striker"
  home: "No fixed office"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late twenties, French-American, slim and quick, with the bright energy of someone who treats every rule as a hypothesis. Dark curly hair cut to the jaw; lively hazel eyes; a small gap between her front teeth. A charcoal guild strike jacket with the sleeves pushed up. Expression curious, eyebrows raised, a question already forming. Reference setting: a guild training yard, sparring rings and chain-link blurred behind her, bright afternoon light."
  portrait: "assets/portraits/Sofia_Delacroix_ENT-000296.png"
  location: "Pendragon Guild A-Rank response pool; no fixed office."
  role: "A-Rank striker, carded at A."
  condition: "Healthy. Age 24."
  capabilities: "A-Rank close combat; card at A. Youngest of the named nine."
  personality: "Bright and quick; treats every new rule as a thing to test rather than obey."
  want: "To be taken seriously at an age nobody takes seriously."
  fear: "That the speed she is proud of is the thing that gets her killed."
  secret: "Not yet established."
  voice: "Quick, questioning, ends statements slightly up as if inviting the correction."
  agenda: "A-Rank response pool."
  situation: "First contact `EVT-001099`."
```

---

## Jun-seo Baek — A-Rank Guild Striker

Named to Alexander among the guild's nine A-Rank hunters during the Calumet corridor span, 2026-09-25 (`EVT-001099`). Age 26.

```yaml
id: ENT-000297
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001099
  game_date: "2026-09-25T12:00:00-05:00"
  real_date: "2026-09-26"
type: Character
subtype: guild hunter — A-Rank striker
scope: campaign
lifecycle: active
aliases:
  - name: "Jun-seo Baek"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — A-Rank crew commander, the Chicago crew (the response pool)"
  home: "Chicago, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early thirties, Korean-American, lean and precise. Straight black hair cut short and neatly parted; calm dark-brown eyes; a small notebook tucked in his breast pocket. A charcoal guild strike jacket, every strap aligned. Expression thoughtful, a pause before answering. Reference setting: a quiet guild ready room, lockers and a whiteboard of roster notes blurred behind him, cool light."
  portrait: "assets/portraits/Jun_seo_Baek_ENT-000297.png"
  location: "Pendragon Guild A-Rank response pool; no fixed office."
  role: "A-Rank striker, carded at A; commander of the Chicago A-Rank crew, going in with it (`EVT-001177`)."
  condition: "Healthy. Age 26."
  capabilities: "A-Rank close combat; card at A."
  personality: "Methodical; writes things down when nobody asked him to."
  want: "A guild that still exists in ten years."
  fear: "Signing on to something built on one man's goodwill."
  secret: "Not yet established."
  voice: "Precise, slightly formal, pauses before answering rather than after."
  agenda: "**2026-09-30 (`EVT-001177`).** Named commander of the Chicago crew — the response pool is his crew, Haldane its mender — on Anjali's roster; the most careful commander she has, planning the way out before the way in. Not yet told it is formal. Earlier: the A-Rank response pool."
  situation: "First contact `EVT-001099`."
```

---

## Idris Cavanaugh — A-Rank Guild Striker

Named to Alexander among the guild's nine A-Rank hunters during the Calumet corridor span, 2026-09-25 (`EVT-001099`). Age 35.

```yaml
id: ENT-000298
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001099
  game_date: "2026-09-25T12:00:00-05:00"
  real_date: "2026-09-26"
type: Character
subtype: guild hunter — A-Rank striker
scope: campaign
lifecycle: active
aliases:
  - name: "Idris Cavanaugh"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — A-Rank response pool, striker"
  home: "No fixed office"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late forties, Irish-Welsh-American, weathered and settled. Dark hair gone mostly grey, cut short; dry grey-green eyes with crow's feet; a salt-and-pepper beard. A well-worn charcoal guild strike jacket over an old band T-shirt. Expression wry, with a story behind it. Reference setting: the Pendragon Guild HQ canteen in Detroit, long tables and windows blurred behind him, warm late-day light."
  portrait: "assets/portraits/Idris_Cavanaugh_ENT-000298.png"
  location: "Pendragon Guild A-Rank response pool; no fixed office."
  role: "A-Rank striker, carded at A."
  condition: "Healthy. Age 35."
  capabilities: "A-Rank close combat; card at A. Longest-carded of the nine."
  personality: "Settled; has seen enough outfits fold to withhold judgement on this one."
  want: "Work that pays without a federal desk attached to it."
  fear: "Another guild that promises a floor and then moves it."
  secret: "Not yet established."
  voice: "Even, wry, answers a question with the history behind it."
  agenda: "A-Rank response pool."
  situation: "First contact `EVT-001099`."
```

---

## Priyanka Nair — A-Rank Guild Striker

Named to Alexander among the guild's nine A-Rank hunters during the Calumet corridor span, 2026-09-25 (`EVT-001099`). Age 27.

```yaml
id: ENT-000299
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001099
  game_date: "2026-09-25T12:00:00-05:00"
  real_date: "2026-09-26"
type: Character
subtype: guild hunter — A-Rank striker
scope: campaign
lifecycle: active
aliases:
  - name: "Priyanka Nair"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — A-Rank response pool, striker"
  home: "No fixed office"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early thirties, Indian-American (Keralite), medium height and animated. Long dark wavy hair in a high ponytail; warm brown eyes; a wide, welcoming smile. A charcoal guild strike jacket over a maroon top, a guild radio clipped at the shoulder. Expression sociable and organizing, mid-introduction. Reference setting: a busy guild staging area, hunters and gear crates blurred behind her, bright daylight."
  portrait: "assets/portraits/Priyanka_Nair_ENT-000299.png"
  location: "Pendragon Guild A-Rank response pool; no fixed office."
  role: "A-Rank striker, carded at A."
  condition: "Healthy. Age 27."
  capabilities: "A-Rank close combat; card at A."
  personality: "Sociable, organising; ends up running the room without being put in charge of it."
  want: "To be given the roster rather than end up holding it by default."
  fear: "Being useful enough to be needed and never enough to be promoted."
  secret: "Not yet established."
  voice: "Warm, talkative, asks people's names twice until she has them."
  agenda: "A-Rank response pool."
  situation: "First contact `EVT-001099`."
```

---

## Marek Sobczak — A-Rank Guild Striker

Named to Alexander among the guild's nine A-Rank hunters during the Calumet corridor span, 2026-09-25 (`EVT-001099`). Age 29.

```yaml
id: ENT-000300
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001099
  game_date: "2026-09-25T12:00:00-05:00"
  real_date: "2026-09-26"
type: Character
subtype: guild hunter — A-Rank striker
scope: campaign
lifecycle: active
aliases:
  - name: "Marek Sobczak"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — A-Rank response pool, striker"
  home: "No fixed office"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late thirties, Polish, heavyset and immovable. Dark-blond hair buzzed short; pale-grey deadpan eyes; a thick jaw and a flattened nose. A charcoal guild strike jacket over a black thermal. Expression dry and unreadable, deflecting praise before it arrives. Reference setting: a Gate cordon line at night, barricades and floodlights blurred behind him."
  portrait: "assets/portraits/Marek_Sobczak_ENT-000300.png"
  location: "Pendragon Guild A-Rank response pool; no fixed office."
  role: "A-Rank striker, carded at A."
  condition: "Healthy. Age 29."
  capabilities: "A-Rank close combat; card at A."
  personality: "Deadpan; deflects praise, absorbs criticism without argument."
  want: "Not yet established beyond doing the job and being left alone about it."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Dry, minimal, answers in the fewest words that are still polite."
  agenda: "A-Rank response pool."
  situation: "First contact `EVT-001099`."
```

---

## Imani Whitaker — Chicago Office Day Manager

Met Alexander in person when he opened the Chicago travel-hub tunnel, 2026-09-26 (`EVT-001101`).

```yaml
id: ENT-000301
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001101
  game_date: "2026-09-25T20:00:00-05:00"
  real_date: "2026-09-26"
type: Character
subtype: guild office staff — day manager
scope: campaign
lifecycle: active
aliases:
  - name: "Imani Whitaker"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Chicago office, day manager"
  home: "Chicago, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early forties, Black, composed and elegant, the first face of the guild's home office. Natural hair in a short, shaped afro; steady dark-brown eyes; small gold hoop earrings. A charcoal blazer with the small angular Pendragon dragon-head pin, over a cream blouse. Expression composed, holding back a question she has not yet decided she is owed. Reference setting: the Pendragon Guild Chicago office front desk, a glass entrance and the Loop's towers blurred behind her, clear morning light."
  portrait: "assets/portraits/Imani_Whitaker_ENT-000301.png"
  location: "The Pendragon Guild Chicago office, front desk."
  role: "Day manager of the Chicago office front desk."
  condition: "Healthy."
  capabilities: "Office administration, intake, night handover, and the standing practice of meeting Alexander in person on every arrival."
  personality: "Composed, does not ask a question she has not decided she is owed the answer to."
  want: "To run an office that never needs the founder to step in."
  fear: "That the office is a courtesy posting and the real work happens elsewhere."
  secret: "Not yet established."
  voice: "Steady, direct, leaves a question in the air rather than pressing it."
  agenda: "Owns the Chicago office desk, its night handover, and the lakefront B-Rank roster and commander filing to BGM Region V (`OBJ-73`)."
  situation: "First contact `EVT-001101`."
```

---

## Verity Achebe-Lund — Washington DC Office Day Manager

Met Alexander in person when he opened the Washington DC travel-hub tunnel, 2026-09-26 (`EVT-001107`).

```yaml
id: ENT-000303
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001107
  game_date: "2026-09-26T11:00:00-04:00"
  real_date: "2026-09-26"
type: Character
subtype: guild office staff — day manager
scope: campaign
lifecycle: active
aliases:
  - name: "Verity Prescott"
    quality: current
  - name: "Verity Achebe-Lund"
    quality: former
canonical_state:
  affiliation: "Pendragon Guild — Washington DC office, day manager"
  home: "Washington DC, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late thirties, white, American, crisp and immaculate. Blonde hair in a sleek low chignon; clear blue eyes; pearl stud earrings. A navy suit jacket with the Pendragon dragon-head pin, an open file folder in one hand. Expression prepared and precise. Reference setting: the Pendragon Guild Washington DC office reception, federal-style stonework through a window softly blurred behind her, cool daylight."
  portrait: "assets/portraits/Verity_Prescott_ENT-000303.png"
  location: "The Pendragon Guild Washington DC office, front desk."
  role: "Day manager of the Washington DC office front desk."
  condition: "Healthy."
  capabilities: "Office administration, intake, night handover, and the standing practice of meeting Alexander in person on every arrival."
  personality: "Prepared to the point of anticipation; the file is open before the question finishes."
  want: "A guild that survives its first federal audit."
  fear: "Being caught unready in front of the one person she wants to impress."
  secret: "Not yet established."
  voice: "Crisp, formal, finishes other people's sentences with the correct version."
  agenda: "Owns the DC office desk."
  situation: "First contact `EVT-001107`."
```

---

## Anselm Kowalczyk-Boateng — Frankfurt Office Day Manager

Met Alexander in person when he opened the Frankfurt travel-hub tunnel, 2026-09-26 (`EVT-001107`).

```yaml
id: ENT-000304
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001107
  game_date: "2026-09-26T17:00:00+02:00"
  real_date: "2026-09-26"
type: Character
subtype: guild office staff — day manager
scope: campaign
lifecycle: active
aliases:
  - name: "Anselm Kretschmer"
    quality: current
  - name: "Anselm Kowalczyk-Boateng"
    quality: former
canonical_state:
  affiliation: "Pendragon Guild — Frankfurt office, day manager"
  home: "Frankfurt, Germany"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early fifties, German, tall and exact. Neatly combed grey hair; pale-blue eyes behind rimless glasses; a precise grey moustache. A dark-grey suit with a Pendragon dragon-head pin, a wristwatch he checks. Expression dry and punctual. Reference setting: the Pendragon Guild Frankfurt office front desk, a glass-and-steel lobby and the skyline blurred behind him, clean daylight."
  portrait: "assets/portraits/Anselm_Kretschmer_ENT-000304.png"
  location: "The Pendragon Guild Frankfurt office, front desk."
  role: "Day manager of the Frankfurt office front desk."
  condition: "Healthy."
  capabilities: "Office administration, intake, night handover, and the standing practice of meeting Alexander in person on every arrival."
  personality: "Exact; treats punctuality as a courtesy rather than a rule."
  want: "Not yet established beyond a well-run office."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Dry and precise; notes the time out loud when someone arrives."
  agenda: "Owns the Frankfurt office desk. Frankfurt is Lukas Reinhardt's city; the standing beer is still owed there."
  situation: "First contact `EVT-001107`."
```

---

## Ramona Ostrowski — New York Office Day Manager

Met Alexander in person when he opened the New York travel-hub tunnel, 2026-09-26 (`EVT-001107`).

```yaml
id: ENT-000305
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001107
  game_date: "2026-09-26T11:20:00-04:00"
  real_date: "2026-09-26"
type: Character
subtype: guild office staff — day manager
scope: campaign
lifecycle: active
aliases:
  - name: "Ramona Ostrowski"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — New York office, day manager"
  home: "New York, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Mid-forties, Polish-American, quick and warm, three things in motion at once. Curly dark-brown hair piled up with a pencil through it; bright brown eyes; red lipstick. A burgundy cardigan over a black top, a Pendragon lanyard and a phone in one hand. Expression warm, mid-sentence, hands moving. Reference setting: the Pendragon Guild New York office reception, Manhattan street bustle blurred through the glass behind her, bright daylight."
  portrait: "assets/portraits/Ramona_Ostrowski_ENT-000305.png"
  location: "The Pendragon Guild New York office, front desk."
  role: "Day manager of the New York office front desk."
  condition: "Healthy."
  capabilities: "Office administration, intake, night handover, and the standing practice of meeting Alexander in person on every arrival."
  personality: "Fast and warm; three things in motion and none of them dropped."
  want: "The biggest office on the board, and to be the reason it is."
  fear: "That fast reads as careless."
  secret: "Not yet established."
  voice: "Rapid, half-finishes sentences, talks with her hands."
  agenda: "Owns the New York office desk — the guild's largest single intake at 412 signed."
  situation: "First contact `EVT-001107`."
```

---

## Callum Idowu — Boston Office Day Manager

Met Alexander in person when he opened the Boston travel-hub tunnel, 2026-09-26 (`EVT-001107`).

```yaml
id: ENT-000306
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001107
  game_date: "2026-09-26T11:30:00-04:00"
  real_date: "2026-09-26"
type: Character
subtype: guild office staff — day manager
scope: campaign
lifecycle: active
aliases:
  - name: "Callum Doherty"
    quality: current
  - name: "Callum Idowu"
    quality: former
canonical_state:
  affiliation: "Pendragon Guild — Boston office, day manager"
  home: "Boston, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early forties, Irish-American, lanky and deadpan. Short ginger hair and a trimmed ginger beard; pale-blue eyes with a trace of amusement; freckles. A grey tweed jacket with the Pendragon dragon-head pin over a navy knit tie. Expression level, the joke already delivered. Reference setting: the Pendragon Guild Boston office front desk, red brick and a bare tree blurred through the window behind him, soft autumn light."
  portrait: "assets/portraits/Callum_Doherty_ENT-000306.png"
  location: "The Pendragon Guild Boston office, front desk."
  role: "Day manager of the Boston office front desk."
  condition: "Healthy."
  capabilities: "Office administration, intake, night handover, and the standing practice of meeting Alexander in person on every arrival."
  personality: "Quiet and deadpan; says the funny thing without changing expression."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Level, unhurried, delivers a joke as if it were an item of business."
  agenda: "Owns the Boston office desk."
  situation: "First contact `EVT-001107`."
```

---

## Cecilia Duarte-Voss — Miami Office Day Manager

Met Alexander in person when he opened the Miami travel-hub tunnel, 2026-09-26 (`EVT-001107`).

```yaml
id: ENT-000307
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001107
  game_date: "2026-09-26T11:40:00-04:00"
  real_date: "2026-09-26"
type: Character
subtype: guild office staff — day manager
scope: campaign
lifecycle: active
aliases:
  - name: "Cecilia Duarte"
    quality: current
  - name: "Cecilia Duarte-Voss"
    quality: former
canonical_state:
  affiliation: "Pendragon Guild — Miami office, day manager"
  home: "Miami, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early fifties, Cuban-American, generous-figured and relaxed. Dark wavy hair with a streak of silver, worn loose; warm brown eyes; a bright, easy laugh line. A coral linen blouse with the Pendragon dragon-head pin, gold bangles. Expression unhurried and friendly, asking after you first. Reference setting: the Pendragon Guild Miami office reception, palms and bright street light blurred through the glass behind her."
  portrait: "assets/portraits/Cecilia_Duarte_ENT-000307.png"
  location: "The Pendragon Guild Miami office, front desk."
  role: "Day manager of the Miami office front desk."
  condition: "Healthy."
  capabilities: "Office administration, intake, night handover, and the standing practice of meeting Alexander in person on every arrival."
  personality: "Unhurried and easy; treats urgency as something other people bring in with them."
  want: "The Miami office to be the one where nothing goes wrong."
  fear: "That *easy* gets read as *not serious*."
  secret: "She keeps a paper log of every visitor alongside the reader's server log."
  voice: "Easy laugh, long vowels, asks after the person before the business."
  agenda: "**2026-09-28 (`EVT-001135`).** Met him at reception at 08:46-ish, asked whether he had eaten before the business, set out a chair and water without asking who was coming, and took Graciela Corrales's intake at the table (asked after her first): member, licence pending. Wrote the name in a small paper notebook and said nothing aloud beyond *Welcome*. Owns the Miami office desk."
  situation: "First contact `EVT-001107`."
```

---

## Roy Rawlins — Houston Office Day Manager

Met Alexander in person when he opened the Houston travel-hub tunnel, 2026-09-26 (`EVT-001107`).

```yaml
id: ENT-000308
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001107
  game_date: "2026-09-26T10:50:00-05:00"
  real_date: "2026-09-26"
type: Character
subtype: guild office staff — day manager
scope: campaign
lifecycle: active
aliases:
  - name: "Roy Rawlins"
    quality: current
  - name: "Emeka Saltonstall"
    quality: former
canonical_state:
  affiliation: "Pendragon Guild — Houston office, day manager"
  home: "Houston, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late fifties, white, Texan, big-framed and expansive. Thick grey hair swept back; twinkling blue eyes; a broad, sun-lined face and a grey moustache. A western-cut tan sport coat over an open-collared shirt, the Pendragon dragon-head pin on the lapel. Expression mid-story, about to land the point. Reference setting: the Pendragon Guild Houston office front desk, a sunlit lobby with a potted palm blurred behind him."
  portrait: "assets/portraits/Roy_Rawlins_ENT-000308.png"
  location: "The Pendragon Guild Houston office, front desk."
  role: "Day manager of the Houston office front desk."
  condition: "Healthy."
  capabilities: "Office administration, intake, night handover, and the standing practice of meeting Alexander in person on every arrival."
  personality: "Expansive; tells the long version because the long version is the true one."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Big, digressive, circles back to the point and lands it."
  agenda: "**2026-09-28 (`EVT-001136`).** Met him at 09:48 with the window unit losing its argument, told him nothing in the office needed him, gave the lay of the city (Harrisburg Boulevard fifteen minutes by car, Rennick's shop twenty-five, a fleet car on offer). Owns the Houston office desk — 350 signed, the tour's largest single day."
  situation: "First contact `EVT-001107`."
```

---

## Odile Prendergast — Paris Office Day Manager

Met Alexander in person when he opened the Paris travel-hub tunnel, 2026-09-26 (`EVT-001107`).

```yaml
id: ENT-000309
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001107
  game_date: "2026-09-26T18:00:00+02:00"
  real_date: "2026-09-26"
type: Character
subtype: guild office staff — day manager
scope: campaign
lifecycle: active
aliases:
  - name: "Odile Fontaine"
    quality: current
  - name: "Odile Prendergast"
    quality: former
canonical_state:
  affiliation: "Pendragon Guild — Paris office, day manager"
  home: "Paris, France"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late thirties, French, slim and cool. Dark hair in a sleek short pixie cut; knowing grey eyes; a precise red lip. A tailored black blazer over a striped Breton top, the Pendragon dragon-head pin at the collar. Expression faintly amused, approval by absence of objection. Reference setting: the Pendragon Guild Paris office reception, a Haussmann window and a Paris street blurred behind her, soft grey light."
  portrait: "assets/portraits/Odile_Fontaine_ENT-000309.png"
  location: "The Pendragon Guild Paris office, front desk."
  role: "Day manager of the Paris office front desk."
  condition: "Healthy."
  capabilities: "Office administration, intake, night handover, and the standing practice of meeting Alexander in person on every arrival."
  personality: "Cool and economical; approval expressed as the absence of objection."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Clipped, faintly amused, answers before the question is fully asked."
  agenda: "**2026-09-28 (`EVT-001137`).** Met him at reception at 16:38 Paris and said only *Twice this month? People will talk.* Owns the Paris office desk. The office is closed and fully functional; 162 signed at the 14:00 event."
  situation: "First contact `EVT-001107`."
```

---

## Noor Vandermeulen — Amsterdam Office Day Manager

Met Alexander in person when he opened the Amsterdam travel-hub tunnel, 2026-09-26 (`EVT-001107`).

```yaml
id: ENT-000310
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001107
  game_date: "2026-09-26T18:10:00+02:00"
  real_date: "2026-09-26"
type: Character
subtype: guild office staff — day manager
scope: campaign
lifecycle: active
aliases:
  - name: "Noor Vandermeulen"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Amsterdam office, day manager"
  home: "Amsterdam, Netherlands"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Mid-thirties, Dutch-Moroccan, tall and practical. Dark hair under a simple charcoal headscarf; direct brown eyes; no-nonsense expression. A navy knit sweater with the Pendragon dragon-head pin, sleeves pushed up. Expression terse and solution-first. Reference setting: the Pendragon Guild Amsterdam office front desk, a canal-house window and bicycles blurred behind her, cool daylight."
  portrait: "assets/portraits/Noor_Vandermeulen_ENT-000310.png"
  location: "The Pendragon Guild Amsterdam office, front desk."
  role: "Day manager of the Amsterdam office front desk."
  condition: "Healthy."
  capabilities: "Office administration, intake, night handover, and the standing practice of meeting Alexander in person on every arrival."
  personality: "Practical to the point of terseness; solves rather than discusses."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Short, flat, states the constraint and then the fix."
  agenda: "**2026-09-28 (`EVT-001137`).** Met him at reception at 19:21 Amsterdam: *Nothing's needed. Go.*\n\n  **2026-09-26 (`EVT-001110`).** Met Alexander at reception, had four hundred chairs out and six hundred more coming, and closed the tables at 14:11 with nobody in the line turned away. Owns the Amsterdam office desk. The office is finished and functional ahead of the 19:00 local recruitment event."
  situation: "First contact `EVT-001107`."
```

---

## Hyun-woo Delacroix-Park — Dallas Office Day Manager

Met Alexander in person when he opened the Dallas travel-hub tunnel, 2026-09-26 (`EVT-001107`).

```yaml
id: ENT-000311
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001107
  game_date: "2026-09-26T11:00:00-05:00"
  real_date: "2026-09-26"
type: Character
subtype: guild office staff — day manager
scope: campaign
lifecycle: active
aliases:
  - name: "Wyatt Delaney"
    quality: current
  - name: "Hyun-woo Delacroix-Park"
    quality: former
canonical_state:
  affiliation: "Pendragon Guild — Dallas office, day manager"
  home: "Dallas, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late forties, white, Texan, lean and courteous. Short sandy-grey hair; patient hazel eyes; a neatly trimmed short beard. A pressed light-blue oxford shirt and a dark tie with the Pendragon dragon-head pin, sleeves rolled once. Expression measured, leaving a pause for you to fill. Reference setting: the Pendragon Guild Dallas office reception, a modern glass lobby and bright plaza light blurred behind him."
  portrait: "assets/portraits/Wyatt_Delaney_ENT-000311.png"
  location: "The Pendragon Guild Dallas office, front desk."
  role: "Day manager of the Dallas office front desk."
  condition: "Healthy."
  capabilities: "Office administration, intake, night handover, and the standing practice of meeting Alexander in person on every arrival."
  personality: "Courteous and measured; leaves a pause where another person would fill it."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Careful, leaves silences, never interrupts."
  agenda: "**2026-09-27 (`EVT-001117`).** Met Alexander at reception, warned him before the doors that more had come than expected. Owns the Dallas office desk. Shares a surname element with `ENT-000296` Sofia Delacroix by coincidence; no relation established."
  situation: "First contact `EVT-001107`."
```

---

## Tomasz Okafor-Lindqvist — Los Angeles Office Day Manager

Met Alexander in person when he opened the Los Angeles travel-hub tunnel, 2026-09-26 (`EVT-001107`).

```yaml
id: ENT-000312
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001107
  game_date: "2026-09-26T09:10:00-07:00"
  real_date: "2026-09-26"
type: Character
subtype: guild office staff — day manager
scope: campaign
lifecycle: active
aliases:
  - name: "Diego Villarreal"
    quality: current
  - name: "Tomasz Okafor-Lindqvist"
    quality: former
canonical_state:
  affiliation: "Pendragon Guild — Los Angeles office, day manager"
  home: "Los Angeles, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early thirties, Mexican-American, medium build and permanently mid-task. Short black hair slightly mussed; apologetic dark-brown eyes; a thin moustache. A dark-green bomber jacket over a white T-shirt, a Pendragon lanyard, a phone pressed to his shoulder. Expression harried but friendly. Reference setting: the Pendragon Guild Los Angeles office front desk, palms and hard California sun blurred through the windows behind him."
  portrait: "assets/portraits/Diego_Villarreal_ENT-000312.png"
  location: "The Pendragon Guild Los Angeles office, front desk."
  role: "Day manager of the Los Angeles office front desk."
  condition: "Healthy."
  capabilities: "Office administration, intake, night handover, and the standing practice of meeting Alexander in person on every arrival."
  personality: "Perpetually mid-something; apologises for it and keeps doing it."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Hurried, apologetic, one hand over the phone."
  agenda: "**2026-09-27 (`EVT-001126`):** met Alexander at reception and ran the Los Angeles event's doors with no press inside, per HQ (700 in, 189 signed). Owns the Los Angeles office desk."
  situation: "First contact `EVT-001107`; the Los Angeles recruitment event, `EVT-001126`."
```

---

## Lenka Baranyi — Seattle Office Day Manager

Met Alexander in person when he opened the Seattle travel-hub tunnel, 2026-09-26 (`EVT-001107`).

```yaml
id: ENT-000313
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001107
  game_date: "2026-09-26T09:20:00-07:00"
  real_date: "2026-09-26"
type: Character
subtype: guild office staff — day manager
scope: campaign
lifecycle: active
aliases:
  - name: "Lena Petersen"
    quality: current
  - name: "Lenka Baranyi"
    quality: former
canonical_state:
  affiliation: "Pendragon Guild — Seattle office, day manager"
  home: "Seattle, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early forties, Danish-American, tall and quietly precise. Straight white-blonde hair cut to the collarbone; clear pale-blue eyes; a faint wry smile. A charcoal wool cardigan over a grey turtleneck, the Pendragon dragon-head pin at the chest. Expression exact and lightly amused. Reference setting: the Pendragon Guild Seattle office reception, rain on the glass and evergreen hills blurred behind her, soft grey light."
  portrait: "assets/portraits/Lena_Petersen_ENT-000313.png"
  location: "The Pendragon Guild Seattle office, front desk."
  role: "Day manager of the Seattle office front desk."
  condition: "Healthy."
  capabilities: "Office administration, intake, night handover, and the standing practice of meeting Alexander in person on every arrival."
  personality: "Precise and quietly funny; the correction and the joke arrive together."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Exact, lightly wry, corrects a figure and then softens it."
  agenda: "**2026-09-28 (`EVT-001138`).** Met him eight minutes early at the door with a clipboard (*three hundred on the pavement, no, three hundred and twelve*), offered the second entrance, and ran the Seattle event: 800 in, 240 signed. Owns the Seattle office desk."
  situation: "First contact `EVT-001107`."
```

---

## Bertil Nakamura-Reyes — San Francisco Office Day Manager

Met Alexander in person when he opened the San Francisco travel-hub tunnel, 2026-09-26 (`EVT-001107`).

```yaml
id: ENT-000314
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001107
  game_date: "2026-09-26T09:30:00-07:00"
  real_date: "2026-09-26"
type: Character
subtype: guild office staff — day manager
scope: campaign
lifecycle: active
aliases:
  - name: "Benjamin Tran"
    quality: current
  - name: "Bertil Nakamura-Reyes"
    quality: former
canonical_state:
  affiliation: "Pendragon Guild — San Francisco office, day manager"
  home: "San Francisco, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late twenties, Vietnamese-American, slim and earnest. Neat black hair with a side part; bright, eager dark eyes behind round glasses; a wide smile. A navy fleece vest over a checked shirt, a Pendragon lanyard. Expression enthusiastic, mid-explanation. Reference setting: the Pendragon Guild San Francisco office front desk, a bay window with fog over the hills blurred behind him, cool daylight."
  portrait: "assets/portraits/Benjamin_Tran_ENT-000314.png"
  location: "The Pendragon Guild San Francisco office, front desk."
  role: "Day manager of the San Francisco office front desk."
  condition: "Healthy."
  capabilities: "Office administration, intake, night handover, and the standing practice of meeting Alexander in person on every arrival."
  personality: "Earnest; explains past the point the listener has understood."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Enthusiastic, over-explains, checks that he has been understood."
  agenda: "**2026-09-28 (`EVT-001138`).** Met him at reception at 14:52 Pacific and offered to walk him across before checking he had understood. Owns the San Francisco office desk."
  situation: "First contact `EVT-001107`."
```

---

## Wendell Osei-Brandt — Detroit HQ Porter

Met Alexander on the HQ third floor, 2026-09-26 (`EVT-001107`), and heard the porter's role defined on the spot.

```yaml
id: ENT-000302
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001107
  game_date: "2026-09-26T09:05:00-04:00"
  real_date: "2026-09-26"
type: Character
subtype: guild HQ staff — porter
scope: campaign
lifecycle: active
aliases:
  - name: "Wendell Brooks"
    quality: current
  - name: "Wendell Osei-Brandt"
    quality: former
canonical_state:
  affiliation: "Pendragon Guild — HQ, porter of the travel hub"
  home: "Detroit, USA (HQ campus)"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late sixties, Black, tall and very upright, a porter's formal bearing. Short white hair and a neat white moustache; dry, kind dark-brown eyes; deep lines at the mouth. A dark charcoal porter's uniform coat with brass buttons and the Pendragon dragon-head mark on the collar, white gloves. Expression formal, the dry remark kept to himself. Reference setting: the HQ travel hub in Detroit, a restricted third-floor corridor with a heavy steel door blurred behind him, cool even light."
  portrait: "assets/portraits/Wendell_Brooks_ENT-000302.png"
  location: "The Pendragon Guild HQ campus, Detroit; restricted third floor, the travel hub."
  role: "Porter of the HQ travel hub: moving hunters in and out between branch offices to fill rosters on ongoing Gates."
  condition: "Healthy. Age about 42. Newly in a pressed grey jacket he has not settled into."
  capabilities: "Reception-keyed access to every third-floor transit room; the roster feed is being built into his desk by Anjali Desai."
  personality: "Formal and careful; keeps the dry remark to himself. Stops at a threshold without being told to — a porter's habit he does not seem to notice."
  want: "Steady, meaningful work again, and to be the person who knows where everyone is meant to be."
  fear: "Being the one weak point in a place whose whole purpose is moving people."
  secret: "Not yet established — the record does not say what he did before this, and he has not volunteered it."
  voice: "Measured, formal, faintly dry; a handshake a fraction too careful."
  agenda: "**2026-09-26/27 (`EVT-001109`, `EVT-001114`).** Runs the standing memo's roster rule by hand from the roster feed until IT's build lands (Wednesday); notified on his tablet of a request without an approval step, as the player ordered. Shortlisted by Anjali Desai (`ENT-000288`) and vetted by Nathaniel Cole (`ENT-000287`) — full background check and called references, completed Thursday 2026-09-24. Holds third-floor access under the travel-hub policy alongside Alexander, Kane, the day and night managers and the head of security."
  situation: "First contact `EVT-001107`."
```

### REL-000124 — Alexander and Elena Cho

```yaml
id: REL-000124
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001087
  game_date: "2026-09-24T15:15:00-04:00"
  real_date: "2026-09-24"
endpoints:
  - ENT-000125
  - ENT-000291
type: protege
qualities: "His telekinesis student, and a guest at the Winnetka house since 2026-09-24 (`EVT-001092`). Two coaching days of real progress (`EVT-001111`-`EVT-001114`), and her reading is filed under the affiliation courtesy. The $1 associate agreement is still unsigned: she wants to read it and does not want to join anything yet. She counts her thank-yous aloud."
qualities_as_of: EVT-001114
state: "**Met 2026-09-24 20:49-21:33 (`EVT-001091`), and now a guest at the Winnetka house (`EVT-001092`).** She told Alexander everything, including what she had told no one: it fires in her sleep. He named it (telekinesis) and offered lessons starting tomorrow between his two recruitment events, the guest room with Kane on the hall, and a 1 USD non-exclusive associate agreement with no obligations and a walk-out at will. **She wants to read it before signing and will not sign tonight; she does not want to join anything yet.** Asleep behind Standfast at the last report. She asked him to tell her straight if she gets worse, and he said he could try."
texture: "Two S-Ranks who each became one without the celebrity build-up the other nine had — the first real point of comparison either of them has."
history: "Formed 2026-09-24 (`EVT-001087`), an unsolicited phone call. Met in person `EVT-001091`; Kane introduced `EVT-001092`."
```

### REL-000123 — Alexander and Klara Nováková

```yaml
id: REL-000123
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001084
  game_date: "2026-09-24T11:00:00+02:00"
  real_date: "2026-09-24"
endpoints:
  - ENT-000125
  - ENT-000290
type: guild-member
qualities: "A Pendragon Guild member on the Prague dispatch crew, a sensor. Welcomed in person, quieter than Tomas, and outfitted properly for the first time in a while (`EVT-001084`)."
qualities_as_of: EVT-001084
state: "Welcomed to the guild in person; outfitted properly for the first time in an unstated while."
texture: "Simple, direct gratitude rather than a performance of it."
history: "Formed 2026-09-24 (`EVT-001084`)."
```


---

## Campaign-Local Figures — Session 2026-09-28 (`EVT-001135`-`EVT-001138`)

### ENT-000315 — Graciela Corrales

Miami artificer, [A-Rank] awakened (Flux Sight read, `EVT-001135`), her licence lapsed with a state contract two years ago; a **guild member, licence pending** as of 2026-09-28. First heard on the phone as Vesna, renamed the same day.

```yaml
id: ENT-000315
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001135
  game_date: "2026-09-28T09:04:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: artificer, guild member (licence pending)
scope: campaign
lifecycle: active
aliases:
  - name: "Graciela Corrales"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — artificer (licence pending)"
  home: "Miami, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Fifties, Colombian-American, small and dignified. Dark hair with grey streaks, pinned up neatly; warm, careful brown eyes; fine lines around the mouth. A pressed white work coat over a dark blouse, a jeweller's loupe on a cord. Expression formal and eager, one beat behind each sentence. Reference setting: the Pendragon Guild Miami office reception floor, bright tropical light blurred behind her."
  portrait: "assets/portraits/Graciela_Corrales_ENT-000315.png"
  rank: "**[A-Rank] awakened**, card lapsed. Flux Sight `EVT-001135`: Health 1,500/1,500, Mana 750/750, ceiling [A-Rank]. The provisional working Rank once noted here was revoked by owner ruling (`EVT-001178`); she crafts at her card Rank."
  age: "Fifties."
  location: "The Pendragon Guild Miami office, reception floor, 2026-09-28."
  condition: "Healthy."
  capabilities: "Forged the Hunter's Band [A-Rank] she gave him (unstamped, ceiling exactly [A-Rank], made within six weeks). Eleven years running the forge at an enchanting house holding a state contract for A-Rank pieces; stopped mid-batch two years ago; her licence lapsed with the contract. A-Rank cores bought through a Houston broker (Harlan Dorsett, `ENT-000317`), about two months in his safe."
  personality: "Formal and careful; eager to be taken in and unwilling to embarrass anyone."
  want: "To put her own mark on a piece again, under her own name, and to have it stay hers; to work in the light."
  fear: "That a piece from the batch she stopped was left keyed with her line, and the state buyer's end use can be traced to her hand."
  secret: "She left the house under terms she did not fully honour, and she knows one keyed piece may still exist."
  voice: "Formal, measured, one beat after each sentence; says *as a matter of record*."
  beliefs:
    - claim: "The guild is the one place that will sponsor her without asking her to name her clients."
      ground: "He said so, and the Miami intake asked for nothing else."
      confidence: confident
      accuracy: true
      since: EVT-001135
  knowledge: "Knows only what she was told or saw: that he founded the guild, took her application, read her ring, and promised to help her get her licence back. **No channel to the Bearer-only Register.** She did not learn that he read her, and he did not ask about the keyed piece."
  agenda: "**2026-09-28 (`EVT-001135`).** Arrived eleven minutes early with one small bag; told him the whole of her account; put the ring between them; accepted the guild (member, licence pending); left the ring. Told him the broker's Harrisburg unit (Unit 4) and asked that her name stay out of it. **HQ owes counsel's first read on her licence by Friday 2026-10-02 16:00 Chicago** (`OBJ-79`). Offered to teach the guild's 22 B-Rank artificers, though she has never taught and cannot leave a piece unfinished."
  situation: "Miami office, unlicensed until counsel reads it; not yet met a second time."
```

### ENT-000316 — Tobiah Rennick

Houston artificer, [B-Rank] card, no artificer's licence, a **guild member, licence pending** as of 2026-09-28.

```yaml
id: ENT-000316
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001135
  game_date: "2026-09-28T08:34:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: artificer, guild member (licence pending)
scope: campaign
lifecycle: active
aliases:
  - name: "Tobiah Rennick"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — artificer (licence pending)"
  home: "Houston, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Mid-forties, white, Texan, burly and cheerful. Shaggy brown hair and a thick brown beard with grey at the chin; friendly blue eyes; forearms marked with small old burns from the bench. A grease-streaked canvas apron over a faded T-shirt, safety glasses pushed up on his head. Expression warm, mid-apology, still working with his hands. Reference setting: his cinder-block workshop in north Houston, a cluttered bench and a rail spur through the roll-up door blurred behind him."
  portrait: "assets/portraits/Tobiah_Rennick_ENT-000316.png"
  rank: "**[B-Rank] awakened** (card B, always). Flux Sight `EVT-001136`: Health 600/600, Mana 300/300, ceiling [B-Rank]. (A provisional working Rank once noted here was revoked, `EVT-001178`.)"
  location: "His workshop, a cinder-block unit off a service road backed onto a rail spur, north Houston (sign: REPAIRS & FITTINGS)."
  condition: "Healthy."
  capabilities: "Re-cored an older C-Rank Longsword around a B-Rank core (ceiling [B-Rank]) for a client known only as *the Tuesday client*."
  personality: "Warm, quick to over-explain, apologises; keeps working with his hands while he talks."
  want: "His name on his work, and to be paid what it is worth."
  fear: "That a licensing review will expose the B-Rank work he sold unlicensed, and that the broker who takes most of it holds the ledger of everything he ever sold."
  secret: "His B-Rank work went through the Houston broker, who kept most of the money."
  voice: "Chatty and bench-minded, jokes about paperwork; over-explains and then catches himself."
  knowledge: "Knows the broker as a broker (Harlan Dorsett, `ENT-000317`), the Tuesday client only as a code, and that the guild took him on. **No channel to the Bearer-only Register.** He was not told he was read."
  agenda: "**2026-09-28 (`EVT-001136`).** Received him at the bench, told him honestly why he has no licence (an artificer's licence is held through a sponsoring house and no house sponsors a freelancer with no papers on his past work), joined the guild (member, licence pending; the queue 8 -> 7), volunteered that the Tuesday client's blade goes out through the broker at 09:00 on Tuesday and that he drops it at the Harrisburg unit in the evening. Finishing the Tuesday client's blade tonight. **Counsel owes the first read on his licence by Friday 2026-10-02 16:00 Chicago** (`OBJ-79`)."
  situation: "Houston, finishing a client's blade; a guild member awaiting his licence."
```

### ENT-000317 — Harlan Dorsett

Houston core broker to unlicensed artificers; **unawakened**. First written as Dorrit Halvard, renamed the same day.

```yaml
id: ENT-000317
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001136
  game_date: "2026-09-28T10:09:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: core broker, grey market
scope: campaign
lifecycle: active
aliases:
  - name: "Harlan Dorsett"
    quality: current
canonical_state:
  affiliation: "Independent — grey-market core broker"
  home: "Houston, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Sixties, white, Southern, soft-bodied and soft-spoken. Thin combed-over grey hair; mild pale-grey eyes; a smooth, pleasant, closely shaved face. A pale linen suit jacket over a pastel shirt, hands folded. Expression courteous and unreadable. Reference setting: a machine-shop unit on Harrisburg Boulevard, Houston, a metal desk and tool racks blurred behind him, dim morning light."
  portrait: "assets/portraits/Harlan_Dorsett_ENT-000317.png"
  rank: "Unawakened, an ordinary adult (Flux Sight `EVT-001136`: ordinary Health, no Mana pool, no techniques)."
  age: "Sixties."
  location: "A machine-shop unit on Harrisburg Boulevard, Houston, Unit 4, behind a tire-and-wheel shop; there most mornings, never the same afternoon twice."
  condition: "Healthy; unarmed."
  capabilities: "Brokers beast cores, and some hide, to artificers who cannot buy openly; keeps an eleven-year provenance ledger, private shorthand (Rank, date in, hands, date out, buyer initial; the Gate where known). Collects and passes pieces to a Tuesday buyer, 09:00 at the side door, through a man in a grey coat."
  personality: "Soft, courteous, never quotes a price aloud; circumlocutions like *arrangements* and *materials*."
  want: "To stay invisible and keep the book safe; underneath, an exit: to hand the ledger to someone who would seal it."
  fear: "A buyer with power coming for the book if he tries to leave; the Tuesday man asked him weeks ago, in passing, how he keeps his records."
  secret: "He keeps every core's provenance in a book whatever he tells buyers."
  voice: "Soft, courteous, unhurried; folds his hands; never raises his voice."
  knowledge: "Knows the protagonist from the video and from a knock on his door. Told: *your name came to me with unlicensed artificers' work*, *Marnie*, and *CONSULT* (he had never heard the word). Told nothing about the guild's artificers. **No channel to the Bearer-only Register.** Not told he was read."
  agenda: "**2026-09-28 (`EVT-001136`).** Received him, described the shape of an arrangement in which makers are kept and not employed, said he lost two makers who stopped coming on Tuesdays, and gave the buyer **M** (cash, A-Rank cores every few weeks by courier to **Fulton Market Parcel & Post, West Fulton Market, Chicago, Box 4126**; last entry a Tuesday in the second week of August, then *did not collect*). Wrote the box number down. Keeps a Tuesday buyer he will not name: **09:00 Chicago, Tuesdays, the side door of Unit 4; a man in a grey coat, a different vehicle each time, no name; he takes the piece, hands back an envelope.** The next pickup is **Tuesday 2026-09-29** (`OBJ-80`)."
  situation: "Holding a ledger he cannot hand to anyone and a Tuesday he cannot cancel."
```

### ENT-000318 — Imogen Hartley

London office day manager.

```yaml
id: ENT-000318
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001137
  game_date: "2026-09-28T12:12:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — day manager
scope: campaign
lifecycle: active
aliases:
  - name: "Imogen Hartley"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — London office, day manager"
  home: "London, UK"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late thirties, English, slight and neat. Mouse-brown hair in a tidy low bun; mild grey-blue eyes; a faintly apologetic half-smile. A navy cardigan over a white collared blouse with the Pendragon dragon-head pin, a mug of tea at her elbow. Expression understated, about to deliver bad news as good manners. Reference setting: the Pendragon Guild London office front desk, a narrow glass front on a side street blurred behind her, soft rainy light."
  portrait: "assets/portraits/Imogen_Hartley_ENT-000318.png"
  location: "The Pendragon Guild London office, front desk."
  role: "Day manager of the London office front desk."
  condition: "Healthy; unawakened (Flux Sight `EVT-001137`)."
  capabilities: "Office administration, intake, night handover, and the standing practice of meeting Alexander in person on every arrival. Carries a folded card of everything wrong with the office and has fixed most of it."
  personality: "Understated; apologises for things that are not her fault."
  want: "To run an office nothing goes wrong in, on the strength of what she can actually control — proof she was worth the posting rather than merely lucky to have it."
  fear: "Being judged, or let go, for a vendor's delay she has no lever over — competence mistaken for the thing that's actually failing."
  secret: "Has already quietly lined up a second, faster locksmith as a backup to the guild's own booked contractor, paying the difference out of her own pocket rather than raise it through channels and risk it reading as a complaint about Detroit's procurement."
  voice: "Understated, delivers bad news as good manners, never raises her voice, treats tea as punctuation — and the one thing she will not do is apologise for a fact she isn't responsible for, however flatly it's said back to her."
  agenda: "**2026-10-01 18:55-19:10 London (12:55-13:10 Chicago, `EVT-001215`).** Met him at reception: the rear-door lock fitted Wednesday by the guild's contractor, the room cleared; Pembroke asked whether she flies or walks to Saturday. **Watched the London tunnel open** into HQ -- the first she has seen -- and logged it live at 19:00 on his word (pings Cole); rang Pembroke, who walks. Reported, without apology, that **the UK's national authority returned the London filing at 16:00 London as incomplete**: the office head's credentials to be certified, and **a named responsible officer resident in the United Kingdom**; sent to Detroit at 16:30. He refused any proxy officer -- *accept me or shut London*; she said once that the letter says *resident*, and that she'd rather hear a shutdown from him than by email. Two lawyer canvasses failed (26, 24); **the lease solicitors' regulatory partner held Monday 10-05, 09:00 London (03:00 Chicago)**, Imogen to confirm Friday. The case officer's direct line on a note: in from 08:00 London. Knows now that he opens doors between cities; still no channel to anchors or the mechanism. **Prior:** **2026-09-29, second meeting (`EVT-001150`-`EVT-001151`).** Met him again on arrival; reported the rear-door lock still not fitted (contractor booked Wednesday, delay traced to a shared parts queue with three other offices' fittings, not her own scheduling). Held her ground, plainly and without raising her voice, when pressed on it directly and accused of a tone problem — did not apologise for the vendor's timeline, offered to have Detroit's logistics confirm it directly, and turned back to running the door the moment the exchange ended. **Texted about by Alexander to Kane afterward** ('I don't trust revealing my skill mechanics with the tunnel network to her') — Kane is pulling her tunnel-room authorization and searching for a replacement day manager; not yet executed, no candidate named, nothing said to her about it as of this record. Ran London's recruitment event herself the rest of the evening, professional throughout, no further contact with Alexander before he left."
  situation: "First contact `EVT-001137`; second contact this span, `EVT-001150`."
```

### ENT-000319 — Linnea Bergström

Stockholm office day manager.

```yaml
id: ENT-000319
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001137
  game_date: "2026-09-28T13:41:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — day manager
scope: campaign
lifecycle: active
aliases:
  - name: "Linnea Bergström"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Stockholm office, day manager"
  home: "Stockholm, Sweden"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early forties, Swedish, tall and plain-spoken. Straight light-brown hair cut to the chin; direct blue eyes; no makeup. A grey wool sweater with the Pendragon dragon-head pin. Expression plain and unadorned. Reference setting: the Pendragon Guild Stockholm office, a low brick building with water and moored boats blurred through the window behind her, pale northern light."
  portrait: "assets/portraits/Linnea_Bergstrom_ENT-000319.png"
  location: "The Pendragon Guild Stockholm office, front desk."
  role: "Day manager of the Stockholm office front desk."
  condition: "Healthy; unawakened (Flux Sight `EVT-001137`)."
  capabilities: "Office administration, intake, night handover, and the standing practice of meeting Alexander in person on every arrival. Walks the building every evening and checks every lock by hand against a paper checklist."
  personality: "Plain, unadorned, states facts without decoration."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Plain and unadorned; states a fact the way she would state a coat size."
  agenda: "**2026-09-28 (`EVT-001137`).** Stayed past her shift to meet him at 20:41 Stockholm, said the reader was tested at 14:00 and 18:00 and the call panel confirmed with Detroit, gave him her lock checklist, and told him the night officer's own camera plainly. **Owes by 23:00 Stockholm (16:00 Chicago) tonight (his ruling: nothing outside the secured server):** the small drive removed from the desk, the camera reconnected to the secured server through the HQ line, Gunnar's receipt sent to Detroit for repayment, the paper Saturday handover note destroyed after its fact is typed into the front-office record, and HQ IT asked to mask the neighbour's lot. She tells Gunnar herself before his shift. The Stockholm tunnel stays closed until this is done."
  situation: "First contact `EVT-001137`."
```

### ENT-000320 — Gunnar Ekström

Stockholm office night officer.

```yaml
id: ENT-000320
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001137
  game_date: "2026-09-28T13:48:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Gunnar Ekström"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Stockholm office, night officer"
  home: "Stockholm, Sweden"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early sixties, Swedish, big and weathered, a retired policeman on night post. Grey hair cut very short; heavy-lidded pale-blue eyes; a broad face with a thick grey moustache. A dark wool watch coat over a guild night-officer shirt, a torch on his belt. Expression calm and self-directed. Reference setting: the Stockholm office entrance at night, a streetlamp and dark water blurred behind him."
  portrait: "assets/portraits/Gunnar_Ekstrom_ENT-000320.png"
  location: "The Pendragon Guild Stockholm office, night post."
  role: "Night officer of the Stockholm office; retired from the Stockholm police after twenty-six years."
  condition: "Healthy."
  capabilities: "Fitted his own rear-door camera on 2026-09-26 at his own expense, aimed at the lot behind the building (it also sees the neighbour's parking), with footage on a small drive in the desk that he reviews by hand each morning."
  personality: "Careful and self-directed; acts on his own initiative."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-28 (`EVT-001137`).** Not met. By the protagonist's ruling the camera stays and he may review it on shift, but the footage lives only on the secured server: the small drive goes, the guild repays his receipt, and no paper copy remains. Linnea Bergström tells him herself before his shift tonight."
  situation: "Named in `EVT-001137`; not yet in a scene."
```

### ENT-000321 — Kerem Aydoğan

Istanbul office night officer, met the office's first morning.

```yaml
id: ENT-000321
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001141
  game_date: "2026-09-29T06:16:00+03:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Kerem Aydoğan"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Istanbul office, night officer"
  home: "Istanbul, Turkey"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late twenties, Turkish, slim and a little breathless. Thick black hair, slightly tousled; eager dark-brown eyes; a thin, neatly trimmed beard. A dark guild night-officer jacket over a white shirt, a radio at his hip. Expression flustered and helpful. Reference setting: the Pendragon Guild Istanbul office in Levent at night, glass towers and city lights blurred behind him."
  portrait: "assets/portraits/Kerem_Aydogan_ENT-000321.png"
  location: "The Pendragon Guild Istanbul office, front desk."
  role: "Night officer of the Istanbul office."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, confirmed the reader, cameras and call panel working with Detroit overnight."
  personality: "Eager, a little flustered by an unannounced arrival, quick to offer help."
  want: "To be seen as more than the one who happened to be there when the founder arrived."
  fear: "Being blamed for the office not being ready, though it was."
  secret: "Not yet established."
  voice: "Quick, a little breathless, over-apologizes and then over-corrects."
  agenda: "**2026-09-29 (`EVT-001141`).** Met Alexander at the door before day shift started, gave the full walk-through unprompted, wrote out the event hall address twice so it wouldn't get lost."
  situation: "First contact `EVT-001141`."
```

### ENT-000322 — Elif Demir

Istanbul office day manager.

```yaml
id: ENT-000322
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001143
  game_date: "2026-09-29T12:48:00+03:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — day manager
scope: campaign
lifecycle: active
aliases:
  - name: "Elif Demir"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Istanbul office, day manager"
  home: "Istanbul, Turkey"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Mid-thirties, Turkish, composed and warm. Dark-brown hair in soft waves to the shoulders; knowing brown eyes; a quick smile. A cream silk blouse under a camel blazer with the Pendragon dragon-head pin. Expression warm, with a look that says she knows more happened than the log shows. Reference setting: the Pendragon Guild Istanbul office, fourth floor, a Levent skyline blurred through the windows behind her, bright daylight."
  portrait: "assets/portraits/Elif_Demir_ENT-000322.png"
  location: "The Pendragon Guild Istanbul office, front desk."
  role: "Day manager of the Istanbul office front desk."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, intake, the standing practice of meeting Alexander in person on every arrival; confirmed the hall, staffing and security systems ready for the day's event."
  personality: "Composed, warm, quick to smile; enjoys being ahead of a surprise."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Warm, direct, a knowing look when she's aware more happened than the log shows."
  agenda: "**2026-09-29 (`EVT-001143`).** Met Alexander properly at reception, confirmed the event ready, present for the tunnel opening — moved, made an unprompted joke about the coffee machine."
  situation: "First contact `EVT-001143`."
```

### ENT-000323 — Itai Barak

Israel's sole S-Rank; guild member, based in Tel Aviv, standing to be dispatched as needed; also invited into the independent S-Rank network.

```yaml
id: ENT-000323
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001142
  game_date: "2026-09-29T04:15:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: S-Rank hunter — Israel; guild member
scope: national
lifecycle: active
aliases:
  - name: "Itai Barak"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — member, Tel Aviv office"
  home: "Tel Aviv, Israel"
  rank: "**[S-Rank]** — Flux Sight `EVT-001142` (legendary, natural 100): Health 4,000/4,000, Mana 2,000/2,000, ceiling exactly S. Israel's sole S-Rank; six years the country's only reliable response, called as a volunteer rather than under contract."
  age: "Thirties."
  location: "Tel Aviv, Israel."
  condition: "Healthy."
  capabilities: "Techniques not yet authored — no combat scene has resolved with him."
  appearance: "Authored 2026-09-22 (real date), for portrait reference — no physical description existed in canon prior to this note. Mid-30s, Israeli, medium-tall and solidly built, a face weathered by six years as his country's only reliable S-Rank response rather than by age. Close-cropped black hair going grey at the temples; steady dark brown eyes; a heavy few-days' beard, black and grey-flecked, kept short rather than shaved clean; deep-set eyes shadowed by permanent exhaustion lines. A composed and unhurried bearing. A plain sand-colored field jacket over a dark t-shirt, well-worn desert boots — dresses like a man used to being the only one who shows up. Reference setting: a rooftop at dusk, the Tel Aviv skyline and Mediterranean coastline blurred behind him, warm fading light."
  portrait: "assets/portraits/Itai_Barak_ENT-000323.png"
  portrait_guild: "assets/portraits/Itai_Barak_ENT-000323_guild.png"
  personality: "Composed, direct, careful with a second language; states things plainly rather than performing gratitude."
  want: "Somewhere his Rank isn't a burden managed alone; to matter to people who chose him, not people who merely need an S-Rank."
  fear: "Not yet established beyond the isolation itself."
  secret: "Not yet established."
  voice: "Measured, a little formal, chooses words carefully; dry understatement rather than open emotion."
  knowledge: "Knows Alexander from the tour footage and the Tel Aviv event; has seen the guild's tunnel network opened in front of him. No channel to anything Bearer-only beyond what he directly witnessed (the tunnel's existence, not its mechanism)."
  agenda: "**2026-09-29 (`EVT-001142`).** Approached Alexander directly at the Tel Aviv event; accepted the guild on the spot, based in Tel Aviv, standing to be dispatched elsewhere, the option to relocate later held open. His mother, unwell, lives in Haifa and will not leave; he is her only close family. Also accepted an invitation into the independent S-Rank network (`OBJ-54`), pending a confirmed sparring date."
  situation: "Newly recruited; present for the Tel Aviv tunnel opening."
```

### ENT-000324 — Noa Shapira

Tel Aviv office day manager.

```yaml
id: ENT-000324
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001142
  game_date: "2026-09-29T02:53:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — day manager
scope: campaign
lifecycle: active
aliases:
  - name: "Noa Shapira"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Tel Aviv office, day manager"
  home: "Tel Aviv, Israel"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early forties, Israeli, compact and even-tempered. Dark curly hair cut short; steady hazel eyes; a strong, unfussy face. A plain olive button-down shirt with the Pendragon dragon-head pin, sleeves rolled. Expression matter-of-fact. Reference setting: the Pendragon Guild Tel Aviv office front desk near the Azrieli Center, hard Mediterranean light and glass towers blurred behind her."
  portrait: "assets/portraits/Noa_Shapira_ENT-000324.png"
  location: "The Pendragon Guild Tel Aviv office, front desk."
  role: "Day manager of the Tel Aviv office front desk."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, intake, the standing practice of meeting Alexander in person on every arrival; unsurprised by odd hours."
  personality: "Even, unhurried, hard to rattle."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Even and matter-of-fact; states things without embellishment."
  agenda: "**2026-09-29 (`EVT-001142`).** Met Alexander at reception, ran the event's tables, not present for the tunnel opening (outside the access list at the time). Confirmed as day manager the same morning."
  situation: "First contact `EVT-001142`."
```

### ENT-000325 — Marcus Feldspar

Chicago office night officer.

```yaml
id: ENT-000325
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001146
  game_date: "2026-09-29T08:03:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Marcus Feldspar"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Chicago office, night officer"
  home: "Chicago, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Mid-fifties, white, Chicagoan, heavyset and watchful, an ex-cop on night post. Grey hair in a short flat-top; tired blue eyes; a heavy jaw with evening stubble. A dark guild night-officer jacket over a navy shirt, a thermos on the desk. Expression patient and alert. Reference setting: the Pendragon Guild Chicago office lobby at night, the Loop's lit towers blurred through the glass behind him."
  portrait: "assets/portraits/Marcus_Feldspar_ENT-000325.png"
  location: "The Pendragon Guild Chicago office, night post."
  role: "Night officer of the Chicago office."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, round-the-clock cover per the standing policy."
  personality: "Not yet established — not met in a scene."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-29 (`EVT-001146`).** Named to fill Section 13.7.5's round-the-clock-cover gap on the Chicago office's record. Not yet in a scene."
  situation: "Named, not yet met."
```

### ENT-000326 — Dana Whitcross

Washington DC office night officer.

```yaml
id: ENT-000326
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001146
  game_date: "2026-09-29T08:03:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Dana Whitcross"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Washington DC office, night officer"
  home: "Washington DC, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early forties, Black, American, tall and composed, a former military policewoman. Short relaxed hair tucked behind her ears; alert dark-brown eyes; a strong, unsmiling face. A dark guild night-officer blazer over a white shirt, an earpiece. Expression watchful and professional. Reference setting: the Pendragon Guild Washington DC office at night, a stone façade and streetlights blurred behind her."
  portrait: "assets/portraits/Dana_Whitcross_ENT-000326.png"
  location: "The Pendragon Guild Washington DC office, night post."
  role: "Night officer of the Washington DC office."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, round-the-clock cover per the standing policy."
  personality: "Not yet established — not met in a scene."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-29 (`EVT-001146`).** Named to fill Section 13.7.5's round-the-clock-cover gap on the Washington DC office's record. Not yet in a scene."
  situation: "Named, not yet met."
```

### ENT-000327 — Pavel Novy

Prague office night officer.

```yaml
id: ENT-000327
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001146
  game_date: "2026-09-29T08:03:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Pavel Nový"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Prague office, night officer"
  home: "Prague, Czech Republic"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late fifties, Czech, lean and quiet. Thinning grey hair combed back; deep-set grey eyes; a long, lined face. A heavy dark wool coat over a guild night-officer sweater, a ring of keys at his belt. Expression reserved and steady. Reference setting: the Pendragon Guild Prague office doorway at night, lamplit cobbles and old stone blurred behind him."
  portrait: "assets/portraits/Pavel_Novy_ENT-000327.png"
  location: "The Pendragon Guild Prague office, night post."
  role: "Night officer of the Prague office."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, round-the-clock cover per the standing policy."
  personality: "Not yet established — not met in a scene."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-29 (`EVT-001146`).** Named to fill Section 13.7.5's round-the-clock-cover gap on the Prague office's record. Not yet in a scene."
  situation: "Named, not yet met."
```

### ENT-000328 — Stefan Wendt

Frankfurt office night officer.

```yaml
id: ENT-000328
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001146
  game_date: "2026-09-29T08:03:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Stefan Wendt"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Frankfurt office, night officer"
  home: "Frankfurt, Germany"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late forties, German, solidly built and precise. Short dark-blond hair with grey at the temples; level grey eyes; clean-shaven. A dark guild night-officer jacket zipped to the collar, a clipboard under one arm. Expression correct and unhurried. Reference setting: the Pendragon Guild Frankfurt office lobby at night, the lit skyline blurred behind him."
  portrait: "assets/portraits/Stefan_Wendt_ENT-000328.png"
  location: "The Pendragon Guild Frankfurt office, night post."
  role: "Night officer of the Frankfurt office."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, round-the-clock cover per the standing policy."
  personality: "Not yet established — not met in a scene."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-29 (`EVT-001146`).** Named to fill Section 13.7.5's round-the-clock-cover gap on the Frankfurt office's record. Not yet in a scene."
  situation: "Named, not yet met."
```

### ENT-000329 — Rosa Delfino

New York office night officer.

```yaml
id: ENT-000329
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001146
  game_date: "2026-09-29T08:03:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Rosa Delfino"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — New York office, night officer"
  home: "New York, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early fifties, Italian-American, sturdy and street-wise. Dark hair with grey threads, pulled into a practical bun; sharp brown eyes; laugh lines. A dark guild night-officer jacket over a black turtleneck, a radio on her shoulder. Expression wry and alert. Reference setting: the Pendragon Guild New York office at night, yellow cabs and neon blurred through the glass behind her."
  portrait: "assets/portraits/Rosa_Delfino_ENT-000329.png"
  location: "The Pendragon Guild New York office, night post."
  role: "Night officer of the New York office."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, round-the-clock cover per the standing policy."
  personality: "Not yet established — not met in a scene."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-29 (`EVT-001146`).** Named to fill Section 13.7.5's round-the-clock-cover gap on the New York office's record. Not yet in a scene."
  situation: "Named, not yet met."
```

### ENT-000330 — Theo Bramfield

Boston office night officer.

```yaml
id: ENT-000330
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001146
  game_date: "2026-09-29T08:03:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Theo Bramfield"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Boston office, night officer"
  home: "Boston, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Mid-thirties, white, New Englander, tall and quiet. Short brown hair; steady blue-grey eyes; a clean jaw and a small notch in one eyebrow. A dark wool guild night-officer peacoat. Expression reserved and polite. Reference setting: the Pendragon Guild Boston office front steps at night, red brick and gas-style streetlamps blurred behind him."
  portrait: "assets/portraits/Theo_Bramfield_ENT-000330.png"
  location: "The Pendragon Guild Boston office, night post."
  role: "Night officer of the Boston office."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, round-the-clock cover per the standing policy."
  personality: "Not yet established — not met in a scene."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-29 (`EVT-001146`).** Named to fill Section 13.7.5's round-the-clock-cover gap on the Boston office's record. Not yet in a scene."
  situation: "Named, not yet met."
```

### ENT-000331 — Yvette Solano

Miami office night officer.

```yaml
id: ENT-000331
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001146
  game_date: "2026-09-29T08:03:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Yvette Solano"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Miami office, night officer"
  home: "Miami, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Mid-forties, Puerto Rican-American, compact and energetic. Dark hair in a sleek ponytail; bright brown eyes; small gold hoops. A dark guild night-officer polo with the dragon-head mark, a radio at her hip. Expression alert and good-humoured. Reference setting: the Pendragon Guild Miami office at night, palm silhouettes and neon blurred through the glass behind her."
  portrait: "assets/portraits/Yvette_Solano_ENT-000331.png"
  location: "The Pendragon Guild Miami office, night post."
  role: "Night officer of the Miami office."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, round-the-clock cover per the standing policy."
  personality: "Not yet established — not met in a scene."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-29 (`EVT-001146`).** Named to fill Section 13.7.5's round-the-clock-cover gap on the Miami office's record. Not yet in a scene."
  situation: "Named, not yet met."
```

### ENT-000332 — Cole Ashworth

Houston office night officer.

```yaml
id: ENT-000332
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001146
  game_date: "2026-09-29T08:03:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Cole Ashworth"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Houston office, night officer"
  home: "Houston, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early forties, white, Texan, lanky and laconic. Short brown hair under a plain dark cap; slow, watchful hazel eyes; a sandy moustache. A dark guild night-officer jacket over a pressed shirt, cowboy boots. Expression laconic and steady. Reference setting: the Pendragon Guild Houston office entrance at night, a humid parking lot and sodium lights blurred behind him."
  portrait: "assets/portraits/Cole_Ashworth_ENT-000332.png"
  location: "The Pendragon Guild Houston office, night post."
  role: "Night officer of the Houston office."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, round-the-clock cover per the standing policy."
  personality: "Not yet established — not met in a scene."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-29 (`EVT-001146`).** Named to fill Section 13.7.5's round-the-clock-cover gap on the Houston office's record. Not yet in a scene."
  situation: "Named, not yet met."
```

### ENT-000333 — Julien Moreau

Paris office night officer.

```yaml
id: ENT-000333
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001146
  game_date: "2026-09-29T08:03:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Julien Moreau"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Paris office, night officer"
  home: "Paris, France"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late twenties, French, slim and composed. Dark wavy hair cut short at the sides; attentive brown eyes; a light stubble. A dark guild night-officer coat over a charcoal sweater. Expression polite and a little reserved. Reference setting: the Pendragon Guild Paris office doorway at night, a lamplit Haussmann street blurred behind him."
  portrait: "assets/portraits/Julien_Moreau_ENT-000333.png"
  location: "The Pendragon Guild Paris office, night post."
  role: "Night officer of the Paris office."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, round-the-clock cover per the standing policy."
  personality: "Not yet established — not met in a scene."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-29 (`EVT-001146`).** Named to fill Section 13.7.5's round-the-clock-cover gap on the Paris office's record. Not yet in a scene."
  situation: "Named, not yet met."
```

### ENT-000334 — Bram Voskuijlen

Amsterdam office night officer.

```yaml
id: ENT-000334
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001146
  game_date: "2026-09-29T08:03:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Bram Voskuijlen"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Amsterdam office, night officer"
  home: "Amsterdam, Netherlands"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Mid-fifties, Dutch, tall and broad. Grey-blond hair cropped close; mild blue eyes; a weathered, ruddy face. A dark guild night-officer jacket, a bicycle helmet hooked at his belt. Expression calm and unhurried. Reference setting: the Pendragon Guild Amsterdam office at night, a canal and lit windows blurred behind him."
  portrait: "assets/portraits/Bram_Voskuijlen_ENT-000334.png"
  location: "The Pendragon Guild Amsterdam office, night post."
  role: "Night officer of the Amsterdam office."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, round-the-clock cover per the standing policy."
  personality: "Not yet established — not met in a scene."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-29 (`EVT-001146`).** Named to fill Section 13.7.5's round-the-clock-cover gap on the Amsterdam office's record. Not yet in a scene."
  situation: "Named, not yet met."
```

### ENT-000335 — Colby Fenwick

Dallas office night officer.

```yaml
id: ENT-000335
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001146
  game_date: "2026-09-29T08:03:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Colby Fenwick"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Dallas office, night officer"
  home: "Dallas, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early thirties, white, Texan, athletic and clean-cut. Short brown hair; friendly blue eyes; a square jaw. A dark guild night-officer polo with the dragon-head mark, a duty belt. Expression polite and alert. Reference setting: the Pendragon Guild Dallas office entrance at night, a lit plaza blurred behind him."
  portrait: "assets/portraits/Colby_Fenwick_ENT-000335.png"
  location: "The Pendragon Guild Dallas office, night post."
  role: "Night officer of the Dallas office."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, round-the-clock cover per the standing policy."
  personality: "Not yet established — not met in a scene."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-29 (`EVT-001146`).** Named to fill Section 13.7.5's round-the-clock-cover gap on the Dallas office's record. Not yet in a scene."
  situation: "Named, not yet met."
```

### ENT-000336 — Priya Sandal

Los Angeles office night officer.

```yaml
id: ENT-000336
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001146
  game_date: "2026-09-29T08:03:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Priya Sandal"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Los Angeles office, night officer"
  home: "Los Angeles, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late twenties, Indian-American, slim and poised. Long black hair in a sleek braid; alert dark eyes; a small nose stud. A dark guild night-officer jacket over a grey top, an earpiece. Expression cool and attentive. Reference setting: the Pendragon Guild Los Angeles office at night, palm silhouettes and city glow blurred behind her."
  portrait: "assets/portraits/Priya_Sandal_ENT-000336.png"
  location: "The Pendragon Guild Los Angeles office, night post."
  role: "Night officer of the Los Angeles office."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, round-the-clock cover per the standing policy."
  personality: "Not yet established — not met in a scene."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-29 (`EVT-001146`).** Named to fill Section 13.7.5's round-the-clock-cover gap on the Los Angeles office's record. Not yet in a scene."
  situation: "Named, not yet met."
```

### ENT-000337 — Ronan Blakely

Seattle office night officer.

```yaml
id: ENT-000337
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001146
  game_date: "2026-09-29T08:03:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Ronan Blakely"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Seattle office, night officer"
  home: "Seattle, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late forties, white, Pacific Northwesterner, rugged and quiet. Shaggy greying brown hair; steady green eyes; a short greying beard. A dark waxed-canvas guild night-officer jacket, rain on the shoulders. Expression calm and reserved. Reference setting: the Pendragon Guild Seattle office entrance on a rainy night, wet pavement reflecting streetlights behind him."
  portrait: "assets/portraits/Ronan_Blakely_ENT-000337.png"
  location: "The Pendragon Guild Seattle office, night post."
  role: "Night officer of the Seattle office."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, round-the-clock cover per the standing policy."
  personality: "Not yet established — not met in a scene."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-29 (`EVT-001146`).** Named to fill Section 13.7.5's round-the-clock-cover gap on the Seattle office's record. Not yet in a scene."
  situation: "Named, not yet met."
```

### ENT-000338 — Marisol Ontario

San Francisco office night officer.

```yaml
id: ENT-000338
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001146
  game_date: "2026-09-29T08:03:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Marisol Ontario"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — San Francisco office, night officer"
  home: "San Francisco, USA"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Late thirties, Filipina-American, compact and steady. Black hair cut in a blunt bob; calm dark eyes; a small mole on one cheek. A dark guild night-officer jacket over a grey hoodie. Expression composed and watchful. Reference setting: the Pendragon Guild San Francisco office at night, fog-softened streetlights and a hill street blurred behind her."
  portrait: "assets/portraits/Marisol_Ontario_ENT-000338.png"
  location: "The Pendragon Guild San Francisco office, night post."
  role: "Night officer of the San Francisco office."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, round-the-clock cover per the standing policy."
  personality: "Not yet established — not met in a scene."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-29 (`EVT-001146`).** Named to fill Section 13.7.5's round-the-clock-cover gap on the San Francisco office's record. Not yet in a scene."
  situation: "Named, not yet met."
```

### ENT-000339 — Tamar Golan

Tel Aviv office night officer.

```yaml
id: ENT-000339
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001146
  game_date: "2026-09-29T08:03:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Tamar Golan"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Tel Aviv office, night officer"
  home: "Tel Aviv, Israel"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Mid-thirties, Israeli, athletic and direct. Dark hair in a short practical ponytail; sharp green eyes; sun-browned skin. A dark guild night-officer jacket over an olive T-shirt. Expression direct and unimpressed. Reference setting: the Pendragon Guild Tel Aviv office entrance at night, lit towers and palm silhouettes blurred behind her."
  portrait: "assets/portraits/Tamar_Golan_ENT-000339.png"
  location: "The Pendragon Guild Tel Aviv office, night post."
  role: "Night officer of the Tel Aviv office."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, round-the-clock cover per the standing policy."
  personality: "Not yet established — not met in a scene."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-29 (`EVT-001146`).** Named to fill Section 13.7.5's round-the-clock-cover gap on the Tel Aviv office's record. Not yet in a scene."
  situation: "Named, not yet met."
```

### ENT-000340 — Baran Yılmaz

Istanbul office night officer.

```yaml
id: ENT-000340
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001146
  game_date: "2026-09-29T08:03:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Baran Yılmaz"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Istanbul office, second night officer"
  home: "Istanbul, Turkey"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early fifties, Kurdish-Turkish, heavyset and calm. Thick black hair greying at the sides; patient dark eyes; a full dark moustache. A dark guild night-officer jacket over a knitted vest, a tulip glass of tea in hand. Expression calm and patient. Reference setting: the Pendragon Guild Istanbul office front desk at night, city lights blurred behind him."
  portrait: "assets/portraits/Baran_Yilmaz_ENT-000340.png"
  location: "The Pendragon Guild Istanbul office, night post."
  role: "Second night officer of the Istanbul office, alongside Kerem Aydoğan."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, round-the-clock cover per the standing policy."
  personality: "Not yet established — not met in a scene."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-29 (`EVT-001146`).** Named to complete the Istanbul office's round-the-clock cover roster alongside Kerem Aydoğan. Not yet in a scene."
  situation: "Named, not yet met."
```

### ENT-000341 — Nigel Harcourt

London office night officer.

```yaml
id: ENT-000341
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001146
  game_date: "2026-09-29T08:03:00-05:00"
  real_date: "2026-09-21"
type: Character
subtype: guild office staff — night officer
scope: campaign
lifecycle: active
aliases:
  - name: "Nigel Harcourt"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — London office, night officer"
  home: "London, UK"
  appearance: "**Authored 2026-09-23 (real date), for portrait reference — no physical description existed in canon prior to this note.** Early sixties, English, tall and gaunt, a retired soldier on night post. Short white hair; sharp pale-blue eyes; a clipped white moustache. A dark guild night-officer overcoat buttoned high, polished shoes. Expression dry and correct. Reference setting: the Pendragon Guild London office doorway at night, a wet side street and a red phone box blurred behind him."
  portrait: "assets/portraits/Nigel_Harcourt_ENT-000341.png"
  location: "The Pendragon Guild London office, night post."
  role: "Night officer of the London office."
  condition: "Healthy; unawakened."
  capabilities: "Office administration, night handover, round-the-clock cover per the standing policy."
  personality: "Not yet established — not met in a scene."
  want: "Not yet established."
  fear: "Not yet established."
  secret: "Not yet established."
  voice: "Not yet established; not met in a scene."
  agenda: "**2026-09-29 (`EVT-001146`).** Named to fill Section 13.7.5's round-the-clock-cover gap on the London office's record. Not yet in a scene."
  situation: "Named, not yet met."
```

---

## Harlan Boyce — Incident Review, BGM Region V

Line reviewer on the Winnetka lakefront instrument review (`OBJ-68`); named in canon since the 09-21 incident-review request, first met `EVT-001183`.

```yaml
id: ENT-000352
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001183
  game_date: "2026-09-30T14:45:00-05:00"
  real_date: "2026-09-24"
type: Character
subtype: BGM Region V official — Incident Review line reviewer
scope: campaign
lifecycle: active
aliases:
  - name: "Harlan Boyce"
    quality: current
canonical_state:
  affiliation: "BGM Region V — Incident Review, line reviewer"
  home: "Chicago, USA"
  appearance: "Forties, lean, thinning hair with reading glasses pushed up into it; a grey suit worn all day; a BGM folder carried under one arm or held flat against his chest. **Extended 2026-09-25 (real date), for portrait reference:** White, narrow-faced and clean-shaven, the thinning hair light brown going grey; tired, attentive grey-blue eyes that look up over the glasses when he stops reading. A white shirt and a loosened dark tie under the grey suit, a BGM photo ID on a lanyard. Expression courteous and patient, a man about to apologise for a procedure. Reference setting: the BGM Region V Field Office in Chicago, a ninth-floor Incident Review corridor with frosted glass and filing cabinets blurred behind him, flat fluorescent office light."
  portrait: "assets/portraits/Harlan_Boyce_ENT-000352.png"
  location: "BGM Region V Field Office (`ENT-000093`), Chicago — Incident Review, ninth floor."
  rank: "[D-Rank] — Flux Sight at `EVT-001183`: HP 100/100, MP 50/50, ceiling D reached."
  role: "Line reviewer on the Winnetka lakefront instrument review; had the lobby desk flag Alexander's file on 09-21 so he would be rung when Alexander came in."
  condition: "Healthy."
  capabilities: "A former field sensor. Techniques (Read the Hand, `EVT-001183`): Pressure Gauge -- reads a Gate's mana pressure from outside the mouth in about forty seconds, standing still, eyes shut; Trace -- follows a residual mana trail up to a few hours old."
  personality: "Precise, dogged, courteous; apologises for a procedure and follows it anyway."
  knowledge: "What Alexander said aloud at `EVT-001183`: that he read the lakefront Gate as S from outside the mouth, at a run, nothing concealed, and that he can see an awakened person's Rank and Mana (named Boyce's own as D and 50). The signed statement's text. His own review's records: the 07:42 card, Renata's hold, the drone confirmation, the 08:37 clear. No channel to Flux Sight by name, the System, or anything not said aloud."
  want: "The lakefront finding closed honestly, with his name on it -- why a certified instrument carded an S-Rank Gate E on a public beach -- because an instrument that wrong once is wrong somewhere else now (Read the Want, Legendary)."
  fear: "That the finding is being written over his head: Deputy Director Strand signed the request he had chased for a week, and he fears signing a conclusion he did not reach."
  secret: "Two sheets were taken from his review folder upstairs on 09-24 and never returned; he knows, and has said nothing. He now keeps Alexander's signed statement on his person, not in the folder."
  voice: "Reads dates and times from memory; glasses down to read and up to look at a person; apologises for procedure, then does it."
  beliefs: []
  agenda: "**2026-09-30 (`EVT-001183`).** Rung by the lobby desk, came down at once, asked twenty minutes and kept under; got a signed witness statement -- the review's first evidence not BGM's own -- and his finding turned to the instrument and the carding (E and D Gates carded from mast-mounted remote instruments, no sensor sent to the tape). Walked Alexander up to Farraday. Weakness (Read the Learner): cannot make those above him want a finding. Since `EVT-001185`, Director Okafor knows a statement exists and that he holds it."
  situation: "First met `EVT-001183`. Holds Alexander's signed statement on his person."
```

---

## Andrei Bratu — The Families of the Jiu Valley

Author of the families' letter; C-Rank; brother of Ionuț Bratu, a rotation hunter killed on the Jiu line. First met `EVT-001196`.

```yaml
id: ENT-000353
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001196
  game_date: "2026-10-01T04:13:00-05:00"
  real_date: "2026-09-25"
type: Character
subtype: civilian organiser, awakened C-Rank
scope: campaign
lifecycle: active
aliases:
  - name: "Andrei Bratu"
    quality: current
canonical_state:
  affiliation: "Familiile Văii Jiului (the Families of the Jiu Valley), organiser"
  home: "the Jiu Valley towns, Romania"
  appearance: "Mid-thirties, lean, a close dark beard, tired eyes; a work jacket over a black sweater."
  location: "The Jiu Valley fence, 2026-10-01."
  rank: "[C-Rank] — Flux Sight at `EVT-001196`: HP 250/250, MP 125/125, ceiling C."
  role: "Wrote the letter, organised the gathering at the fence, read the 211 names."
  condition: "Healthy."
  capabilities: "Stonefoot (Read the Hand): a rooted stance no force short of his own Rank's weight can shift; never used in a Gate."
  personality: "Careful, dutiful, carries everything himself."
  knowledge: "What was said at the fence (`EVT-001196`-`EVT-001199`): Alexander was unawakened when the Exclusion began; the guild takes the valley's young awakened, never above their Rank, with international insurance; an office in Romania is promised as soon as he can. No channel to anything Bearer-only."
  want: "The names read aloud and heard; now, an answer to who signed the rotations."
  fear: "That his brother becomes a number in the story of how it ended."
  secret: "Not yet established."
  voice: "Careful English with a Romanian cadence; sets each word down; translates for others a half-beat behind and softens nothing."
  beliefs: []
  agenda: "**2026-10-01 (`EVT-001196`-`EVT-001199`).** Read 211 names at noon; asked Alexander where to stand rather than telling him; took *who signed the rotations* as the families' next question."
  situation: "First met `EVT-001196`."
```

---

## Viorica Bratu — Ionuț's Mother

Mother of Andrei and of Ionuț Bratu. Unawakened. First met `EVT-001197`.

```yaml
id: ENT-000354
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001197
  game_date: "2026-10-01T04:21:00-05:00"
  real_date: "2026-09-25"
type: Character
subtype: civilian, unawakened
scope: campaign
lifecycle: active
aliases:
  - name: "Viorica Bratu"
    quality: current
canonical_state:
  affiliation: "Familiile Văii Jiului"
  home: "the Jiu Valley towns, Romania"
  appearance: "Seventies, small and weathered, a black headscarf, a good coat buttoned to the throat."
  location: "The Jiu Valley fence, 2026-10-01."
  rank: "Unawakened."
  role: "Ionuț's mother; grandmother of his five-year-old daughter."
  condition: "Grieving; composed."
  capabilities: "None awakened."
  personality: "Gives rather than asks."
  knowledge: "What was said at the fence; that Alexander held her son's photograph."
  want: "To put Ionuț's photograph in the hands of the man who ended it, so he is one face and not a name (Read the Want, `EVT-001197`)."
  fear: "That her gratitude betrays her son."
  secret: "Not yet established."
  voice: "Romanian only, slow, looking straight up at whoever she addresses; *mulțumesc*."
  beliefs: []
  agenda: "**2026-10-01 (`EVT-001197`-`EVT-001198`).** Brought Ionuț's photograph; took it back: *nobody made that promise to Ionuț.*"
  situation: "First met `EVT-001197`."
```

---

## Gheorghe Dincă — Viorica's Brother

Ionuț's uncle, a miner. Unawakened. First met `EVT-001197`.

```yaml
id: ENT-000355
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001197
  game_date: "2026-10-01T04:21:00-05:00"
  real_date: "2026-09-25"
type: Character
subtype: civilian, unawakened
scope: campaign
lifecycle: active
aliases:
  - name: "Gheorghe Dincă"
    quality: current
canonical_state:
  affiliation: "Familiile Văii Jiului"
  home: "the Jiu Valley towns, Romania"
  appearance: "Sixties, grey-haired, thick through the shoulders, a miner's hands."
  location: "The Jiu Valley fence, 2026-10-01."
  rank: "Unawakened."
  role: "The family's anger, for six years."
  condition: "Grieving, for the first time in six years."
  capabilities: "None awakened."
  personality: "Loud, blunt, argues every sentence."
  knowledge: "What Alexander said at the fence: unawakened in 2020; several S-Ranks died; whoever sent low Ranks should answer for it."
  want: "To be told it could have been done sooner; underneath, that it was not his fault (Read the Want, `EVT-001197`)."
  fear: "That if he stops being angry he will have to grieve."
  secret: "He drove Ionuț to the rotation sign-up office the second winter and told him it was good money."
  voice: "Loud, cracked Romanian; jabs a finger; argues with the answer he expected."
  beliefs: []
  agenda: "**2026-10-01 (`EVT-001197`-`EVT-001198`).** Demanded *where were you*; given a place for the anger other than his own hands, he broke and wept; nodded once to Alexander at the end."
  situation: "First met `EVT-001197`."
```

---

## Ioana Stoica — D-Rank, the Jiu Valley

One of the valley's five young awakened; the one who asks. First met `EVT-001198`.

```yaml
id: ENT-000356
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001198
  game_date: "2026-10-01T04:30:00-05:00"
  real_date: "2026-09-25"
type: Character
subtype: awakened D-Rank, prospective guild member
scope: campaign
lifecycle: active
aliases:
  - name: "Ioana Stoica"
    quality: current
canonical_state:
  affiliation: "none yet; bound for the Pendragon Guild's Prague office"
  home: "Petroșani, Romania"
  appearance: "Tall, early twenties, hair scraped back hard, a cheap parka."
  location: "The Jiu Valley fence, 2026-10-01."
  rank: "[D-Rank] — Flux Sight at `EVT-001198`: HP 100/100, MP 50/50, ceiling D."
  role: "Speaks for the five young awakened (three E, two D)."
  condition: "Healthy."
  capabilities: "Spark Line (Read the Hand): a thrown filament of mana, a ranged striker's gift."
  personality: "Blunt, practical, looks for the catch first."
  knowledge: "The terms Alexander gave: go where sent, never above your Rank, mining teams possible, pay a little above the US standard, international insurance as in New York; no Romanian office yet."
  want: "A way off the fence that is not the rotation."
  fear: "That next spring she says yes to double pay anyway, because her mother cannot work."
  secret: "Not yet established."
  voice: "Schoolroom-good English, blunt; numbers first; *what is the clause?*"
  beliefs: []
  agenda: "**2026-10-01 (`EVT-001198`).** Asked for the clause and got it; *we go to Prague*: the Sunday night bus from Petroșani, Prague by Monday afternoon, all five."
  situation: "First met `EVT-001198`; five travel to Prague Monday 10-05."
```

---

## Tamsin Okoro — Chicago Branch Team Lead

C-Rank team lead at the Pendragon Guild's Chicago branch; ran its first emergency contract. First met `EVT-001202`.

```yaml
id: ENT-000357
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001202
  game_date: "2026-10-01T06:13:00-05:00"
  real_date: "2026-09-25"
type: Character
subtype: guild hunter — C-Rank team lead
scope: campaign
lifecycle: active
aliases:
  - name: "Tamsin Okoro"
    quality: current
canonical_state:
  affiliation: "Pendragon Guild — Chicago branch, C-Rank team lead"
  home: "Chicago, USA"
  appearance: "Early thirties, tall, Black, hair cropped close; guild jacket over long-worn plate."
  location: "Evanston, Central Street, handing over to Region V."
  rank: "[C-Rank] — Flux Sight at `EVT-001202`: HP 250/250, MP 125/125, ceiling C."
  role: "Leads the Chicago branch's C-Rank team; took the Region V handover and the harvest at Central Street."
  condition: "Healthy."
  capabilities: "Crossguard (Read the Hand): a parry that turns a blow's force down into her footing."
  personality: "Brisk, exacting of herself, easy with her crew."
  knowledge: "That Alexander cleared Central Street before her team arrived and waived the harvest to the branch; public knowledge of him as founder and S-Rank."
  want: "To prove the branch can answer without the founder."
  fear: "That arriving second is how he will see her team."
  secret: "Not yet established."
  voice: "Brisk South Side cadence; calls him *boss*; turns praise into a list of what she would do faster."
  beliefs: []
  agenda: "**2026-10-01 (`EVT-001202`).** Emergency contract at 06:03, rolled 06:04, arrived second; told genuinely they were fast; took the handover and the cores for the branch."
  situation: "First met `EVT-001202`."
```

---

## Han Seung-woo — Seoul Guildmaster

A-Rank guildmaster in Seoul, about 300 hunters, whose corporate sponsor withdrew in August; offered his whole guild to the Pendragon Guild through Kane. First contact `EVT-001203`, by text.

```yaml
id: ENT-000358
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001203
  game_date: "2026-10-01T07:02:00-05:00"
  real_date: "2026-09-25"
type: Character
subtype: guildmaster, awakened A-Rank
scope: campaign
lifecycle: active
aliases:
  - name: "Han Seung-woo"
    quality: current
canonical_state:
  affiliation: "his own Seoul guild; joining the Pendragon Guild whole, pending Korea's national authority"
  home: "Seoul, South Korea"
  appearance: "Not yet seen."
  location: "Seoul."
  rank: "[A-Rank] — per Kane; not read by Flux Sight."
  role: "Guildmaster; candidate Seoul office manager, pending the meeting."
  condition: "Healthy, as far as is known."
  capabilities: "A-Rank; runs about 300 hunters."
  personality: "Formal, careful, protective of his people."
  knowledge: "That the Pendragon Guild will take his whole guild, and that Alexander wants to meet before naming him office manager."
  want: "His people kept together under someone who will not sell them."
  fear: "That his guild ends up a nameplate on someone else's balance sheet."
  secret: "Not yet established."
  voice: "Formal written English; *honoured*; his people should see who they work for, not only read it."
  beliefs: []
  agenda: "**2026-10-01 13:26-13:28 (`EVT-001219`).** The hall confirmed for Saturday 09:00 Seoul, all his people attending, those on leave asked to; offered a car to Incheon (declined: *I will be on time*). The sponsor's lawyers asked to attend; told **11:00, in the small room, and nothing before**. *Thank you for not letting them come first. They have been in every room this month before we were.* *I am honoured.* **Prior:** **2026-10-01 (`EVT-001203`).** Accepted by text; cannot leave Seoul while the former sponsor's lawyers are there; meeting Saturday morning Seoul (Friday about 19:00 Chicago), the whole guild in the hall."
  situation: "Known only by Kane's account and his own text; Dario met him at a joint exercise in Busan."
```

### ENT-000359 — Margaret Hale

Director of the Bureau of Gate Management, Washington. Named in play by Elias Kane at `EVT-001219`, collision-checked clean with `-StrictSurnames`; met at `EVT-001223`.

```yaml
id: ENT-000359
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001223
  game_date: "2026-10-01T18:47:00-05:00"
  real_date: "2026-09-26"
type: Character
subtype: Director, Bureau of Gate Management
scope: national
lifecycle: active
aliases:
  - name: "Margaret Hale"
    quality: current
canonical_state:
  affiliation: "BGM National -- Director"
  home: "Washington DC, USA"
  appearance: "Late fifties; steel-grey hair cut short; a navy suit; reading glasses pushed up on her head."
  location: "BGM National Headquarters, Washington DC, room 7C, 2026-10-01 evening (`EVT-001223`)."
  rank: "[C-Rank] -- Flux Sight: Health 250/250, Mana 125/125 (`EVT-001223`)."
  role: "Director of the Bureau; career Bureau, came up through Region II operations."
  condition: "Healthy."
  capabilities: "C-Rank sensor: a range-read counting awakened within about thirty metres and banding them by Rank, no pools (Read the Hand, `EVT-001223`)."
  personality: "Brisk; decides in the room, not after."
  knowledge: "Okafor's letter; Evanston as Region V filed it; the standing agreement's record as Renata read it; that he was in Chicago an hour before Washington -- and asked not how. No channel to anything Bearer-only."
  want: "To walk out with the guild inside a national framework she signed, not one that happened to her."
  fear: "Being the Director under whom the Bureau's strongest simply routed around it."
  secret: "Can't let a meeting end without something in writing: a verbal yes once got a crew killed at a Region II break (Read the Learner, `EVT-001223`)."
  voice: "One short question at a time, then she waits; writes the agreement herself while she talks."
  beliefs: []
  agenda: "**2026-10-01 (`EVT-001223`).** Wrote and signed the six-clause memorandum with him in 7C, Renata witnessing; told him *don't make me regret writing it down*; told Kane *they should have kept you*. Owes: scanned copies within the hour; her paragraph to the last two regional directors (IX, X) by 21:00; Pike's cost of clause six by morning."
  situation: "Signed the memorandum; advising all regional directors to accept the guild's filings."
```

### ENT-000360 — Gideon Pike

Assistant Director, Field Coordination, BGM National. Named in Kane's brief (`EVT-001222`), collision-checked clean with `-StrictSurnames`; met at `EVT-001223`.

```yaml
id: ENT-000360
canonical_record: REC-000077
schema_version: "0.1.8"
status: active
provenance:
  source: EVT-001223
  game_date: "2026-10-01T18:47:00-05:00"
  real_date: "2026-09-26"
type: Character
subtype: Assistant Director, Field Coordination, BGM National
scope: national
lifecycle: active
aliases:
  - name: "Gideon Pike"
    quality: current
canonical_state:
  affiliation: "BGM National -- Field Coordination"
  home: "Washington DC, USA"
  appearance: "Forties; pressed and pleasant; a tablet in a leather cover; a smile that has worked in many rooms."
  location: "BGM National Headquarters, Washington DC, 2026-10-01 evening (`EVT-001223`)."
  rank: "Unawakened (Flux Sight, `EVT-001223`)."
  role: "His office drafted the September 'coordination visibility' reporting line on Alexander that Kane refused."
  condition: "Healthy."
  capabilities: "Policy; drafting."
  personality: "Courteous, patient, persistent."
  knowledge: "Kane's refusal in September; the standing agreement as Renata read it into the room; the memorandum. No channel to anything Bearer-only."
  want: "A named channel telling the Bureau where the one man who can be anywhere is; he believes it is the safe thing."
  fear: "An unaccountable S-Rank: the next Jiu Valley decided by one person nobody can reach."
  secret: "Can't hear *no* as an answer, only *not yet, rephrase* -- twenty years of drafting policy (Read the Learner, `EVT-001223`)."
  voice: "*We'd simply like to...*; pleasant constructions, never a raised word."
  beliefs:
    - claim: "The liaison will be accepted in a later form."
      ground: "Left 7C with the draft unsent and the Director's clause six to cost."
      confidence: confident
      accuracy: unknown
      since: EVT-001223
  agenda: "**2026-10-01 (`EVT-001223`).** Came forty minutes early; offered the national liaison as *coordination, not surveillance*; set aside by the Director. Owes the cost of clause six (Chicago's rate everywhere) by morning. Renata expects him to try again in about a month, now against a signed document."
  situation: "The liaison draft unsent."
```
