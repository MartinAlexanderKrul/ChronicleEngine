# Gatefall — World Rule Profile 1.98

**File:** `worlds/gatefall/206_WORLD_RULE_PROFILE.md`
**Class:** World rule content (Decision 062): authoritative on behavior in its declared scope; owns no Persistent Object.
**World:** Gatefall
**Profile Version:** 1.98
**Engine Compatibility:** 0.2.0; Data Model 0.1.6
**Status:** Active
**Compatibility Status:** frozen at version **1.98** (Rules Section 14.6, Decision 074), declared on repository date 2026-08-24. **Version 1.98 makes distance actually cost something.** One change: 1.97's travelling step doubled past the city, which put the far side of the world at 40 Mana against a four-figure pool — a rounding error. Past the city every further step out now costs **five times the last** — **25** another city in the same country or state, **125** another country, **625** another continent — with **1,000** as a deliberate terminal cap rather than a sixth multiplication. Inside the city nothing moves: 1, 3, 4, 5 as 1.97 set them, because a positioning class should position freely. **The anchored step stays flat at 5 from any range**, which is now a two-hundredfold saving at the top of the ladder and makes the `Agility ÷ 20` cap the class's real strategic decision. See `worlds/gatefall/migrations/1.97_to_1.98.md`. Prior version narrative, retained: **Version 1.97 splits Riftwalker's two kinds of step properly, on an owner ruling that 1.96 had them the wrong way round.** 1.96 priced every step by ledgered container and put one blanket instance-boundary rule across all of them. Now the **ordinary travelling step carries the restrictions** — it never crosses an instance boundary in either direction, so no stepping out of a Gate into the street — and its cost runs on **soft described bands** rather than measured containers: **1 in line of sight, 3 close by, 4 further, 5 anywhere in the metro, doubling at each step past it.** The in-scene step drops from Mana 6 to **1**; its price was always the once-per-exchange line. And an **anchored step is unrestricted and flat at 5 Mana from any distance** — it crosses out of a Gate, a red gate or an instant dungeon and back in, which is the class's real power and the only answer in the profile to an anomaly authored with *no retreat*. **Two exceptions only**: the Section 8.3 penalty zone and the Section 18.2 class trial, the two instances the System builds and drops on him, where the forge has no back door. See `worlds/gatefall/migrations/1.96_to_1.97.md`. Prior version narrative, retained: **Version 1.96 makes Riftwalker a class instead of a rune the Bearer already owned.** Its headline ability was a line-of-sight teleport granting +1 to the follow-up — which is Flash Step, a D-Rank rune, with a shorter window and a per-exchange lock — while the travel it actually sells sat in a side clause capped at one or two steps a scene. **Flash Step is now bound to perception at every Rank**, losing the `Blind step` category and the un-authored *"100 m, sight or no sight"* the live sheet had acquired from Riftwalker's own table; A-Rank grants `Interpose` instead. **Rift-step's travelling step reaches anywhere he has personally stood**, priced by ledgered container rather than metres, and **arrival is blind** — geometry without contents. **Anchors stop being a shortcut and become held ground**: the only places he arrives knowing what is there, plus the answering step and warded ground on the rungs. No rift-step crosses an instance boundary in either direction, at any Rank. Raised and actioned as `F-049`. See `worlds/gatefall/migrations/1.95_to_1.96.md`. Prior version narrative, retained: **Version 1.95 stops making the player wait for the world.** Four changes, none of which touches a Rank, reward, timer or population. **Adoption opens at escalation tier IV rather than III** — 33 in-fiction days have run under a profile that called the break rate *"climbing"* and implemented it flat, and the ramp's own arithmetic puts the accrued credit past a rung, so starting at III would certify that nothing had happened. **The forward ramp goes from two rungs to four** (IV, V, VI, VII), reaching the same shoulder in stages the trade can feel arriving, at five, four, three and two in-fiction days, with the credit threshold cut from 20 to 6 so pressure stays competitive with the clock. New **Section 9.5.1** gives the Bearer his own anomaly band, read from System Rank — **21% at A and 31% at S against the world's 8%** — because the Bible calls the rising break rate *"an audition mill"* and a candidate the process invested in does not meet the world's average Gate. And new **Section 8.4.7, the crucible floor**, authors the Bible's own *"it will not waste a candidate on a slow week"*: two quiet days owe a guaranteed audition, three owe a sited qualifying crisis, four double its anomaly roll. It creates conditions, never a quest. See `worlds/gatefall/migrations/1.94_to_1.95.md`. Prior version narrative, retained: **Version 1.94 sets 1.93's clock to the speed the campaign is actually played at.** 1.93 authored the escalation correctly and calibrated all three of its rates against a decade-scale timeline rather than against a world that produced a carded S-Rank in 33 in-fiction days, so none of them could fire inside the story. The ramp's first rung moves from **184 days to 14** and the schedule halves from there. **Escalation credit now accrues on every break**, not only on catastrophes — the Bible's own clue-line is a chart of break *frequency*, and the A-Rank-break line 1.93 priced was reachable about once per seven thousand days. And a Section 9.12 audition **always** rolls Section 9.6 rather than rolling the tier's band, because the Bible names red-gate anomalies as what an audition *is*; a red gate moves from roughly one per 150 days to one per twelve. No distribution, Rank, reward, timer or population changes. See `worlds/gatefall/migrations/1.93_to_1.94.md`. Prior version narrative, retained: **Version 1.93 starts the clock the World Bible has always said was running.** Section 9.2 stated one Rank distribution as a constant while `200_WORLD_BIBLE.md` Section 9 states outright that the break rate is a countdown on a geometric curve along which *Gates get denser, Ranks climb, breaks grow more frequent* — so a hundred in-fiction days had run inside a world whose central mystery is that it is accelerating, with no acceleration in it. The distribution becomes **five escalation tiers**, of which **tier III is today's numbers unchanged**; the tier advances on a fixed halving schedule and is pulled forward, never back, by the districts and Scars Section 9.1.3 already tracks. Section 9.5's anomaly band widens with it. And new **Section 9.12** authors the **audition** — a share of Gates sited on the Bearer's own route whose true Rank is read from his Section 6.7 Combat Tier rather than from the world, which roll Section 9.6 even when confirmed, and which do not fire at all if he brings a party meeting the Section 9.4 legal minimum. Being tested is the price of working light. See `worlds/gatefall/migrations/1.92_to_1.93.md`. Prior version narrative, retained: **Version 1.92 gives a Bearer who has outgrown the world somewhere left to go.** Four changes against `F-046`, none of which creates a Gate or softens a number. Section 6.7's Combat Tier now counts an **automatic** defensive effect as standing protection — the excluded thing is a resource the Bearer must choose to spend, never one that fires on its own — because the live Bearer bought two accessories expressly to move that axis and the formula declined to read them. Section 7.4's combat-skill test becomes **contest rather than danger**: an opposed resolution against an opponent who could beat him, at a cost, which leaves all six prior no-credit settlements correct while opening sparring through the Section 6.2.1 pulled strike. New **Section 9.11 Directed Assignment** authors the channel Sections 9.1, 9.3, 9.4 and 12.3 all describe and none delivered — A-Rank and S-Rank work reaches a carded hunter by a regulator's call list, not by a board a 90%-per-day take rate empties before he sees it. And Section 17 gains the **proving key**, the one key whose Rank is the Bearer's own Combat Tier, snapshotted when it is spent and priced at twice its tier's ordinary key. See `worlds/gatefall/migrations/1.91_to_1.92.md`. Prior version narrative, retained: **Version 1.91 lets Loner mean what its own criterion proves.** The title's earning condition has always been a Gate cleared alone; its passive read *while no allied hunter shares the Gate*, which switched the bonus off the instant the Bearer stood on ground that was not one — including `ENT-000217`, an anomaly this same span establishes is expressly not a Gate. The passive now reads *while no allied hunter is with him*, unconditioned on what the ground is. See `worlds/gatefall/migrations/1.90_to_1.91.md`. Prior version narrative, retained: **Version 1.90 lets the Bearer be a person outside a Gate, and lets a killed awakened leave something behind.** Section 8.4.2 excluded the Bearer as the imperilled party everywhere, on the reasoning that danger to a hunter is the job -- true inside an aperture and false on a street. The exclusion is narrowed to Gates, red gates and instant dungeons, and the qualifying threat widens for that case only to any immediate lethal threat he directly perceives, including an awakened human acting to kill him. The standing exclusion of a danger he deliberately created is what stops it becoming a bounty on picking fights. New **Section 7.6 Succession** makes a personally killed awakened human leave **one** transcribable technique: signature only, never a Stat Passive or class ability, at the victim's Rank clamped to the Section 7.5 ceiling, entering at Novice with counters at zero. It is the third acquisition route after evidence and runes and the only instant one; the profile prices it at nothing and Sections 19 and 20.4 price it at everything. See worlds/gatefall/migrations/1.89_to_1.90.md. Prior version narrative, retained: **Version 1.89 stops paying least for the work that takes longest.** Sections 8.4.2 and 8.4.3 priced a quest against the Bearer's own Rank — Hidden at the Gate-clear milestone, Urgent at four times common-kill — while Section 3.4 pays that same milestone for roughly two hours in a Gate **and pays it on top of every kill fought through to reach it.** A Hidden quest therefore paid strictly less than clearing a Gate of the same Rank, and an Urgent quest paid less again below A-Rank, against work measured in in-fiction weeks: the live warehouse investigation had been open sixteen days and Marnie nine. Both now pay the Section 3.4 milestone **one Rank above** the Bearer's, so no figure is invented — every value is a row Section 3.4 already authors, with S-Rank continuing the ladder's own doubling to 6,800. **The four attached quests were repriced by owner ruling**, which is a deliberate one-time exception to both sections' standing *later leveling does not reprice it*: that clause governs the Bearer's own advancement, not a change in the law itself. See worlds/gatefall/migrations/1.88_to_1.89.md and `F-044`. Prior version narrative, retained: **Version 1.88 gives an owned thing a place to be when it is not in his pocket.** Section 12.9 opened *every item he owns lives there unless he has chosen to hold or wear it* — exhaustive by construction, two dispositions, and the world routinely produces a third: an object the Bearer still owns that is physically in a named party’s hands. It had no legal position, so the only way to keep a ledger consistent was to **delete it**, which `EVT-000636` did to two objects in an artificer’s custody. New **custody** clause at Section 12.9 and a sixth **`IN CUSTODY`** group at Section 15.3.2: ownership never moves, the record names **holder, since, and what ends it**, and the item renders on the Bearer’s own panel instead of vanishing from it. **The cost is reach** — a custodied item is not stored, cannot be withdrawn to hand, and is **not a legal target for remote storage** despite satisfying that clause’s bare wording, because he consented to it being there; taking it back is an act in the fiction, never a free thought. See worlds/gatefall/migrations/1.87_to_1.88.md and `F-043`. Prior version narrative, retained: **Version 1.87 lets an attacker choose not to kill.** Section 6.2 resolved every landed hit into a damage figure and removed it from Health; nothing anywhere authored doing less on purpose, and a grep of the profile for *subdue*, *non-lethal*, *unconscious* and *knock out* returned nothing at all. The consequence reached the table as an absurdity: a Bearer with effective Strength 644 could not interact physically with an unarmed civilian without a strong chance of killing them, and the least lethal thing he could throw still computed 322 a projectile. New **Section 6.2.1**: an attacker may declare a strike **pulled** before the roll, free and at no cost; damage resolves at **x0.25** through the ordinary formula, and a target brought to **0 Health by pulled damage alone is incapacitated rather than killed** and stabilises on its own. The bright line is the source of the damage, never the attacker’s hopes - **any** unpulled contribution to reaching 0 makes it an ordinary death under Section 6.5, which is otherwise untouched. It buys no accuracy, no defence, no modifier step, and nothing against a monster. See worlds/gatefall/migrations/1.86_to_1.87.md and `F-042`. Prior version narrative, retained: **Version 1.86 gives the Bearer the hands of a trade he can never hold the signature for.** Section 12.8’s *there is no player crafting subsystem* was read as barring the Bearer from artificer work entirely, and a Runtime-authored progression audit closed a formation candidate on that reading **without an owner ruling and with a clause instructing later sessions not to revisit it** (`F-039`). The owner reopened it on Section 13.6, which states the Bearer is **the sole exception** to one-signature-for-life and already authors the precedent unchanged — *learned Mend grants its heal but not the full innate-mender package*. **Seamwork** is authored at Section 7.3 as an earned technique, **native C-Rank** on a four-rung ladder — Read and open, Seat, Lift, Raise — under exactly one boundary: **it never creates an item.** Matter carrying no mana line is inert to it; everything it does, it does to a piece the Bearer already owns. **Improvement is licensed and origination is not**, bounded by that piece’s authored ceiling, by material spent at Section 12.8’s anchor, and by his own Seamwork Rank. Section 12.8 now states the line it always meant: **the signature originates; the hands may still work.** Every route to *acquiring* gear is untouched — shop, commission, loot — and Section 12.10’s assist step now reads the skill rather than an impression. No Rank ladder, baseline, price, timer, band, population or distribution outside the new skill moves. See worlds/gatefall/migrations/1.85_to_1.86.md. *(1.85 authored fusion — two finished pieces become one, an effect moves and a magnitude never does, the donor is consumed at every outcome, one fusion per piece. 1.84 made every template show its own geometry: 136 of 165 rules were written abbreviated and two had silently drifted to 77 cells, so every rule is now written at its full 78 and `…` is recorded as not a glyph this profile uses; no rendered window changed. 1.83 made a mastery level return something: nine of sixteen skills had a mastery track returning nothing, so Section 7.4 gained one rule — a mastery level must return something to the Bearer, in the play he is actually in — with a ratcheting binding floor, a saturated duration paying elsewhere, shared counts moved to Rank, and seven authored self-facing dividends; retention was stated once, and Broken Rhythm's live `Cold read` and `Shared cadence` were ratified. 1.82 puts the last ungated growth axis behind an arithmetic gate.** Ability points, allocations, base Stats and the unspent pool were prose through 1.81 while XP and every skill counter sat under Decision 079's `current_value = baseline_value + Σ(delta)`. Section 4.2 now names **six `tracked_counters` paths** — `progression.ability_points_earned` and five `stats.<stat>_allocated` — makes the **unspent pool a rendering** of `earned − Σ allocated`, and makes a **base Stat a rendering** of `creation + automatic(level) + allocated`. Because Section 3.2 raises all five Stats by the same rung, `base − creation − allocated` must be **one integer shared by all five**, which is the whole check. The cause was measured rather than supposed: a live campaign allocated **twenty-five points and recorded fifteen**, and an audit found it because no gate could. **Baselines are prospective**, no historical Event gains deltas, and **no stored value moves at adoption** — every counter's baseline is its current value. See worlds/gatefall/migrations/1.81_to_1.82.md. 1.81 authors the top of the skill ladder, which had been deferred since 1.52 and came due the moment it was reachable.** Section 7.3's three category ladders gain an **S column for all sixteen mastery-tracked skills** — the scope table's five, the capability table's two, and the magnitude table's nine — on the same terms as every rung below: a category and nothing else, no modifier step, no Mana change, no magnitude the skill did not already have. The trigger was live: at System Rank A the Section 7.5 ceiling moved to S, four skills stood at Master beneath it, and **two ascension offers — Keen Sense and Exploit Pattern — were withheld as unauthored** while the Runtime had already improvised categories for both, which is the `F-014` failure shape one Rank higher. **The owner ruling is that a learned technique reaches S and does not thereby become a signature**: a signature is innate, singular, and authored per NPC under Section 13.6, and no number of ladder rungs produces one. **One limit is expressly refused** — no S rung crosses a Gate boundary, a Section 9.6 seal, or a Section 17 instance wall, the rung the ladder pressed hardest toward and the one the Runtime improvised; the three cells whose wording could be read as reaching it restate the limit themselves. Rupture's `Unmaking`, ruled in play at `EVT-000590`, is backfilled to the table it should have been read from. **No roll, rate, band, timer, formula, stored value, or resolved outcome changes**, and no skill's Rank, mastery, counter, or magnitude moves. See worlds/gatefall/migrations/1.80_to_1.81.md. 1.80 makes the Bearer's body arrive at the rung his label already claims.** Per-level Stat growth becomes a ladder read from the System Rank held (+2 / +4 / +9 / +23 / +63), derived from the Section 6.1 pool ladder rather than chosen, so **automatic growth alone clears fixed-Rank parity at every rung** and every allocated point is the margin by which the Bearer exceeds a hunter of his Rank. A flat `+1` was linear growth chasing a geometric target: measured live at level 30 the Bearer stood at 87% of a B-Rank hunter's Health and would have reached System Rank S at 45% of an S-Rank hunter's. The Section 19.2 re-assessment bands are re-pegged to the Rank Mana ladder they had never matched — the old linear bands carded an ordinary C-Rank hunter's 125 Mana as **S-Rank**. Prior: **1.79 made a world event land somewhere durable, and rules out an eighth quest type while doing it.** 1.77 and 1.78 gave the tick guild collapses, policy shifts, awakenings, openings and district failures — and every one of them was narration with nowhere to go, which is the same defect as a tick that moves a timestamp and rolls nothing. New **Section 9.1.5** requires each rolled event to resolve to at least one durable landing — a Section 7.5 supply opening or new source, a Section 7.6 standing need, an objective, an entity change, a world fact — **or explicitly to `none` with a reason**, on the negative-assertion discipline the rest of the tick already uses. Worked routings are given for each event class so it is not left to taste. **No System quest channel is added, and Section 8.4.2 is untouched**: Section 14.4 states the System knows Bearer state, quest state, its shop stock and resolved Gate state, and does **not** know NPC minds or hidden identities — so a quest about a guild's finances would require it to know something it is authored not to know, the same violation as an NPC citing a Bearer-only quantity. **The world generates work, obligations and news; the System measures the Bearer.** The stated consequence is that non-Gate content earns no System XP and pays in money, standing and access instead. **No roll, rate, band, timer or formula changes.** See worlds/gatefall/migrations/1.78_to_1.79.md. 1.78 lets the city lose ground, and lets the world change shape.** 1.77 gave the tick a demand side and a non-Gate event table, but both operate at the scale of a day: a market shift, a guild moving, a posting taken. Nothing in the engine could produce a change that outlives the week it happened in. **New Section 9.1.3 makes breaks cumulative** — each district carries a pressure value that rises with breaks and decays with clear weeks, crossing deterministic thresholds at **strained (4), cordon (7) and containment failure (10)**. A **joint raid** — BGM-coordinated, all four guilds under one command, state-directed at B-Rank saturation — is what the city mounts to *stop* a failure, not to undo one. **Mounted too late, the district becomes a Scar, and this world already authored what that is**: Section 9.8's break spends the Gate, so the mouth collapses and there is no boss left to kill, exactly as `210_PLACES.md` describes the Cicero and Libeň Scars — *"a wound the city fenced off and has spent a decade managing rather than healing"* — with a permanently warped core and a reclaimed edge BGM licenses for escorted work. **The terminal case is canon too**: the Jiu Valley Exclusion, an S-Rank break over a quarter-million people in 2020, ~31,000 dead and multiple S-Ranks lost, still held six years on by rotating multinational containment because finishing it costs more than any nation will pay. **The map is allowed to get permanently worse**, in the world's own vocabulary rather than a new one — places become unreachable, entities are displaced, threads anchored there are cut, and Section 7.5 sources inside stop producing. **New Section 9.1.4 rolls one d100 on the first tick of each in-fiction week** for whether the world changes shape: a new awakened of note, a guild rising, a guild falling, political or regulatory upheaval, a standing Gate thread, escalation in another metro, or something unprecedented. Section 9.1 gains steps 9 and 10 so both dispatch, and Section 9.1.1's record carries their results. **Section 8.4.2 is still untouched and no Rank, timer, band or population formula moves.** See worlds/gatefall/migrations/1.77_to_1.78.md. 1.77 gave the daily tick a demand side and an event surface that is not a Gate.** 1.73 authored the tick and 1.76 made it write down what it rolled, but every step still produced Gates, breaks, or postings about Gates -- so a city with four guilds, a regulator, a market and an underground generated nothing except holes in the ground, and every Gate nobody cleared ran its timer to a break. **New step 4 rolls the trade taking the job before step 5 rolls breaks**, at per-day rates derived from the campaign's own board (E 15, D 25, C 55, B 75, A 90): GB-01 and GB-04 were E-Rank postings that sat unbid and broke, GB-02 a D *starved of bids by the Ironline/Horizon auction war*, GB-03 a C *won at auction, staffed from Horizon's own bench, cleared on schedule*. That restores what Section 9.10 already calls the ordinary case -- **staffed or held, cleared off-screen** -- and puts break pressure at the bottom of the ladder where the economics put it, not across the board. **New step 8 and Section 9.1.2** roll one d100 per tick for a non-Gate world event: guild movement, regulatory action, market movement, a non-Gate opportunity, aftermath, a private life moving, news, or nothing. **Section 8.4.2 is untouched and these do not create Urgent quests** -- its criterion 2 admits only a Gate creature, an active break, or a perceived sealed-instance hazard, and a market shift must never be dressed as a threat to justify an offer. What they feed is supply, pressure and fiction. **No Rank distribution, siting band, break timer or population formula changes.** See worlds/gatefall/migrations/1.76_to_1.77.md. 1.76 made the daily world tick write down what it rolled, and binds the daily quest to it.** 1.73 authored the tick and gated `world_clock.last_ticked` so an unrun world is a readiness finding — but a timestamp records that *time passed*, not that the *world ran*, and a tick that advances the anchor while rolling nothing is byte-identical to one that rolled and found nothing. That is the defect this engine has now met three times (`F-002` deadlines, `F-035` supply, and this). New **Section 9.1.1** requires each tick to append a `world_ticks` entry carrying the boundary and what each of the six steps produced, with **`none` written as a result** on Decision 080's negative-assertion discipline — the same shape Section 7.5's supply sources already use. It also makes the tick and the daily quest **one boundary event with a fixed order**: the tick runs, its entry is written, and only then does the daily issue. The daily quest is player-facing and never forgotten; the tick is owed to nobody in the scene and is exactly what gets skipped — so the reliable obligation now carries the unreliable one. **No roll, rate, distribution or siting band changes**; the tick's six steps are exactly as 1.73 authored them. See `worlds/gatefall/migrations/1.75_to_1.76.md`. 1.75 stated the Bearer-only information boundary a second time, as a closed list, in the form the narration-side check consumes.** Section 14.4 already said the System is *"perceptible only to its Bearer — always, without exception"*, and that was in force for every leak in the `F-003` → `F-021` NPC-knowledge family; two of them asserted a Bearer-only quantity anyway. New **Section 14.4.1** adds a ten-row **Bearer-Only Register** — level, XP, System Rank, skills, mastery, quest state, notifications, pending grants, exact pool values, and the System's existence — because deciding whether *this* NPC has a channel to *that* fact is a judgment made under pressure to sound informed, while deciding whether a quantity sits on a ten-row list is a lookup that **carries no per-NPC reasoning, the answer never varying by NPC**. **No rule, mechanic, increment, cap, or stored value changes**: the boundary is identical, restated in a consumable form. It is not a fourth prohibition and does not reopen what **Decision 091** settled — 091 rejected *"keep strengthening the channel check"* and stated that the channel test *"is unchanged and is not replaced"*; this repairs a defect **inside** that retained test by removing a judgment it never needed to make, and a false *belief* about the Bearer remains legitimate characterisation under 091. Section 20.5's prohibition on quoting numbers is extended to the quantities themselves, whether or not a number is spoken — see `worlds/gatefall/migrations/1.74_to_1.75.md`. 1.74 gave a break its own true-Rank roll, and generalised the rule that a class grant must grant something.** Two edges, both compatibility treatments. **(1)** Section 9.5 resolved an unconfirmed Gate's true Rank **on first entry** and named no other trigger, so a Gate that broke unentered had no Rank at all — `F-004`, dispositioned since 2026-07-31 and *deferred to a play session* that never came, **because breaks never reached the Bearer**. It now **rolls at the break**: the roll is discovery rather than creation, the world's committed response was sized to the *assessed* Rank, and that gap is the danger. This **supersedes the per-instance ruling at `EVT-000270`**, whose reasoning held only while breaks were never near him — which 1.73's world tick has just stopped being true. **(2)** Section 18.3.1 gains the class-grant analogue of Section 7.2's ascension-eligibility rule: **a grant returning nothing the Bearer already lacks is repaired or replaced before the offer renders**, because an ascension can be earned again and a class cannot be re-chosen. **A sweep of all eight classes found no third instance** — Shadowbinder, Devourer, Echo Knight, Reliquary, Herald and Seam all bind their caps and pay from every filled slot, and every context-derived cost expression in the section is total. Prior version, retained: **Version 1.73 made the world run on its own clock, and replaced a class grant that returned nothing.** Five edges, on an owner critique after ninety in-fiction days: *"I should not author something I want to be surprised about — you should take more initiative."* The record bore it out — **two non-daily quests issued in the whole campaign, both hidden, both mirroring something the Bearer had already touched; two of four slots never used; four Gate breaks of which none reached him; zero red gates ever rolled; a tracked board decayed to zero postings.** **(1)** Section 9.1's *'the Runtime distributes them into the fiction as needed and does not roll a fixed calendar'* is replaced by a **daily world tick** that rolls Gates, Ranks, rarity, breaks, postings and agenda initiations at each 06:00 boundary, independently of the Bearer, with binding results. **(2)** **Siting is rolled, so proximity is an input rather than a veto** — `d100`, `01-10` on his route, `11-30` within reach, and Section 8.4.2's criteria stop being the reason nothing is ever near him. **(3)** Both quest triggers gain a **push channel**: a quest may originate in the world and arrive unbidden. **(4)** **Cost expressions must be total** (`F-032` q2) — any cost naming a context-derived term must state a fallback or state that the ability does not function without it. **(5)** Section 18.8's **pocket cache is replaced by a standing anchor sense** (`F-033`), because the cache duplicated two containers the Bearer had carried for twenty levels, and because anchors three through five were otherwise inert — the same defect 1.67 repaired one class over. Prior version, retained: **Version 1.72 priced a class ability the profile had left unpriced, and gave every holding a Rank.** Three edges, all **additive**: no existing cost, value, counter or resolved outcome moves, and every one authors something where the profile previously said nothing. **(1)** Section 18.8 priced a Riftwalker's anchored step off *the instance's Rank* while the same paragraph advertised anchors in a *contiguous stretch of the city*, where there is no instance and no instance Rank — its own worked example anchors two of three points outside any instance. The city case now reads the ladder at **E-Rank: 5 Mana**, on the owner's reasoning that ordinary city ground is the bottom of that ladder because crossing air nobody warded is not the act of crossing a sealed instance. Raised as `F-032`. **(2)** The same section said an anchor is *permanent until released* and never said how releasing works; it is now stated as free, instant and at will, since the exchange is the price of setting rather than of letting go. **(3)** Section 11.1 authored the Rank of crystals, cores and deposits but never stated the general rule, so a boss drop the System returned no category for stood with **no Rank at all** — the frost-fused plating of `EVT-000502`, uncategorised for a full campaign span. **Every holding carries a Rank, defaulting to the Rank of the creature, instance or Gate it came from**, and the System returning no category is now a statement about *identification* rather than about the thing having no Rank. Prior version, retained: Version 1.71 **retired a deferral marker whose promise had already been kept.** Section 11.2's boss-drop table annotated its instant-dungeon key entry *"(Section 17, authored later)"* — a forward reference written when Section 17 did not exist. It has existed for many versions and authors the key's Rank, opening, population, loot, and closing conditions in full, so the marker had been describing a gap that was already closed. **No drop, Rank, probability, or rule moves**: the annotation goes and the cross-reference stays. It is recorded as a version rather than a silent edit for the reason 1.66 established — this profile versions annotation-only corrections, because an annotation that stops matching the thing it describes is exactly how `F-014` and `F-013` happened. **It is also the first live instance found of the class `F-024` names**: a claim about the corpus that quietly stopped being true, invisible to every gate, and turned up only because a phrase grep for promissory language was run while scoping that flag's proposed detector — the one-line version of the deferral registry that flag still asks for. See `worlds/gatefall/migrations/1.70_to_1.71.md`. 1.70 **gave Dimensional Projection a reason to be used.** Player audit, recorded as `F-027`: the technique was ratified at `EVT-000436` and its counters have read **zero successful uses** ever since. The arithmetic says why. At effective Strength 87 with a banked C-Rank blade it dealt **141** — against an ordinary main-hand strike's **164 for no Mana at all**, Mana Bolt's **167 at unlimited range for 5 Mana**, and Rupture's **571**. It could combine with no other offensive active skill, its Novice range of **5 metres was identical to Rupture's flat band**, and it was the only offensive technique in the profile that **disarmed its user** and then billed him an exchange's inventory change to undo it. Dominated on every axis at once; there was no state in which it was the right action. **The cause is a repair that could not reach it.** Profile 1.56 found this exact defect — *"Rupture dealt 61 for 9 Mana while an ordinary dagger strike, costing nothing, dealt 128… a signature offensive skill had become strictly worse than swinging the knife"* — and fixed it by folding effective Intelligence into `Bearer_skill_damage`. **Dimensional Projection resolves on the ordinary *physical* formula by construction**, so the fold never touched it and it stayed the third case of the 1.56 defect for fourteen versions: its damage simply *is* a weapon strike, with a worse weapon, no equipped bonuses, and a Mana bill attached. **Projectile count is now its magnitude, and it is the axis the technique never had.** Mastery launches **1 / 2 / 2 / 3 / 3** objects and **each Rank above native adds one more**; every projectile is its own deployment point, its own object and its own resolution, and they **split freely across targets in range**. The technique becomes a **named multi-strike** (Section 6.2) — the package Twin Fang already uses — and the Bearer's **only true multi-target offensive action**, which is what keeps it out of Rupture's single-target lane instead of losing to it there. Mana is paid **once for the action**, never per projectile. Range stays a real grant but is no longer the only one: a skill whose sole axis is *how far away the same weak strike happens* is a skill nobody spends an action on. **Anything portable may be launched, and the arithmetic is the whole of the restriction.** The launch carries the Bearer's own mana under `GTF-OVR-003`, so a thrown object wounds a monster where a soldier's rifle cannot — but damage reads **that object's** power and chassis, so a ranked blade brings its Section 11.5 weapon power while a crate brings **weapon power 0 and the improvised chassis ×0.5**. Junk is legal and nearly worthless, ranked steel is what hurts, and no special rule is needed to say so. The consequence is an **acquisition track** the technique never had: a Bearer who holds it stops selling banked weapons, because his armoury is his ammunition. **And *Recall* stops being a rebate** — the D rung refunded a cost the skill imposed on itself, where Rupture's *Compound* and Mana Bolt's *Arcing* add capability; at three projectiles it becomes a real grant. **No stored value moves and nothing is retroactive**: the live technique stands at Novice with zero uses, and its mastery level, progress and counters are untouched — see `worlds/gatefall/migrations/1.69_to_1.70.md`. 1.69 **made Section 18's own title true.** The section has been called *"The Class Quest and Hidden Classes"* since 1.6 and authored five classes, every one of them published on Section 18.3's signal map — **nothing in it was hidden by any reading of the word.** The five are the **Assay's catalogue**: five shapes of champion for the specialization gate to select from. **A hidden class is what the candidate becomes when he does something the instrumentation had no category for** — the same unbounded adaptation the process selected him for, returning on it. New **Section 18.3.3** authors the tier: one condition per class, **conduct rather than degree**, at most one revealed per trial, **added** to the offer and never replacing a signal class, capped on a **Stat pair** because the five singles are the shapes the process was built to make. It renders **anomalous** — its own `✧` frame, no signal attributed, one flat sentence: *"This offer exceeds the catalogue."* An instrument returning a reading outside its own scale reports the exception rather than clamping it silently; nothing tells him what he did. **Three are authored.** **Reliquary** (18.9) reads a slain beast as the remnant of a world the Gates ate and recovers a **relic** — how that world's people fought the thing that eventually killed them — worth **+2 modifier steps and an authored counter against creatures of its own origin, and nothing whatever against anything else**: a Reliquary who has met a thing before is the most dangerous hunter alive to it, and against something new he is an ordinary Bearer holding a book about the wrong world. Revealed by spending a resolved action **examining something he has already killed** at a moment the exchange gave him something better to do. **Herald** (18.10) lends capability across a **bond**, raising a named awakened one Rank band for a scene against the law that Rank is fixed at Awakening — and the bond runs **both ways**: +1 modifier step per bonded ally engaged in sight and Mana returned on their kills, so **a Herald alone is the weakest class in the section and a Herald with four people he trained is the strongest.** Revealed by clearing the trial **scoring in all five signals** — refusing to specialize inside the machine built to specialize him. **Seam** (18.11) works the puncture rather than what comes through it, and **severs a creature from the mana suffusion that makes it a monster** (`GTF-OVR-003`): half Rank Health and full vulnerability to ordinary mundane damage — the single fact this world's entire defence policy rests on. Revealed by spending a resolved action **on the seal** of a sealed trial he has been told has no exit. **Section 18.3.2 authors the tally the section had always assumed**: Section 18.3 said the System *"tallies the five signals"* and nothing defined a tally. Each signal now scores authored qualifying events, **each criterion at most once per phase** — load-bearing normalization, since a Bearer who one-shots fourteen commons in Phase 1 scores Kill Efficiency **once** rather than fourteen times, and without it his efficiency count buries every other signal before Phase 2 opens. Every point must **cite the exchange** it came from, and the full tally renders with the offer, because an examination shows its marking. **Section 18.3.1 gains the rule the 1.68 audit implied — every class fights.** Utility, knowledge and access are welcome but never *instead*: a class whose grants do not reach a fight is a **trap**, discovered too late to choose again, and both knowledge-shaped classes here take their combat capability from their own premise rather than beside it. **No stored value moves and nothing is retroactive**; no campaign holds a class — see `worlds/gatefall/migrations/1.68_to_1.69.md`. 1.68 **gave four of the five classes the progression the fifth already had.** Owner audit of Section 18 against played evidence, recorded as `F-025`: the five were not within reach of one another and two were unfinished. **Shadowbinder was the only class with an acquisition track that binds** — elites and horde both capped on **Intelligence**, the section's only Stat-scaled class — while **Echo Knight and Riftwalker authored no growth whatever**, promising rungs *"at authored thresholds"* and *"at higher tiers"* that were never written, leaving both static from level 25 to 50. **Soulforged Armory's cap could not bind**: the arsenal held five bound weapons, the Bearer has two hands and one free draw an exchange, and a bound ability functioned only while wielded — so the fourth and fifth bindings each cost a beast core to grant **nothing**, while the abilities sat at flat multipliers (`×1.5`, `×1.25`) beneath skills the Bearer already owned. **And Devourer's cap equalled its entire catalog at the class's own earliest acquisition point** (`F-022`): five slots against five authored kinds at level 25, every fragment the class would ever offer held on day one, the level gate never once applying. **New Section 18.3.1 states the three tracks a class owes** — acquisition under a cap that binds, magnitude, and a level-50 evolution — and rules that **a cap which cannot bind is not a cap**. **Each class's acquisition now scales on one Stat and no two share one**: Shadowbinder Intelligence, Devourer Vitality, Soulforged Strength, Echo Knight Perception, Riftwalker Agility — so the class choice and the allocation choice speak to each other instead of running in parallel, and no build is equally good at all five. **Devourer's catalog doubles to ten kinds** (Rend, Roar, Spines, Burrow, Bloodfeast joining the original five) so the cap rations a real choice, and a held fragment may now be **released** to re-choose as the fights change. **Soulforged's arsenal grants from the shelf as well as the hand**: every bound weapon carries a **standing edge** active while merely stored, edges from different sources compose, and a bound ability's multiplier is the **skill-rank baseline at the weapon's Rank** rather than a flat figure — an armory is what a smith *has*, not what he happens to be holding. **Echo Knight is repaired against its own signal**: it was offered for **Endurance** — *"surviving sustained pressure at low resources"* — and contained no healing, no reduction and no resource extension, costing 8 Mana a deploy to replay an attack, so the class made endurance **worse** and the signal map contradicted the class it mapped to; an echo may now **intercept an attack aimed at the Bearer**, taking it in full, and deploying costs **less the lower his own pools run**. **Riftwalker gains the acquisition track it never had** — **rift anchors**, set by holding a position for an exchange, stepped to afterwards without line of sight, capped on Agility, and the network its level-50 personal gate now runs on: a Riftwalker's power becomes a **map**, accumulated one held position at a time. **Shadowbinder is untouched** — it was already correct, and it is the benchmark the other four were raised to rather than a ceiling lowered to meet them. **No stored value moves and nothing is retroactive**; no campaign in this repository holds a class — see `worlds/gatefall/migrations/1.67_to_1.68.md`. 1.67 **sized the content the System imposes on the Bearer to what he can actually do.** Player finding from the Level 25 Class Quest, recorded as `F-023`: a sealed trial billed *fully lethal, with no retreat* was cleared taking **one landed hit for 13 damage**, its 1,000-Health boss meeting a single Rupture critical of **2,283**. The cause is structural rather than a tuning miss. **Section 18.2 sized the trial to the Bearer's System Rank *label*, and Section 6.6 already says that label is not his body** — a C-Rank population is calibrated against an ordinary C-Rank crew, several hunters together with none individually overwhelming, and was never calibrated against the one person in the world who grows. **The same scaling governed Section 8.3's penalty zone**, which is why the fix is not local to Section 18: a Bearer who outgrew his Rank got a punishment that did not punish. **The two are exactly the content the System imposes** — one he cannot retreat from, one he did not choose to enter — and the boundary is now stated as a rule: **the System owes an honest fight only where it picked the fight.** Where the Bearer chooses his own difficulty the profile still lets him choose badly, so an instant dungeon runs at its key's own recorded Rank and a public Gate at the Rank BGM assessed. **New Section 6.7 authors the Combat Tier**, derived and never stored, from figures the ledger already carries: an **offense axis** (the lowest Rank whose commons survive his best standard hit) and a **defense axis** (the highest Rank at which five landed standard hits still stand), taking the **lower** of the two — out-damaging a Rank is not out-living it, and offense alone would drop a glass cannon into a population that kills it in one exchange, which is not a harder trial but a shorter one. **System Rank is a floor and the tier never falls below it**, so the derivation may only ratchet difficulty upward: an under-invested Bearer meets exactly the content he met before, and nothing anywhere becomes easier. **The tier is snapshotted at each consumer's own instant** — the class trial at **entry** rather than at offer, because Section 18.1 lets the offer stand open forever and sizing it at offer would let a Bearer buy himself a trivial trial by waiting; the penalty zone at the 00:00 transfer. **Section 17 is corrected in the same edge for a defect it had carried since 1.4**: it authored a Rank rule for an *"own-tier"* key, a category the profile named once and no section ever created, while Section 6.6 asserted that a shop key opens at the Bearer's System Rank — which Section 12.5 flatly contradicts, selling keys at an explicit chosen Rank off a price table and stating that a purchased key is fixed at the Rank bought. No own-tier key has ever existed in any campaign. The orphan is struck and Section 17 now names its three real sources — boss drop, shop purchase, Daily Premium roll — none of which reads the Bearer's standing at the moment of use. **Reward follows danger, deliberately:** kill XP, the Gate-clear milestone, the underdog multiplier and every drop table read the Rank the content actually runs at, so raised content pays more — which is precisely what the underdog bonus is authored to price, and an instance made harder that paid a lower Rank's rewards would be a tax on investment. **`F-023`'s own proposed remedy is rejected on inspection**: it asked that the trial read the Section 19.2 measured-output tier, but that instrument reads **maximum Mana alone** and says of itself that it is *"a mana-capacity classification, not a complete combat verdict"* — a Bearer at 166 maximum Mana classifies **S-Rank** there, which would populate his trial with 4,000-Health commons dealing ≈420 through his reduction into a 444-Health pool. Not a harder trial; an execution. **Sizing was only half the defect, and the other half is that Section 18.2 authored almost nothing.** Against Section 17's instant dungeon — which specifies a population formula, an archetype roll, a two-hour clock, exact loot and two named closing conditions — the trial said *"waves and a final foe"* and stopped. It was **less specified than a shop-bought dungeon**, so in play it was resolved with the only population machinery the profile has: a Gate roll, which produced six enemies met one at a time. **Four of the five signals had no instrument.** Endurance cannot appear where resources never bottom, Battlefield Control cannot appear against foes that queue, Weapon Breadth cannot appear where nothing resists the first answer, and Positioning cannot appear on ground that never matters — so Section 18.3 tallied five signals of which one was visible and offered a class on it, which is indistinguishable from offering one at random. **New Sections 18.2.1–18.2.3 make the trial five authored phases and a final foe**: a converging swarm one Rank below that overlaps rather than queues (Control); a grind of elites that trade rather than burst (Endurance); a foe carrying a **resistance keyed live to whichever method has dealt the most damage so far**, unannounced (Breadth); an elite contesting space on ground that fails behind him (Positioning); and a six-exchange clock whose overrun arms the boss, bounded by the engine's ±3 net cap (Efficiency). **One budget and no refill** — no potion functions, no Status Recovery, no pending reward, no elapsed-time recovery, while his own Mana-costed skills work normally, so healing is a transfer inside one budget rather than an escape from it. **A phase does not require its signal**: it creates the conditions under which that signal *can* appear, the Bearer solves it however he likes, and the System scores what he actually did — brute-forcing the swarm is a legitimate answer that scores Efficiency rather than Control, which is what keeps *"it is not a menu"* true of the fight and not only of the offer. **No stored value moves and nothing is retroactive** — the tier is derived at each use and stores nothing, no past instance is re-Ranked, no resolved kill is re-scored, and no key in any inventory changes Rank — see `worlds/gatefall/migrations/1.66_to_1.67.md`. 1.66 **corrected three self-annotations that had gone stale against the ladders they describe.** Section 7.3's magnitude cells carry their own dominance ratio and a *thin*/*dominant* classification, both computed by hand — and `F-014` predicted this exact failure: nothing recomputed them when a ladder moved. **1.53 authored A-Rank and the annotations were never extended**, so **Dagger Mastery** stated three ratios where four steps exist and **Stone Skin** two where three do; **Bulwark** stated no ratio at all and placed the 90% cap a Rank late. Corrected to `1.17× / 1.09× / 1.06× / 1.05×`, `1.10× / 1.07× / 1.00×` (the last held flat by the cap), and `1.06× / 1.00× / 1.00× / 1.00×`, with the cap first binding at **D-Rank Master** (`60 + 25 + 20 = 105`) rather than at C-Rank. **No rule, increment, grant, cap, or stored value changes.** These are annotations describing arithmetic that was already correct and remains untouched — every skill's magnitude, every ascension outcome, and every damage or reduction figure is identical before and after. **What changes is that the annotations are now recomputed and compared on every run** by `tools/test_rank_dominance_law.ps1`, so this class cannot recur silently — see `worlds/gatefall/migrations/1.65_to_1.66.md`. 1.65 **said plainly what the reawakening cover does and does not limit.** Section 19.3 closed on *"Reawakening explains one jump; it cannot explain a curve"* — and ***one jump* reads as a bound on size**, which it was never meant to be. It was misread that way in play, and the wording invited it. **The sanctioned fiction is that the *original* measurement was wrong, and a wrong measurement has no natural size**: an E-Rank card that re-measures at a B-Rank pool is exactly as admissible a claim as one that re-measures at D, a wider gap making the original appraiser's error more embarrassing rather than the correction less believable — the instruments are held infallible about the present, and nothing in the story requires the past to have been off by only a little. **What the classification cannot absorb is repetition**: a second correction on the same card stops being an appraiser's error and becomes a pattern the instruments are not permitted to have. The constraint falls on the **number of claims a Bearer makes, never on the distance any one claim covers**, and the section now says exactly that. A wide gap still costs **attention**, which Section 19.1 already prices in full, and there is no size at which a regulator refuses the classification on size alone. **No stored value moves and nothing is retroactive** — this resolves how a cover story is adjudicated going forward, grants nothing, and re-adjudicates no past scene — see `worlds/gatefall/migrations/1.64_to_1.65.md`. 1.64 **defined the word the party-minimum law had been resting on since 1.6.** Player question, and the profile could not answer it: a crew of five B-Ranks and six C-Ranks asked whether it could legally take a B-Rank Gate, whose minimum reads *8 (B-Rank-capable, incl. ≥1 B)* — and **nothing in the profile said what *capable* meant.** Section 9.4 said only *combat-rated hunters of adequate rank* and never defined adequacy, so the single number gating every high-Rank contract in the world was unresolvable from the file. **The `≥1 B` clause was itself the evidence**: it is redundant if all eight must be carded B, and it only carries meaning if the other seven need not be — the same shape the A-Rank row uses. **Settled on an owner ruling: a hunter counts toward a Gate's legal minimum when their card Rank is at the Gate's Rank or one Rank below, and nothing else.** Capability is a **card threshold, not a judgment** — a minimum that turned on whether someone looked ready would be unenforceable at the mouth and unprovable afterward, which is precisely why the law counts cards. The `≥1` clauses at B and A are what prevent a party made entirely of the tier beneath; **C-Rank carries no such clause deliberately**, so four D-Ranks may lawfully enter a C-Rank Gate, C being the trade's ordinary working tier rather than its exceptional one. **One Rank and not two**, because Section 2 fixes Rank at Awakening and Section 4 makes Rank the whole of capability: a two-Rank gap is a different weight class, and a party built on it would be a casualty report the law had signed. **It is a legal threshold and not a survival guarantee** — Section 9.7's population formula does not soften for a party that scraped its floor. **No stored value moves, nothing is retroactive, and no past entry is re-adjudicated** — see `worlds/gatefall/migrations/1.63_to_1.64.md`. 1.63 **gave the System one visual identity, and it had two.** Player question, and the right one: *is the Flux Sight template the same as the quest templates and the other System messages?* It was not. A **summoned panel** was a framed window — `╔══ ◈  S Y S T E M ══`, interior column 6, bracketed Ranks, a fixed label vocabulary, a status gutter. A **fired notification** was a plain-text line wearing a `[SYSTEM]` prefix and sharing none of it. **Nothing in the fiction justified the split**: the same System, addressing the same Bearer, through the same interface, looking like two different things depending only on whether he had asked. **Worse, the prefix was load-bearing in the wrong direction** — cheap enough to attach to any shape at all, which is exactly how **four mutually incompatible message shapes** accumulated beneath one label: a head with an inline tuple (the read, level-up, mastery), a head with labelled rows (the quests), a head with an unlabelled record list (the five Section 18 class panels), and a head with nested indented sub-blocks (the Title Assessment). 1.62's Section 14.5.3 had declared **two** of those shapes a contract and closed with *"neither shape is available to the other"* — a rule that described half the profile's own bracketed messages and was silent on the rest. **1.63 retires the `[SYSTEM]` prefix entirely and renders every System utterance in the Section 15.1 frame.** What remains is **one render and two forms**, and the line between them is what the System is *doing*: **the window** is what it **presents** — a read, an event, an offer, an assessment, a panel — framed always; **the ledger line** is what it **counts** while an action resolves — a pool or XP moving, on the Bearer or on a target he acted upon — unframed but **indented to the window's own interior column 6**, so the numbers read as the System's with no rule above them. **A window is an occasion and may cost three rows; a ledger line fires several times an exchange**, and framing each would put forty rules through a single fight, the fiction pushed apart by its own bookkeeping. **The frame marks what the System chose to say, and the indent marks what it is merely keeping.** Every site is conformed rather than merely the contract restated — Sections 3.2, 3.9, 7.1, 7.4, 7.5, 8.1, 8.2, 8.4.1–8.4.3, 12.5, 14.5, 14.7, 16.1 and 18.4–18.8 — and two long-standing defects fall out of doing it: **the Daily quest rendered `Objectives:`/`Rewards:` where Urgent and Hidden rendered `Objective:`/`Reward:`**, the same field under two names on the same surface, now one; and **the Section 18 class panels rendered Rank as a bare letter** (`Gravecut · D · Field`) against Section 15.1's own *"a bare letter is never rendered,"* now bracketed everywhere. **A label inside a window is never punctuated with a colon** — the column does the work the colon used to, exactly as `Level`, `Card Rank` and `Unspent Points` already did in Section 15.2. **Section 15.1's frame rule is corrected against its own templates**: it stated that *no* rule is closed on the right while every normative template in 15.2–15.4 closed its section rules on `╢`, so the rule and the templates it governs disagreed on every panel in the profile; the templates are what a Runtime copies, so **only an inner section rule closes, and it closes on `╢`**, the top and bottom rules running open — a closed rule reads as a divider between two things, an open one as the edge of something. **No stored value moves and nothing is retroactive** — this is how the System renders, not what it knows or grants — see `worlds/gatefall/migrations/1.62_to_1.63.md`. 1.62 **bounded the Flux Sight read to news, and wrote down the grammar 1.61 left to be inferred.** Player question the same day — *would it fire when I meet an awakened NPC too?* — and following it through found the gap: the **C rung reads any perceived awakened**, and 1.61's cadence was *full read at first perception in a scene*, extended from Section 14.6's designation-color rule without accounting for **a familiar NPC standing in the Bearer's own kitchen.** Owen Callahan lives with him, so every domestic scene would have opened with a combat-style stat block on his partner, restating a number that had not moved in days. **New Section 14.5.6, and the rule is *first meeting, then on change*:** the full read fires the first time the Bearer ever perceives someone, wherever that happens; afterwards it renders **only when a value has materially moved** since his last read — Health or Mana away from where he last saw it, a changed Rank, a condition the pools carry — and an unchanged subject renders nothing across any number of scenes. **The passive is not narrowed and Section 4.4 is untouched**: Flux Sight remains always in effect and the Bearer always knows. What is bounded is when the System *says so*, which is the principle already governing the designation color (*"not repeated each exchange"*) and a target's pools in Section 14.5.5 (*rendered in the exchange that changed them*), now carried to people he lives among. **It is the more useful rule and not merely the quieter one** — a line restating an unchanged number carries no information, and a reader who learns to skip it is exactly the reader a real change slips past; under this rule **a rendered line always carries news**, and an injured friend coming through the door is the case it fires on. **A populated room renders one room line, then individuals on engagement**: a guild hall, a staging floor or a bar emits a single line giving the room's shape and counts by Rank with each Rank's color, then a full individual read on anyone he engages, is approached by, singles out, or fights. The room line carries no pools, a count of strangers having no single pool to state — this is **1.61's grouping rule applied to people rather than to monsters**, compressing the undifferentiated and naming what matters. And **Section 14.5.3 now states the bracketed head grammar** instead of leaving it to be recovered by inspecting the quest and title blocks: every bracketed message shares `[SYSTEM] <EVENT NAME IN CAPS> — <subject>`, and what differs below the head differs **by a rule rather than by taste** — a **fixed tuple renders inline on the head row**, `·`-separated in the Section 14.5.1 order, because the fields are always the same fields in the same order and naming them would be noise; a **variable field set renders as labelled rows**, because the reader cannot know which fields are present. A Flux Sight read is a fixed tuple and is one row; a quest carries objectives, rewards, deadlines and warnings in combinations that vary and is labelled rows; **neither shape is available to the other.** **No stored value moves and nothing is retroactive** — a read reveals information and settles nothing, and *"has he read this person before"* is answered from the campaign's existing record of who the Bearer has met rather than from new stored state — see `worlds/gatefall/migrations/1.61_to_1.62.md`. 1.61 **gave Flux Sight the authorization to fire and the template to fire into, and made every inline System notification one grammar.** Player observation from the two-Crypt session recorded as `F-017`, and the finding is sharper than the report: the passive being withheld across a whole combat session as though it required an active check was **the profile's own instruction, not a lapse.** Section 14.3's tiers are the entire authorization list for what the System says unprompted, and Tier 3 forbids firing *"with no declared precondition at all"* — Tier 1 named the **designation color**, Tier 2 named the **B-rung item appraisal**, and the **D and C rungs appeared in no tier whatsoever.** A Runtime reading them strictly found no authorization and a standing prohibition. Naming exactly one rung, under *bounded discretion*, is also what made the whole passive read as conditional. **Both holes are closed: every rung is Tier 1, fires on sight, no roll and no Mana, and the item appraisal moves up to join them.** Separately, Section 4.4 authored *what* Flux Sight reads and **nothing authored how it renders** — the only System output in this profile without an exact template, so it was re-invented at each use: three shapes in one campaign, the rule citation leaking into the fiction twice, and **Mana dropped in two of three**, against a D rung authoring *"Rank, current/maximum Health, and current/maximum Mana"* as one read. A rung's values are not a menu. **The read and the designation color are now one line**, because they fire at the same instant on the same subject at first perception, both rollless and Bearer-only, and the color is computed from the very Rank the read states; where Flux Sight does not cover a creature whose Rank is resolved, the color still fires alone — the color is the floor, the read is the floor plus what the rung adds. **Section 14.5 becomes the contract rather than three examples**: one grammar — subject, bracketed Rank, delta, `before → current/maximum`, parenthesized source — and **two weights**, the Bearer's own pools and XP rendering bare because they move several times an exchange, anything carrying a subject or more than a number taking `[SYSTEM]`. **The XP line names its source**, so `XP +50 · 40 → 90/300 (elite ×2)` is checkable against Section 3.3 without reconstructing the fight; `F-017`'s third item is a whole dungeon's XP going unrendered and the total then resuming from a figure matching no derivable sum. **A target's pools re-render in any exchange the Bearer's action moved them** — the color is fixed for a scene and repeating it is noise, but a pool is the number the fight is *about*, and leaving it in conversational memory across sixty exchanges is the drift `F-017` records. **The label vocabulary was inconsistent with itself**: through 1.60 the contract read `XP:`, `Mana:`, `HP:`, one word spelled out between two abbreviations in the same block. Pools are **`HP`, `MP`, `XP` on every surface** now, matching Section 15.1's own bar labels and joining its fixed-vocabulary list; the 2026-07-30 ruling that *"Mana is never abbreviated"* is **scoped rather than overturned** — it governs the skills table's cost column, the surface it was made about and the one its next sentence names, where `M<n>` stays forbidden. A cost is `Mana 8`; a pool is `MP 92/98`. **No stored value moves and nothing is retroactive** — a Flux Sight read reveals information and settles nothing, granting no modifier step and costing no Mana, so no past roll, margin, or damage figure changes — see `worlds/gatefall/migrations/1.60_to_1.61.md`. 1.60 **rejects `applied_analytical_reconstruction` and retires First Principles, the skill 1.58 pre-authored two versions ago.** Player observation, and it is fatal rather than corrective: **the Bearer already knows how to do this, and the engine already pays him for it.** Both evidence scenes resolved on the standing **established-capability** step — *"+1 step for the directly relevant established capability"* — which fires for competence a character actually holds and needs no skill at all. He is a university-trained mathematician and physicist; sightlines, load paths and sweep-cone geometry are what that training *is*. A skill granting +1 step for applied physics to a man who already draws +1 step for applied physics grants **nothing**: Section 4.3 caps the net step at +1 and a modifier never stacks with another from the same finding, so on the very scenes that formed the candidate the skill would have changed no resolved outcome. **That is the Rank Dominance Law failing at acquisition rather than at ascension** — the skill could do nothing its own absence could not — and every mastery axis failed the same test from the other side: beneficiaries priced a solitary method as a group one, concurrent held derivations rebuilt Multitask's retired defect of a ceiling no play reaches, and a scale ladder starting at *one wall* asserted a floor **beneath** what the Bearer had already demonstrated with no skill, making ratification a downgrade dressed as progression. **Education is capability, not a skill** — it carries no Rank, no Mana, no mastery track and no System Rank ceiling, and it applies whenever directly relevant, which is strictly better than any E-Rank passive this profile could have authored for it. Section 7.1's third test excludes generic competence from formation and this is what that exclusion is for. The candidate goes `rejected` with its evidence and reason preserved, reopening only by owner ruling or a **materially different** signature; Section 7.2 keeps the reasoning rather than deleting it, because a rejected candidate that leaves no trace invites the next reader to open it again. **Nothing is lost and no live value moves**: First Principles never existed on any ledger — see `worlds/gatefall/migrations/1.59_to_1.60.md`. 1.59 **authored the half of Section 12.9 that only ever existed by omission.** Player observation, and correct on inspection: *the launched weapon stays where it lands* does not survive a Bearer who can store anything. **The two directions of the pocket dimension were never symmetric.** Withdrawal is bounded in writing — *to his own hand*, with remote destinations explicitly denied — while **storage carried no stated bound at all**, and Section 7.2 asserted the inventory was *hand-delivery only* in both directions on the strength of a sentence Section 12.9 never wrote. `EVT-000326` had already contradicted it, sweeping three crates **and a workbench** into the pocket dimension on a single roll. A rule that exists only by omission is the Section 20.2 defect, and this one was load-bearing: it was the sole justification for Dimensional Projection's recovery cost, and therefore for whether its D rung granted anything at all. **Storage now reaches what he perceives; withdrawal still reaches only his hand.** He may store any inanimate object he can perceive and could lawfully pick up — nothing a person is holding, wearing, or carrying, nothing behind a barrier he cannot perceive through, and a contested attempt resolves on the die. **Nothing here disarms anyone.** **The cost lands where it belongs: remote storage is free outside an exchange and spends the exchange's one inventory change inside one.** Hand-delivery in both directions stays free and unlimited exactly as it always was; only the remote reach is rationed. A launched weapon is therefore **never lost and never an errand** — it comes straight back — but at native Rank he may launch **or** recover in an exchange, never both, and the price is a beat of tempo paid in the same currency as a weapon swap. ***Recall* (D) survives as a genuine grant, which was the real question**: it returns the weapon at the action's end **without** spending that change, so the D rung sells something E-Rank provably cannot do — the Rank Dominance Law's own test for a category, which the old wording would have failed the moment anyone read the two sections together. **No live value moves, no skill changes Rank or mastery, and no past exchange is re-resolved** — see `worlds/gatefall/migrations/1.58_to_1.59.md`. 1.58 **pre-authored First Principles, the second earned technique this profile completes before it forms.** Section 7.1 route 3 requires an owner ruling at ratification unless the profile already authors the complete result; `dimensional_weapon_control` is the one candidate that ever had one, and Dimensional Projection ratified automatically at `EVT-000436` because of it. **`applied_analytical_reconstruction` now has one too.** The Bearer has twice resolved a problem on his trained mathematics-and-physics background as the declared method, explicitly instead of a System skill — Loomis Street's camera sweep-cone geometry and the Cicero Scar's core-block structural read — and the candidate stands at 2/3 with no authored result, which under 1.57 meant a third scene would stop play at the mandatory adjudication gate. **The ruling is the same one 1.55 made for Dimensional Projection: author the result before the skill can exist rather than after.** **First Principles [E-Rank]**, passive, 0 Mana: +1 modifier step on reconstructing unobserved structure, coverage, or reach from observed geometry and physical law. It is **derivation, not perception** — it never reveals what is present, which is Keen Sense's work, and it establishes no exploitable Pattern, which is Exploit Pattern's. Its mastery axis is **scope — 1/2/3/4/5 beneficiaries**, the Broken Rhythm treatment applied at authoring time rather than twelve wasted qualifying scenes later, and its Rank ladder runs **Inference from absence** (D), **Mechanism** (C), **From secondhand measure** (B), **Predictive** (A). It joins the Section 7.3 scope-axis table and the Section 7.4 mastery table, because a mastery-tracked skill in neither is not finished. **Nothing is granted and no live value moves**: the candidate remains at 2/3 and ratification still requires a third qualifying scene — this changes only what happens when one lands. See `worlds/gatefall/migrations/1.57_to_1.58.md`. 1.57 **gave Rupture and Mana Bolt the delivery ranges that tell them apart.** Player observation, and correct: they looked like almost the same spell. Since 1.56 folded effective Intelligence into Mana damage the two have read the **identical Section 6.2 formula**, differing only by multiplier bands exactly **1.00 apart at every mastery level** and by Mana cost — and that had been true since long before 1.56, which only made it visible. **Rupture is now a heavy strike within 5 metres, flat at every Rank**: range is a restriction that says what the skill *is*, not a growth track, and Rupture already grows on magnitude and on four categories. **Mana Bolt has no limit in distance at all**, reaching as far as the Bearer can see, and at native Rank requiring that he see it. **Its ladder relaxes the sense, not the reach, and that is what keeps it a ladder** — *Arcing* (D) already sells a known position where a clear line was required, and *Homing* (A) already sells a target perceived by any means, sound included. Writing vision-or-sound into the E-Rank baseline instead, the shape first proposed, would have handed the baseline both rungs and left two Ranks granting nothing on a skill whose magnitude ladder 1.56 had already measured at nothing — **and the Bearer holds *Arcing* today**, granted at `EVT-000395`. Section 7.2 defines a category as a kind of thing the Rank beneath cannot do at any value of the governing Stat; a rung the baseline already covers is not one. **The dominance test does not cover this defect class**: `tools/test_rank_dominance_law.ps1` verifies that a thin magnitude ladder *carries* categories, not that each grants something new, so a redundant rung passes green — the same hole 1.56 found in the *magnitude only* rows, one layer up, now on the record. **Neither skill crosses a Gate boundary, a Section 9.6 seal, or a Section 17 instance wall.** **No stored value moves, no past exchange is re-resolved, and no damage number changes** — see `worlds/gatefall/migrations/1.56_to_1.57.md`. 1.56 gave a Mana skill's damage the Stat it obviously belongs to. Measured at Level 21: **Rupture dealt 61 for 9 Mana while an ordinary dagger strike, costing nothing, dealt 128** — and Twin Fang dealt 316 for 4. A signature offensive skill had become strictly worse than swinging the knife. The cause is structural rather than a bookkeeping slip: **a Rank baseline is fixed per Rank, while a weapon strike compounds with Stats and gear every session the Bearer grows.** The profile's own worked example set Rupture and Twin Fang as a deliberate pair at 29 against 18; ninety in-fiction days later it read 61 against 316. No amount of Rank ascension closes a gap that widens on its own. **Section 6.2 now reads `(skill_rank_baseline + effective Intelligence + equipped_focus_power)` for a Bearer damage skill**, exactly as a physical strike reads effective Strength. The connection was already half-written — Rupture takes an equipped **focus**, which is caster gear, and Mana Bolt already had Intelligence governing its control — and this completes it. Rupture moves to 299 and Mana Bolt to 98, against Twin Fang's 323 and a free strike's 128. **Healing is deliberately excluded**, and it is the one place the two formulas differ: Mend reading Intelligence would restore **91 Health for 5 Mana** against a Lesser Healing Potion's 30, repeatable, which does not rebalance the Section 12.6 consumable economy so much as delete it. **The change flattens two Rank ladders and they take categories accordingly.** A large flat Intelligence term added to a small baseline compresses the ratio: Mana Bolt's E→D step came to return **nothing at all on either road**, and Rupture's breakthrough road inverts outright above Intelligence 105. Both leave *magnitude only, by design* and gain authored rungs — Rupture **Compound / Structural / Ward-breaking / Propagating**, Mana Bolt **Arcing / Detonating / Ward-piercing / Homing**. Mend keeps its magnitude-only row, and keeps it honestly, because it was excluded from the change. **That a *magnitude only* row is a claim which can expire is the general lesson**, and it is now on the record. **This is a required migration and it moves live capability** — see `worlds/gatefall/migrations/1.55_to_1.56.md`. 1.55 authored Dimensional Projection's Rank ladder ahead of ratification, and renamed a rung that read as a refusal. Two small corrections, both from the player reading the finished Section 7.3 tables back. **Broken Rhythm's B-Rank rung was called *Denied*** — the name of what it does to an opponent's opening — sitting in a column whose neighbours legitimately read *deferred* and *unauthored*. It parsed as the rung itself being refused. It is now **Cadence break**; the effect is unchanged. A rung name that collides with the vocabulary of withholding is a rendering defect, and Section 20.2's principle applies to names as much as to numbers. **Dimensional Projection was the one skill with no Rank ladder**, deferred at 1.52 on the ground that a skill which does not exist yet should not carry rungs — it is an unformed candidate that no Bearer has ever demonstrated. **The ruling goes the other way: the ladder is what makes the skill safe to form.** Twin Fang is the evidence. It was made ascension-eligible at 1.52 with no Rank axis at all, and its first ascension would have destroyed 37.5% of its damage before anyone checked; Dimensional Projection sat at **x0.25**, range 20 m falling to 5 m, waiting to do the same. Authoring the rungs now closes that before the skill can exist rather than after. Its range band gains **+3 m per Rank above native** (E 5-20, D 8-23, C 11-26, B 14-29, A 17-32) and it carries a `magnitude_floor` from ratification; its categories are **Recall** (D), **Blind placement** (C), **Past the wall** (B) and **Recall in flight** (A). `tools/test_rank_dominance_law.ps1` now verifies it alongside every formed skill. **No live value moves and no skill changes**: Dimensional Projection is unformed, and Broken Rhythm keeps its effect, its Rank, and its mastery — see `worlds/gatefall/migrations/1.54_to_1.55.md`. 1.54 made ascension provably worth taking, which through 1.53 it was not. Section 7.5 has always stated the ordering `Rank N Master < Rank N+1 Novice < Rank N+1 Adept`, and nothing ever verified it. Checked as arithmetic at every rung of every skill, it was false in two places. **Twin Fang landed at x0.625** — a **37.5% loss** of the damage the technique exists to deal — because its strikes read weapon power rather than a Rank baseline, so its entire follow-up multiplier belonged to mastery and ascension reset it. The 1.52 magnitude-axis ladder had made the skill *eligible* without anyone checking whether the trade it now permitted was favourable, **and an offer had already been opened to the Bearer on those terms.** **Dimensional Projection sat at x0.25**, range 20 m falling to 5 m, unformed and waiting. And at the **90% reduction cap** a higher-Rank Novice merely *equals* the lower-Rank Master, which the stated `<` also got wrong. **Two fixes.** Twin Fang gains **+0.35 per Rank above native** on its multiplier base, deliberately modest because its damage already grows with Strength and every weapon equipped — its value at native E-Rank Master is **x1.60, unchanged**. And Section 7.2 gains the **magnitude ratchet**, `magnitude_floor`, the exact counterpart of the scope ratchet it has carried since 1.31: no ascension may land below the value held immediately before it, on any magnitude a skill owns — multiplier, reduction fraction, or authored range. **The law is restated as what it actually is**: `Rank N Master <= Rank N+1 Novice (rune) < Rank N+1 Adept (breakthrough)` — **no axis ever falls, and at least one thing is gained**, whether a larger number, a further exchange of duration at the cap, or an authored category. Equality plus a new kind is a real ascension; a smaller number is not, and this profile no longer produces one. `tools/test_rank_dominance_law.ps1` now verifies every reachable rung of every skill on every ascension road, and catches the further trap the ratchet creates — a floor that swallows an entire mastery track, so climbing Novice to Master at the new Rank buys nothing. **No live value moves**: Twin Fang stands at native E-Rank Master and its multiplier is x1.60 before and after — see `worlds/gatefall/migrations/1.53_to_1.54.md`. 1.53 authored A-Rank across all three Section 7.3 ladders Both were deferred together through 1.52 on one argument: every named S-Rank in canon carries a unique **signature** technique rather than a templated continuation of a starter skill, so authoring an A- or S-Rank rung by the D/C/B pattern risked contradicting established fact. **That argument conflated two things this profile deliberately keeps apart.** A signature is innate, one per awakening, and authored per NPC under Section 13.6 — which grants one to *every named NPC hunter of D-Rank or above*, not only S-Ranks: **Naomi Okafor is C-Rank and carries Still Room.** A ladder rung is what a *learned* technique gains from Rank, and Section 13.6 says in its own words that runes and skill books "add **learned** techniques on top" of a signature. The two already coexist at every Rank from D upward, C-Rank included, where this profile has authored rungs since 1.6 and nothing has ever contradicted Naomi. **A-Rank is therefore authored** — Keen Sense *Provenance*, Silent Step *Unattributed*, Exploit Pattern *Anticipatory*, Field Command *Standing order*, Resonance Extraction *Latent siting*, Sprint *Unbroken*, Flash Step *Blind step*, Dagger Mastery *Unbroken edge*, Stone Skin *Against the unphysical*, Bulwark *Covering the line*, Twin Fang *Answer*, Broken Rhythm *Broken formation*; Rupture, Mend and Mana Bolt continue *magnitude only, by design*. Each is a category and nothing else: no modifier step, no Mana change, no magnitude the skill did not already have. **S-Rank stays deferred on a reason that survives the correction** — not signatures, but that a learned technique standing level with the six named singular gifts the world's hunter politics is built on is a question about the world's power ceiling, left to Section 20.3. **Ladder columns become absolute Ranks** (E/D/C/B/A) instead of "First/Second/Third Rank above native", which had put Sprint's A-Rank and Flash Step's A-Rank in different columns; a native-D skill simply has no grant in the D column and the cell says so. **The repository ceiling guard now parses the authored extent from these tables** rather than carrying it as a hand-maintained literal, closing what `F-013` left open. **Nothing is retroactive and no stored value moves**: no skill in any campaign stands at A-Rank, which is unreachable until System Rank B at level 30 — see `worlds/gatefall/migrations/1.52_to_1.53.md`. 1.52 gave Rank somewhere to land on every skill that had nowhere. Section 7.3 carried two ladder tables — scope and capability — covering seven skills between them. Eight mastery-tracked skills appeared in neither, and the profile's account of them was one sentence in Section 7.2: the quantitative axes are closed-form, so the grant is always authored. **That sentence was true and it was not enough.** For damage and healing it is fine — the Rank baseline multiplies output by ~2.5 a step and a higher-Rank Novice beats a lower-Rank Master by 1.56×. For the **passive-multiplier** and **reduction** ladders the same comparison gives **1.17× / 1.09× / 1.06×** and **1.10× / 1.07×**, converging toward parity, because both add a fixed increment to a growing base against a mastery track that also adds a fixed increment. Dagger Mastery ascended **twice** and gained nothing a Bearer can feel and no capability at all. And for an earned technique whose damage reads **weapon power rather than a Rank baseline** — Twin Fang, Dimensional Projection — the quantitative grant is not thin but **absent**: every axis inapplicable, no row in either table, so the skill was **permanently ascension-ineligible**. Twin Fang stood at Master, below the ceiling, finished. **1.52 authors a third Section 7.3 table, the magnitude-axis ladder, giving every mastery-tracked skill a row** — real D/C/B categories for Dagger Mastery, Stone Skin, Bulwark, Twin Fang and Broken Rhythm; an explicit *magnitude only, by design* with its ratio attached for Rupture, Mend and Mana Bolt, so a row is never blank; and Dimensional Projection deferred to its own ratification. No rung adds a modifier step, none changes a Mana cost, and **every quantitative grant is unchanged and still applies in full** — a category is added beside the number, never in place of it. **The same defect existed on the mastery axis and is closed with it.** Section 7.4's ladders are closed-form and had no coverage list, and **Broken Rhythm used none of them** — a permanent passive at the Section 4.3 step cap has no multiplier, no reduction, no duration to lengthen, no scope count, and Mana 0, so levelling it from Novice to Master granted **nothing at all**. Its mastery track is now the **scope axis, 1/2/3/4/5 beneficiaries**; its effect is authored into Section 7.2 as a ratified earned technique, having existed only as a line on the Bearer's sheet; and Section 7.4 gains a **per-skill mastery table** so no skill's levelling is undocumented again. Section 7.4 also states that **a skill at Master still earns and still writes its qualifying scenes**, and Section 7.5 makes the ascension-readiness check **standing**, evaluated from stored state at every barrier rather than from memory of which barrier recorded an advance. **A-Rank and S-Rank remain deferred** under Section 20.3, unchanged. Section 14.3 adds **skill-credit coverage** and rules that a resolved dangerous scene may not be filed as `kind: scene`. **This is a required migration and it moves live capability** — see `worlds/gatefall/migrations/1.51_to_1.52.md`. No pool, Stat, level, XP, price, timer, item, or resolved outcome moves. 1.51 took the vertical edges off the System window. Section 15.1's frame was a closed box, every interior row carrying a `║` at both margins; 1.51 keeps the horizontal rules and removes both edges, so a panel opens on `╔══`, divides on `╟──`, closes on `╚══`, and an interior row is its content alone. **The right edge was the expensive half** — it only holds if every row is padded to an exact width, and these panels are full of glyphs a Runtime can miscount (`★`, `█`, `◈`, `×`, bracketed Ranks), so one slip renders a wall that visibly fails to close and reads to the Bearer as a broken window. The left edge repeated that per-row risk for no gain, the rules already marking where a panel starts, ends, and divides. **Rows are laid out on columns and never padded rightward**, there being no margin to pad to; the no-truncation rule is unchanged, and the rules alone keep a fixed length. **The change is necessarily global** — Section 15.4 states that `/system all` composes the other panels unchanged and authors no layout of its own, so the frame cannot differ between them. **No mechanic, number, price, timer, pool, capability, or resolved outcome moves, and no stored value is read or written** — this is a compatibility treatment, not a required migration; see `worlds/gatefall/migrations/1.50_to_1.51.md`. Every value reachable under 1.50 is reachable under 1.51, in the same section, on the same row, in the same order. 1.50 **defined the five stored inventory kinds Section 15.3.2 had only named.** `/system gear` groups the dimensional inventory into Gear, Consumables, Keys, Materials and Special and prints each group's live line count, and the profile never said what belongs in any of them — a stated number resting on an unstated rule, which is the Section 20.2 defect. The kinds are now defined with a **deterministic precedence order** (Keys, Consumables, Special, Gear, Materials), so a holding falls in exactly one group and a misfile is a contradiction rather than a matter of taste. **`system_state.inventory` is restructured to match**, holding one list per kind, so a panel renders five groups from five lists and each count is that list's length — nothing about the grouping is inferred at render time. This closes the second half of a defect whose first half was repaired at `EVT-000366`: a `/system gear` call had silently omitted a real possession, because the field it renders from was prose a renderer had to interpret twice, once to ask whether an entry was an item at all and again to ask which group it belonged to. **No holding, quantity, Rank, provenance, or owned object changes** — see `worlds/gatefall/migrations/1.49_to_1.50.md`. No other number, cost, timer, capability, pool, or resolved outcome moves. 1.49 retired Multitask and gave Intelligence **a passive it can feel.** Multitask's entire grant was a ceiling on concurrent non-daily quests, and across the whole of Gatefall's play record that ceiling never once bound: a Bearer at capacity 4 held two attached Hidden pointers and had accepted no Urgent quest at all, while the skill's own use counter stood at **0** against 8, 4, 2 and 1 for the other four. The binding constraint on quests is **supply** (Sections 8.4.2, 8.4.3), never the cap — so the ladder was a Rank step that granted nothing, which is Section 7.2's Rank Dominance Law failing on its own terms. **Capacity moves to System Rank** (Section 8.4): 2 / 3 / 4 / 5 / 6 / 7 at E / D / C / B / A / S, owned by no skill, and `non_daily_quests` drops its `base_capacity`, `multitask_bonus`, and `analyst_bonus` fields. **Conduit** takes the Intelligence slot: one category escalating across six rungs, **+5 / +10 / +15 / +20 / +25 / +30 percentage points** to both Section 5.2 recovery rates. It composes in a fixed order — base rate, Conduit, environmental halving, then any title multiplier — and it **cannot reach inside a fight**, because recovery is settled from elapsed fictional time and an exchange is not an hour, so Section 5.3's exhaustion and the drained-boss tactic it supports are untouched. Nothing here alters a skill's Mana cost, which remains mastery's axis alone (Section 7.2). Two 1.48 rungs are corrected to their own category on the same principle: **Overpower A** returns to the dominate-above-your-Rank ladder (three Ranks above, structures one Rank above) instead of granting immovability, and **Pre-empt A** extends the tempo ladder to allies (shared first blade) instead of granting interposition. **This is a required migration and it moves live capability** — see `worlds/gatefall/migrations/1.48_to_1.49.md`. No other number, cost, timer, pool, price, or resolved outcome moves. 1.48 authored the twelve **Stat Passive rungs Section 4.4 had left empty** — B, A, and S for **Overpower**, **Pre-empt**, **Shrug Off**, and **Multitask** — closing a gap the profile had carried since the Stat-50 skills were folded into their partners. Those four had E, D, and C authored and nothing above, so a Bearer whose base Stat crossed 54, 66, or 80 banked the value against a rung that did not exist; Section 4.4's authoring clamp held it, and its telemetry line said so at every checkpoint. Each new rung is a **category** under Section 7.2's Rank Dominance Law and its Stat Passive exemption — a kind of thing the Rank beneath cannot do at any Stat value — and none adds a modifier step, a Mana cost, a multiplier, or a scope count. **Death is untouched at every rung** (Section 20.4): Shrug Off at S removes the penalties harm imposes and never makes a killing blow survivable. Multitask's ladder continues as the capacity number it already was, **5 / 6 / 7** at B / A / S, and Section 8.4's sentence follows it. **This is a required migration and it moves live capability**: the authoring clamp lifting is not a rule a Bearer can fail to notice, and any Bearer already standing above a threshold takes that Rank the instant the rung exists — see `worlds/gatefall/migrations/1.47_to_1.48.md`. The System Rank ceiling (Section 7.5, System Rank + 1) is untouched and is now the only limit on a Stat Passive's Rank. No other number, cost, timer, capability, pool, price, or resolved outcome moves. 1.47 rewrote **Section 16** and, unlike its three predecessors, **changes a rule a character can notice**. Titles were authored to be granted "the instant the feat resolves" and nothing in the profile ever caused one to be evaluated: the section was live law with no trigger, and no Bearer in any Gatefall campaign has ever held a title. 1.47 gives it one. A **Title Assessment** (Section 16.1) now runs inside the level-up that settles **level 10** and every level that is a multiple of ten thereafter — every rung of the Section 6.6 System Rank ladder above the E a Bearer starts at, continuing past 50 on the decade — and it re-reads the Bearer's **whole recorded career since onset** against the catalog, granting every title the record has earned. Nothing fires between assessments, no unearned criterion is ever published (Section 14.2), and an assessment that grants nothing still renders. Section 3.2 gains the assessment as a fifth settlement on decade levels under its existing invariant; Section 14.3's Tier-1 list trades the untriggerable `TITLE EARNED` line for the `TITLE ASSESSMENT` block; `/system titles` (Section 15.3.4) gains an `ASSESSMENT` section; and the catalog grows from five entries to **twenty-one across three grades** — twelve Common, six Rare, three Singular — every one of them authored so that a Runtime can decide it from resolved Events alone, and every one of them named for what its feat made the Bearer rather than for the feat. A title also now grants what Sections 3.2 and 4.2 have promised since 1.0 and no title ever stated: **allocatable stat points on earning — +2 Common, +5 Rare, +10 Singular**, permanent and independent of equipping. And the loadout grows with the Bearer — **one equipped slot per assessment passed, capped at five** against a catalog of twelve, where 1.0 allowed exactly one forever; `system_state.title` accordingly holds a list. **A Bearer already past level 10 at adoption runs every missed assessment once, at adoption, in level order** — see `worlds/gatefall/migrations/1.46_to_1.47.md`. No other number, cost, timer, capability, pool, price, or resolved outcome moves. 1.46 changed no rule a character could notice: it rewrote **Section 15** — how the System's windows are laid out and how the command is divided. `/system` now renders a one-screen **Console** rather than one exhaustive window; every panel gains an authored template where Section 15.2 previously declared focused views and authored none; the worn loadout and the dimensional inventory merge into a single **`/system gear`** panel (Section 12.9 already governed them as one surface), with `/system equipment` and `/system inventory` retained as aliases; **`/system all`** is added for the exhaustive read; Stat Passives get their own skills group instead of a second row grammar inside `PASSIVE`; the Console and `/system gear` show **cash and pending payouts** beside gold, never totalled with it; **Rank always renders bracketed** (`[E-Rank]`), never as a bare letter; and a new **render grammar** (Section 15.1) fixes width, spacing, columns, and a two-glyph status gutter. Every fact reachable under 1.45 remains reachable, and the stale Section 15.6/15.7/15.8 cross-references left by an earlier renumber are repointed. 1.45 opted Gatefall into the Data Model Section 2.4 `participation_audits` block under Decision 085, with a prospective `EVT-000268` baseline and twelve fiction-bearing Event kinds as its coverage set, and carried **Data Model 0.1.5 → 0.1.6** engine-side; 1.44 made the Section 9.10 tracked board dispatchable through a `gatefall.board.deadline` domain under Decision 084; 1.43 authored the first exception to Section 2, a stat elixir spent on another awakened; 1.42 put a D-Rank floor under Section 13.6's signature abilities.)*

**Version history and migrations.** Every transformation from Profile 1.1 forward to the active version lives in `worlds/gatefall/migrations/`, one authoritative record per edge, declared by `worlds/gatefall/migrations/INDEX.md`. Restoring a capture taken under Profile *V* runs each record from *V* forward to the active version in order and reads no other migration text; a current rule lookup reads none of them. Immutable checkpoints are never rewritten by a migration — the chain applies to mutable live state. Where a migration record and this profile disagree about present law, this profile governs: a migration record describes a transformation, not a standing rule.

**1.6 authors the System in full — the mechanical law of a gate-and-System world of awakened hunters.** Gatefall is a world where every hunter's Rank is fixed at Awakening and only one person in the world grows: the **Bearer** of the System. This profile governs how the Bearer levels, what stats, equipment, and skills do, how mana and health resolve, how the daily quest and its penalty enforce the grind, and how the world's Gates, loot, and economy behave. It is authored across three parts; this file is the whole document as it stands. Sections 1–8 fix the progression core.

---

This document is Gatefall's declared **World Rule Profile** under `010_ENGINE_RULES.md` Section 14 and Decision 059.

It is **world rule content**: authoritative on behavior within its declared scope, owning no Persistent Object and carrying no identifier — as the Engine Rules are authoritative and identifier-free, and for the same reason. Rules are not state (Decision 062).

`200_WORLD_BIBLE.md` is this world's narrative canon. It describes; this document governs. Where the two disagree on a number or a mechanic, **this document is authoritative** (Rules Section 14.5).

Gatefall inherits Chronicle Engine behavior except where an override below declares otherwise. Undeclared behavior uses the engine default. **An undeclared conflict is a contradiction, not an override** (Rules Section 14.1).

Ranks everywhere in this world are **E, D, C, B, A, S**, weakest to strongest.

---

# 1. Declared Overrides

## GTF-OVR-001 — Causal System Progression

- **Replaces/refines:** Rules Sections 5.3 and 5.7; Decisions 012, 013, 051, and 057 where they prohibit levels, XP, or a System from causing capability growth.
- **Scope:** The **Bearer** alone — the single living holder of Gatefall's diegetic System. Not awakened hunters generally: they do not level and nothing counts their growth (Section 2).
- **Activation:** Active while the character bears Gatefall's System.
- **Replacement:** Experience (XP) awarded for genuine resolved challenge is causal canonical state. Crossing a threshold causes an immediate **level-up**: every base Stat rises by 1, five allocatable stat points enter the unspent pool, and Health and Mana restore in full. A spent stat point directly and permanently changes canonical capability. Skills acquired by rune, skill book, milestone award, or ratified practice are canonical capability.
- **State/provenance:** The Bearer's character ledger records level, current XP, next threshold, unspent stat points, every **base** stat and its allocations, the nine equipment slots, the Mana pool maximum, every known skill, and the event or resolved challenge that awarded each XP gain. Item lines live with the owned items; effective stats are derived from base stats plus the equipped lines (Sections 4.1, 11.5, 12.9).
- **Resolution:** Growth changes capability — and therefore automatic possibility, relative stat margins, costs, magnitudes, prerequisites, and available methods. **It never supplies the outcome of an uncertain contested action.** Uncertain actions still resolve on the d100 through Rules Section 4 and Decision 058. A level is never spent to buy a result, and the level-derived System Rank is never a substitute for the Stats that actually govern the Bearer's body.

## GTF-OVR-002 — System Vitality

- **Replaces/refines:** Rules Sections 6.8–6.10 and Decision 018 where they reject a universal health-point pool for a character.
- **Scope:** The Bearer's Health and Mana. Every other hunter, and every monster, uses the engine's **Rank Health** for its effective Rank (Section 6) and the engine injury model, and from Profile 1.32 a **Rank Mana** pool sized the same way (Section 6.1). Only the Bearer carries a pool that grows **of itself**: his scale with effective Vitality and Intelligence, while a fixed-Rank entity's are read from its Rank and never grow on their own. **From Profile 1.43 there is exactly one way a non-Bearer's pools move: the Bearer spending a Section 12.5 stat elixir on them (Section 12.5.1).** That is System intervention, not growth — nothing the recipient does, earns, trains for, or survives will ever change their pools, and no other hand in the world can move them either.
- **Activation:** Active while the character bears Gatefall's System.
- **Replacement:** The Bearer's Health and Mana are canonical current/maximum numeric pools. Damage removes Health after applicable reductions; casting and skill use remove Mana. At zero Health the Bearer is incapacitated and receives an outcome appropriate to the attack and established fiction — and in Gatefall, where death is final (Section 6.5), zero Health is where a campaign can end.
- **State/provenance:** The Bearer's character ledger records current/maximum Health, current/maximum Mana, active conditions, and the event provenance of each change.
- **Resolution:** The die resolves whether an uncertain attack or defense succeeds and its result band; established capability and protection then determine damage **after** that result. Effective Vitality sets maximum Health and may supply a relative stat margin on endurance, resistance, and hazard actions under Section 4.3; it never decides a contested result without the die.

## GTF-OVR-003 — Mana-Borne Damage Against Monsters

- **Replaces/refines:** Rules Section 6 (Conflict, Combat, Injury) and the engine default that any sufficiently forceful weapon can wound any target. Operationalized by this profile's Section 6.2 damage model.
- **Scope:** Damage dealt **to monsters** — the mana-suffused creatures of Gates, dungeon breaks, and the Jiu-class exclusions (Bible Sections 1, 5). It does not touch how humans wound humans, or how a monster wounds anyone; those resolve on the engine default and this profile's Rank-health model unchanged.
- **Activation:** Always active in this world.
- **Replacement:** A monster's body is saturated with mana, and **only damage that itself carries mana lands on it.** Mana-borne damage has exactly two sources:
  1. an **awakened combatant's** strike, skill, or signature ability — the awakened channels mana through the blow, so a hunter wounds a monster with a bare fist, a plain blade, or a cast alike. Section 6.2 and the equipped chassis set magnitude (unarmed ×0.5; weapons use their Section 11.5 chassis; authored skills use their own multiplier); and
  2. a **mana-bearing weapon** — ranked Gate-forged gear (Section 11.5) and enchanted or named armaments (Section 11.6), which hold their own mana edge.

  **Conventional, un-enchanted mundane arms carry no mana and deal no damage to a monster.** Gunpowder firearms and their munitions, mundane blades, explosives, artillery, and ordnance of purely mundane make have a skill multiplier (Section 6.2) of **×0** against a monster: they may knock back, stagger, bind, cordon, or destroy terrain, but they remove **no** Health. This is why a dungeon break is answered by hunters and not by soldiers, why conventional forces can only *contain* a break (Section 9.3; Bible Section 2), and why the world counts its awakened as its only real weapon against the Gates.
- **The magic-weapon exception.** A true **magic weapon** — any mana-bearing armament (ranked or enchanted, Section 11.5–11.6) — lets **even an unawakened wielder** land mana-borne damage on a monster, because the mana is the weapon's, not the wielder's. Such weapons are **very rare and correspondingly valuable**: ranked gear is forged from beast cores in small numbers by artificers (Section 12.8), named uniques are one-of-a-kind (Section 11.6), and nothing mundane substitutes. For the unawakened — 4,999 of every 5,000 people (Bible Section 3) — a magic weapon is the *only* way to personally harm a monster, and almost none will ever hold one.
- **State/provenance:** No new tracked state. Whether an attack is mana-borne is read at resolution from its source — the wielder's awakened status (campaign canon) and the weapon's Rank or enchantment (Section 11.5–11.6) — exactly as skill multipliers already are.
- **Resolution:** The die still resolves whether an attack lands and its degree (Rules Section 4; Decision 058). This override only sets the **skill multiplier to ×0 for a mundane-source attack against a monster**, so a landed mundane hit removes no Health. It never touches the roll, and it changes nothing about awakened-versus-monster, monster-versus-anyone, or human-versus-human combat.

## Interaction

`GTF-OVR-001`, `GTF-OVR-002`, and `GTF-OVR-003` are independent and compose without conflict. Progression (001) sets the capability values that vitality (002) consumes; damage-source (003) gates *whether* an attack against a monster carries mana at all, before 002's Rank health ever reads the hit. None of the three touches the die.

---

# 2. Scope: Who the Overrides Bind

Gatefall has one legendary exception and everyone else. The overrides bind only the exception.

| | Grows in play? | Governed by |
|---|---|---|
| **The unawakened** | No | Engine defaults |
| **Awakened hunters** (E-Rank–S-Rank) | No, with one exception — rank is fixed at Awakening and capability is their Rank, but the Bearer may enlarge another awakened's pools with a stat elixir (Section 12.5.1) | Engine defaults, plus `GTF-OVR-002` where a Bearer has intervened |
| **The Bearer** | Yes — levels, stats, skills, growing pools | `GTF-OVR-001` and `GTF-OVR-002` |

There is exactly **one Bearer alive** in a world-line. Who that is, is campaign canon, not world rule content: this profile binds *the Bearer role*, and each campaign's ledgers name the entity that holds it. A forked world-line has its own Bearer with its own identifier (Decision 053) and inherits this profile unchanged.

**Every other character resolves as an ordinary engine character whose capability is their fixed Rank.** An NPC hunter is not given a stat sheet, a level, or an XP total. From Profile 1.32 it carries a **Rank Mana** pool alongside its Rank Health (Sections 5.1, 6.1) — both fixed numbers read from its Rank, neither a Stat-linked curve that grows. "This is a licensed B-Rank" is a complete mechanical description: it sets the Rank the character acts at (Section 6, Section 13) and nothing further is authored. Monsters likewise are described by Rank alone. This scoping is the world's whole premise — Gatefall is not a world where the engine's progression model is replaced wholesale; it is a world that otherwise obeys the engine and contains one person the System is levelling.

---

# 3. Levels and Experience

Level, XP, and the next threshold are **tracked canonical Bearer state** (Decision 057). They are computed and recorded from the rules below, never estimated to a plausible figure. XP is awarded only for genuine resolved challenge (Section 6 of the engine; the die must have been live). There is **no level cap**.

## 3.1 The XP Threshold

The XP required to advance from level **L** to level **L+1** is:

```
threshold(L) = L × 100
```

Level 1→2 costs **100**, level 2→3 costs **200**, level 3→4 costs **300**, and so on. Excess XP carries into the next level; a level-up spends exactly the threshold and the remainder counts toward the following level.

| L→L+1 | 1 | 2 | 3 | 4 | 5 | 10 | 25 | 50 |
|---|---|---|---|---|---|---|---|---|
| XP to advance | 100 | 200 | 300 | 400 | 500 | 1,000 | 2,500 | 5,000 |

## 3.2 The Level-Up Award

Crossing a threshold is a **level-up**. It settles immediately in this order:

1. Increase **all five base Stats** by the **rung gain** for the System Rank the Bearer holds as the level-up settles (Section 6.6), read from this table:

   | System Rank held | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
   |---|---:|---:|---:|---:|---:|---:|
   | **Rung gain, every Stat** | **+2** | **+4** | **+9** | **+23** | **+63** | **+63** |

2. Add **+5 unspent stat points**, allocatable by the Bearer under Section 4.2.
3. Re-derive effective Stats and the new Health/Mana maxima.
4. Restore Health and Mana to those maxima and clear ordinary fatigue. Injury severity remains governed by Section 6.3 and does not clear merely because the pools refill.

The System fires the level-up block after all four effects settle. Nothing is offered or banked: a level-up cannot be saved as a later heal. The Bearer chooses only how and when to allocate the five unspent points.

**Why the gain is a ladder and not a constant (1.80).** A flat `+1` was linear growth chasing a **geometric** target, and it lost by construction. Every fixed-Rank hunter and creature reads its pools from the Section 6.1 ladder, which multiplies by **2.5 per Rank** — 40 / 100 / 250 / 600 / 1,500 / 4,000 Health. The Bearer's pools are linear in his Stats (`4 × Vitality`, `2 × Intelligence`), and his Stat income was flat. The two agreed at D and C, drifted at B, and came apart above it: measured on the live campaign at level 30, the Bearer stood at **87% of a B-Rank hunter's Health** and would have reached System Rank **S at 45% of an S-Rank hunter's**. The label would have promised a body the arithmetic could never deliver, and the gap widened at exactly the rate the ladder multiplied.

The rung gains are derived from that ladder rather than chosen. Each is the per-level growth that carries a Stat from one rung's parity value to the next across the ten levels between them — parity being `Vitality = Rank Health ÷ 4` and `Intelligence = Rank Mana ÷ 2`, which is the same arithmetic Section 6.1 uses in the other direction. The S-Rank row repeats A's because level 50 is the ladder's last rung and there is no further parity target above it; growth past S continues at the A rate rather than stopping.

**Automatic growth alone clears parity at every rung, and that is the point of the numbers.** From the weakest legal creation array (a Stat of 8, Section 4.1) the ladder yields 26 at level 10 against a D-Rank hunter's 25, 66 at level 20 against 62, 156 at level 30 against 150, 386 at level 40 against 375, and 1,016 at level 50 against 1,000. **The Bearer therefore matches a hunter of his System Rank before he has allocated a single point, and every allocated point is the margin by which he exceeds one.** That is the whole correction: Section 6.6 still says System Rank "is not a substitute for his actual body," and it remains true — but the body now arrives at the rung with the label instead of trailing it by more than half.

**Nothing here touches allocation.** The +5 per level, the daily-quest reward, and the Title Assessment points are unchanged; they sit on top of a floor that now rises with the ladder instead of beneath a label that outran it.

> **Level-up settlement invariant:** every reward caused by crossing an XP threshold applies in that same exchange. The Runtime never asks `accept / defer`, never creates a pending level-up entry, and never lets the Bearer reserve the restoration. If one XP award crosses several thresholds, settle the complete four-step package once for each level in order before play continues.

**A decade level carries one further settlement.** Where the level reached is **10, or any multiple of ten above it**, the four-step award is followed inside the same exchange by the **Title Assessment** (Section 16.1) — the System reading the whole recorded career against the title catalog and granting every title it has earned. It settles under this same invariant: never deferred, never banked, never declined. Levels 1–9 carry no assessment.

Allocatable stat points come from the level-up award (+5), the **daily-quest Ability Point reward (+3, Section 8.1)**, the **Title Assessment (+2 per title earned, Section 16.1)**, and item or skill rewards that state a specific point bonus.

## 3.3 Kill XP by Threat Rank

Defeating a monster awards XP by the monster's threat Rank. **Elite** monsters award ×2; a **boss** awards ×4.

| Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---|---|---|---|---|---|
| Kill XP | 10 | 25 | 60 | 150 | 400 | 1000 |

An elite of Rank G awards twice the row value; a boss of Rank G awards four times it (an E-Rank boss = 40, a C-Rank elite = 120).

**The underdog bonus.** Killing something stronger than the System Rank prepared the Bearer for pays for the danger of it. The kill XP above is multiplied by how far the slain creature's Rank stands **above the Bearer's System Rank** (Section 6.6) — the multiplier doubles for each full Rank:

| Creature's Rank vs Bearer's System Rank | Kill XP × |
|---|---|
| At or below the Bearer's System Rank | ×1 (no bonus) |
| **+1 Rank** above | **×2** |
| **+2 Ranks** above | **×4** |
| **+3 Ranks** above | **×8** |
| **+4 Ranks** above | **×16** |
| **+5 Ranks** (an E-Rank Bearer felling an S) | **×32** |

The factor applies to the creature's full kill value, elite and boss multipliers included, and is computed per creature at the moment of the kill. Worked examples for an **E-Rank** Bearer: a D-Rank common (25) at +1 → `25 × 2 = 50`; a C-Rank common (60) at +2 → `60 × 4 = 240`; a D-Rank boss (`25 × 4 = 100`) at +1 → `100 × 2 = 200`. A creature **at or below** the Bearer's System Rank carries no bonus — an E-Rank Bearer killing an E gets the flat 10, and once he reaches C-Rank the E and D kills that once paid a premium pay only their base.

The bonus is progression-relative, not a second combat modifier. It shrinks as System Rank climbs, while the actual danger of the fight remains determined by Stats, equipment, fixed-Rank enemy magnitude, and the die. The **Gate-clear milestone (Section 3.4) is not affected**.

## 3.4 Gate-Clear Milestone XP

Clearing a Gate — killing its boss, which collapses the Gate — awards a one-time **milestone** bonus in addition to the per-kill XP earned fighting through it. It is awarded **once per Gate**, on the boss kill, and never per attempt or per re-entry.

| Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---|---|---|---|---|---|
| Milestone XP | 70 | 150 | 320 | 700 | 1500 | 3200 |

## 3.5 Daily XP

The daily quest awards **no XP**. Its three independently claimable rewards are Ability Points **<+n>** — **+3 by default and +4 while Ascetic is equipped** (Section 16.2), read live from canonical state at the moment the entry is **claimed** rather than issued — Status Recovery, and a Daily Random Box (Sections 3.9 and 8.1). XP comes from genuine resolved challenge: kills, clears, and authored quest awards that state an XP value. Training grows the Bearer through its direct rewards, not by also advancing the XP threshold.

## 3.6 Award Timing

XP is added the instant the exchange that resolves the challenge settles. The same exchange adds the XP, checks the threshold, applies every crossed level-up in sequence under Section 3.2, and fires the notification. If one action resolves several monsters, aggregate that action's XP and notify once. There is no pending-XP or pending-level-up state and no later reconciliation.

## 3.7 Worked Example — A Fresh Bearer Clears an E-Rank Gate

A newly awakened Bearer at **level 1** (XP 0/100, effective Intelligence 10, Mana 20/20) enters a confirmed E-Rank Gate. Its population, rolled on the standard formula (Section 8 restates it; the full Gate rules are Section 9), comes up **10 common E-Rank beasts, 1 E-Rank elite, 1 E-Rank boss**.

- Ten common E kills: `10 × 10 = 100 XP`.
- One E-Rank elite (×2): `10 × 2 = 20 XP`.
- One E-Rank boss (×4): `10 × 4 = 40 XP`.
- E-Rank Gate clear milestone (boss kill, once): `70 XP`.

Total earned in the clear: **230 XP**. Tracking against the thresholds: the first 100 crosses level 1→2. The level-up immediately raises all five base Stats by 1, adds **5 unspent points**, re-derives maximum Health and Mana, and restores both pools; the remaining **130** carries toward level 3, whose threshold is 200. The Bearer is now **level 2, XP 130/200**, with five points available for later allocation and no pending level-up reward.

During the fight the Bearer spends Mana on a skill (Section 7); a representative inline notification stream (Section 8 fixes the format) reads:

```text
╔══ ◈  F L U X   S I G H T ═══════════════════════════════════════════════════
     10 × Ashroot Crawler     [E-Rank] yellow     HP 40/40      MP 20/20     each
     Ashroot Matriarch        [E-Rank] yellow     HP 160/160    MP 80/80
╚═════════════════════════════════════════════════════════════════════════════

     MP −6 · 20 → 14/20
     XP +100 · 0 → 100/100  (10 × common E)

╔══ ◈  L E V E L   U P ═══════════════════════════════════════════════════════
     Level 2      all Stats +1      Ability Points +5      HP/MP restored
╚═════════════════════════════════════════════════════════════════════════════

     XP +130 · 0 → 130/200  (elite ×2, boss ×4, E-Rank clear milestone)
```

The Flux Sight lines assume the Bearer has reached the D rung; a Bearer whose Perception has not yet reached 36 sees the designation colors alone (Section 14.6) and no pools. Every value is still derived from Sections 3.1–3.4 and the population formula — the read renders what the clear already determined, and settles nothing on its own.

During the same fight an E-Rank beast lands a standard hit — one E fixed-Rank baseline of 10 before reductions (Section 6.2). Compare that resolved damage with the Bearer's current and maximum Health to apply Section 6.3; do not call it “a quarter of the Bearer's Health,” because the Bearer's pool now derives from Vitality and can be much larger or smaller than the attacker's Rank baseline. Every number here is derived from Sections 3.1–3.4, 6.2–6.3, and the population formula; a Runtime resolves the whole clear — kills, XP, level-up, Mana spend, and whether a hit wounds — without a ruling.

## 3.8 Party XP Credit

Most clears are party clears, and the Bearer earns from them on the same genuine-challenge test that governs all XP (Section 3, opening): the die must have been live and the Bearer must have been a real participant in the fight.

- **Kill XP** (Section 3.3) goes to the Bearer for **any kill his live-die actions materially contributed to** — a killing blow, a landed hit, a skill, or a control or setup action the resolved exchange turned on. He need not land the last hit; he must have taken a genuine, resolved part in bringing the creature down. A kill he took no live-die part in awards him nothing, even when an ally in his party made it.
- **The Gate-clear milestone** (Section 3.4) settles on **any clear the Bearer fought through** — if he was a materially contributing member of the party that killed the boss, the once-per-Gate milestone is his, exactly as it would be on a solo clear. He need not strike the boss's own killing blow.
- **Pure spectating awards nothing.** A Bearer who stands back and lets a party clear around him has met no genuine challenge (Section 3, opening) and earns neither kill XP nor the milestone. Presence is not participation; the live die is the test.

## 3.9 Daily Rewards Are Independent

Level-up effects are immediate (Section 3.2). **Only daily-quest rewards may remain pending or stack for later acceptance.** Completing the daily quest creates three separate reward entries:

1. **Ability Points <+n>** — claiming it adds that many points to the unspent pool. **The figure is canonical state, not a constant**: +3 by default, **+4 while Ascetic is equipped** (Section 16.2), evaluated at **claim** rather than at issue.
2. **Status Recovery** — claiming it restores Health and Mana to their current maxima and clears ordinary fatigue; it clears no injury severity.
3. **Daily Random Box** — opening it makes the real d100 contents roll in Section 8.1 and deposits the result into the dimensional inventory or System gold balance.

The Bearer may claim any, all, or none in any order. Each pending reward does not expire, and multiple days' rewards of the same type stack as separate counted entries. Claiming one never claims the others. This preserves the tactical recovery choice without making level-up growth bankable.

The completion prompt renders:

```text
╔══ ◈  D A I L Y   T R A I N I N G   C O M P L E T E ═════════════════════════
     Rewards         Ability Points <+n> · Status Recovery · Daily Random Box
     Claim           separately, at any time
╚═════════════════════════════════════════════════════════════════════════════
```

The System never allocates points for the Bearer. Pending daily rewards appear individually in `/system`; a Runtime never compresses them into an ambiguous “grant.” Only the Bearer's System creates these rewards, and nothing about an NPC hunter changes (Section 13.1).

---

# 4. Stats

## 4.1 The Five Stats

The Bearer has five **base stats**:

| Stat | Governs |
|---|---|
| **Strength** | Physical force and magnitude: unarmed and weapon damage, lifting, grappling, breaking. |
| **Agility** | Speed and placement: initiative, evasion, weapon accuracy, closing or breaking distance, acting first. |
| **Vitality** | Bodily capacity: maximum Health, endurance, recovery, resisting wounds and hazards. |
| **Perception** | Senses and danger-reading: detection, ambushes, concealed motion, anomaly cues. |
| **Intelligence** | Mana and System control: maximum Mana, Mana recovery, appraisal, analysis, extraction and class capacity. |

An ordinary awakened adult sits at a **baseline of 10 per stat**. The Bearer begins at campaign-creation values — the **authored creation array** — and raises base Stats through automatic level growth, permanent allocations, and any authored permanent reward thereafter.

**The creation array.** At campaign creation the Bearer's five stats are set from a fixed civilian-range array: **five stats, each in the range 8–12, summing to exactly 50, with none above 12.** The average is the ordinary-adult baseline of 10, and the ±2 spread is the pre-System human variation the protagonist starts with. No creation stat sits above 12: the Bearer opens as a civilian, and every point beyond that spread is growth the System has not yet granted.

**Base and effective stats.** Equipment never rewrites a base stat. While an item is equipped, its Section 11.5 bonuses add to the Bearer's base values:

```text
effective_stat = base_stat + sum(bonuses from equipped items)
```

The effective value governs the Bearer's body, pools, magnitudes, and relative stat margins, so every equipped point is causal capability rather than descriptive loot. Unequipping the item removes its contribution immediately. Permanent allocation, automatic level growth, elixirs, and point rewards change the base value instead.

When equipment changes effective Vitality or Intelligence, re-derive the affected maximum while preserving the pool's **missing amount**, not its percentage:

```text
new_current = clamp(new_maximum − (old_maximum − old_current), 0, new_maximum)
```

Equipping capacity is not a heal, and unequipping it is not damage. A separate Status Recovery or level-up may fill the resulting maximum.

## 4.2 Stat Points


**Ability points are tracked state, and base Stats are derived from them (1.82).** Under Data Model 0.1.5 the Bearer's structured `tracked_counters` entries are the **authoritative numeric storage** for allocation, exactly as Section 7.4 has said of skill counters since 1.26. Six paths carry it:

| Path | Meaning | Written by |
|---|---|---|
| `progression.ability_points_earned` | lifetime points awarded, never reset | every level-up (+5), daily Ability Point reward, Title Assessment grade payment, and any item or skill stating a point bonus |
| `stats.strength_allocated` | lifetime points spent into Strength | every allocation naming that Stat |
| `stats.agility_allocated` | ″ Agility | ″ |
| `stats.vitality_allocated` | ″ Vitality | ″ |
| `stats.perception_allocated` | ″ Perception | ″ |
| `stats.intelligence_allocated` | ″ Intelligence | ″ |

Each is a `counter_deltas` change on the causing Event and a matching `current_value` update, under Decision 079's `current_value = baseline_value + Σ(delta)`. Repository validation rejects arithmetic drift.

**The unspent pool stops being stored.** It is `ability_points_earned − Σ allocated`, and a rendered `unspent_points` is a rendering of that difference rather than a number of its own.

**A base Stat stops being stored too.** It renders as:

```text
base_stat = creation_array[stat] + automatic(level) + allocated[stat]

automatic(level) = Σ over every level crossing to date of the Section 3.2 rung gain
                   for the System Rank held entering that crossing
```

**Automatic growth is uniform across all five Stats, and that is what makes this checkable in one line.** Section 3.2 raises *all five base Stats* by the same rung gain at every crossing, so `base_stat − creation_array[stat] − allocated[stat]` must be **the same integer for all five Stats** and must equal `automatic(level)`. A point that reached a Stat without an Event declaring it makes that Stat's residual disagree with the other four, and no quantity of prose can hide the disagreement.

**This exists because the alternative was measured.** Ability points, allocations, base Stats and the unspent pool were prose through 1.81 — the one growth axis in this profile with no arithmetic gate behind it, while XP and every skill counter had one. A live campaign allocated **twenty-five points and recorded fifteen**; the ten that reached Intelligence were correct in every derived figure and named in no Event, and the defect was found by an audit rather than by a gate. That is `F-017`'s shape on a different axis, and `F-017`'s remedy was to make the value a counter. Recorded at that campaign's `EVT-000594`.

**Baselines are prospective and reconstruct nothing.** A campaign adopting this records each counter's current value as its baseline at the adopting Event; no historical Event gains `counter_deltas`, and no past allocation decision is revisited or second-guessed. What the ledger could not previously prove about its own past, it still cannot; what it cannot do from adoption forward is drift.
A **stat point** is the allocatable unit of growth. Its sources are the **level-up award** (+5, Section 3.2), the **daily Ability Point reward** (+3, Sections 3.9 and 8.1), the **Title Assessment** (+2 for each title it grants, Section 16.1), plus any item or skill that states a specific point bonus. One stat point raises one **base** stat by **1**. Allocation is permanent canonical capability; there is no respec unless a future authored in-world mechanism adds one with a cost. Awarded points sit in the Bearer's **unspent pool** until he allocates them; allocation may happen any time.

## 4.3 Stats in Action Resolution

A **modifier step** is one 20-percentile-point adjustment to a d100 resolution, composed under engine rules (Rules Section 4.4; Decision 058). Stats feed the die through exactly one rule:

> **A Stat contributes only through its margin against the resistance actually opposing the method. Baseline against baseline is 0, never a free bonus.**

For a ranked hunter or ranked monster without a five-Stat sheet, Rank supplies the opposing domain rating:

| Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---:|---:|---:|---:|---:|---:|
| Domain rating | 10 | 20 | 30 | 40 | 50 | 60 |

For an unranked ordinary adult, use rating **10** unless established capability, injury, age, or condition changes the resistance. A specifically authored character value takes precedence over the reference table.

```text
stat_margin = acting effective Stat − opposing domain rating
```

| Stat margin | Modifier contribution |
|---:|---:|
| −20 or less | −2 steps |
| −19 to −10 | −1 step |
| −9 to +9 | 0 steps |
| +10 to +19 | +1 step |
| +20 or more | +2 steps |

Exactly one **acting** Stat supplies the margin for one roll. The action's method selects it: Agility places a weapon attack or evasion; Perception detects; Vitality endures; Intelligence appraises or controls a System technique; Strength contests direct force. Strength still supplies physical damage after a hit even when Agility governed whether the weapon landed. A different Stat may govern a later reaction by the opponent.

The stat-margin contribution is capped at ±2 so skill, preparation, equipment effects, wounds, and circumstances retain room inside the engine's ordinary net ±3 cap. Do not also apply a Rank-gap modifier when the Rank-derived domain rating already represents the opponent: that would count the same disparity twice. NPC-versus-NPC actions, where neither side has Stats, continue to use the ordinary Rank gap under Section 13.1.

**Stats establish possibility before probability.** Before rolling, compare the effective Stat with established reality under Rules Section 4.2:

- if capability clearly guarantees the declared method, resolve it automatically;
- if the method is physically impossible even with that Stat, resolve automatic failure or offer a possible alternative;
- if resistance, timing, opposition, or consequence leaves genuine uncertainty, use the margin above and roll.

A high Stat therefore changes what the Bearer can do and how much a landed effect accomplishes; it does not erase the die from a resisting fight. An attack on an active opponent remains uncertain. Lifting a load far beneath demonstrated Strength does not become uncertain merely to display a roll.

**Runtime procedure — mandatory for every Bearer action:**

1. Read intent and method.
2. Decide automatic success, automatic failure, or uncertainty from the direct Stat effects and established facts.
3. If uncertain, choose the single acting Stat materially governing the method.
4. Read the opposing rating, calculate the stat margin once, then add distinct skill, equipment-effect, condition, and circumstance steps.
5. Cap the ordinary net at ±3, make the real d100 roll, and read its degree.
6. Apply resource cost and magnitude from Sections 5–7 and 11.5; round only at the final rule-defined step.
7. Narrate the embodied result without mechanical vocabulary. Render figures only through the Bearer's System or OOC `/debug` under Section 20.5.

## 4.4 Stat Passives

The five **Stat Passives** are a distinct skill class whose Rank is derived from one governing **base Stat**. They are not ordinary passives with a bookkeeping exception: they have **no mastery track at all** — no stars, Novice-through-Master level, qualifying scenes, `mastery_progress`, breakthrough, rune ascension, `rank_ascensions`, or `scope_floor`. Their only growth axis is Rank:

| Base Stat | 30 | 36 | 44 | 54 | 66 | 80 |
|---|---|---|---|---|---|---|
| **Stat Passive Rank** | **E** | **D** | **C** | **B** | **A** | **S** |

Equipment never satisfies a threshold. Read the highest threshold met by the governing base Stat, then clamp the result by **two** limits: **System Rank + 1** under Section 7.5's ceiling, and the **deepest rung authored for that skill** below. Stat value beyond either limit is **held intact** and applies the instant the binding limit lifts — the ceiling when System Rank rises, the authoring limit when Section 20.3 authors the rung. Rank is canonical **derived state**, never a separately stored value.

**Why the second clamp exists.** A Stat Passive's Rank rises on its own: there is no offer to accept and nothing is spent. Section 7.2's ascension-eligibility rule therefore has no purchase here — it withholds an *offer* that would cost mastery and return nothing, and a Stat Passive makes no offer to withhold. Without this clamp, a base Stat crossing a threshold whose rung is unauthored would hand the skill a Rank whose grant does not exist: a number this profile states and nothing defines, which is the Section 20.2 defect exactly. The clamp costs the Bearer nothing, because the held value applies in full the moment the rung is authored — as with the ceiling, it is a deferral and never a loss.

Each Stat Passive retains `successful_uses`, a lifetime count incremented when its effect materially applies. It carries no other progression counter.

| Stat | Stat Passive | E-Rank | D-Rank | C-Rank |
|---|---|---|---|---|
| **Strength** | **Overpower** | Grapple, pin, or bull-rush a foe up to one Rank above System Rank | Overpower or restrain up to **two** Ranks above; wield oversized or two-handed arms one-handed | **Sustained restraint** — hold a foe through its own escape attempts across exchanges; break ranked inanimate structures up to the skill's Rank |
| **Agility** | **Pre-empt** | Act normally in a surprise exchange on an ambush warning | Disengage or reposition once per exchange without granting a reactive strike | **Shared warning** — allies within his call act normally in the surprise exchange alongside him |
| **Vitality** | **Shrug Off** | Ignore the modifier-step penalty of minor wounds | Suppress one serious wound's penalty until scene end; halve onset of Rank-appropriate environmental hazards | **Threshold absorption** — once per scene, a hit that would cross the Section 6.3 injury threshold inflicts damage only |
| **Intelligence** | **Conduit** | Mana recovery **+5 percentage points** at both Section 5.2 rates | **+10 points** | **+15 points** |

| Stat | Stat Passive | B-Rank | A-Rank | S-Rank |
|---|---|---|---|---|
| **Strength** | **Overpower** | **Redirection** — a foe he holds becomes a weapon: throw or drive a restrained creature into another target, transferring the strike to it; and shift a creature off its own footing mid-exchange, denying it a chosen line | **Overpower or restrain up to three Ranks above** his System Rank, and break ranked inanimate structures **one Rank above** the skill — the E and D ladder continued, not a new kind of thing | **Leverage without purchase** — force applies without footing, brace, or grip: from mid-air, off ice, while falling, or one-handed against a surface that gives nothing back. The physical prerequisites of force stop constraining him |
| **Agility** | **Pre-empt** | **First blade** — in any exchange he opens, he resolves before any opponent up to the skill's Rank acts, whatever order the fiction implies | **Shared first blade** — every ally within his call resolves before any opponent up to the skill's Rank in an exchange he opens, as C extended E from himself to those who can hear him | **No blind side** — surprise cannot exist against him at any Rank, and a creature that begins an exchange unaware of him grants him one free resolution before it acts |
| **Vitality** | **Shrug Off** | **Total suppression** — **every** wound's modifier-step penalty is suppressed until scene end, not one; and environmental hazards up to the skill's Rank cause no onset at all rather than halved onset | **Threshold immunity** — no attack from a creature more than one Rank below the skill can cross the Section 6.3 injury threshold, at any damage | **Continuance** — no wound, condition, exhaustion, or hazard imposes a modifier step on him at any severity. Only Health and death constrain him |
| **Intelligence** | **Conduit** | **+20 points** | **+25 points** | **+30 points** |

The former Stat-50 skills **Titan's Grip**, **Slipstream**, **Iron Constitution**, and **Analyst** are retired as separate skills; each effect is now its partner's D-Rank rung. Analyst's appraisal clause moves to Flux Sight B-Rank. **Multitask is retired too** (Profile 1.49) and the Intelligence passive is **Conduit**: non-daily quest capacity was never a capability a Bearer could feel — it derives from System Rank now (Section 8.4) and belongs to no skill — while Mana is the resource Intelligence actually owns (Section 5.1). Multitask's capacity ladder is not lost, only moved off the skill. **All six rungs are now authored for all five Stat Passives**, so the authoring clamp no longer binds any of them and the System Rank ceiling is the only limit left; the clamp and its held-rung render remain in force for any Stat Passive a later version adds. Flux Sight is authored to S-Rank and the authoring clamp never bound it.

**What a Stat Passive Rank grants, and what it never grants.** Each rung above is a **category** — a kind of thing the Rank beneath cannot do at any value of the governing Stat — as Section 7.2's Rank Dominance Law requires and its **Stat Passive exemption** shapes: a Stat Passive has no mastery track, so each Rank grants its authored category and nothing else. No rung above adds a modifier step (Section 4.3 caps those at +1 and none of these spend it), a Mana cost, a damage multiplier, or a scope count. **Death is untouched at every rung** (Section 20.4): Shrug Off at S removes every *penalty* harm imposes and no amount of Vitality makes a killing blow survivable, because nothing in this profile spares the Bearer a resolved lethal result.

**A held rung is recorded, never silent — and this holds for both clamps.** At the checkpoint where a base Stat first crosses a threshold the skill cannot yet take, the Runtime states it — naming the skill, the Rank held, and the Stat value that reached it — and the skill's `/system` row renders the hold in place of its next threshold as `[<Rank>-Rank] held: <clamp>`, naming **which** clamp binds — `rung unauthored` for the authoring clamp, `System Rank ceiling` for the Section 7.5 ceiling. **The Rank named is the highest threshold the base Stat has actually reached where that stands above the skill's current Rank** — a Stat that has vaulted several rungs is holding all of them, and naming only the first understates what is banked — and otherwise the next rung up, the one the clamp will block when the Stat arrives. A row **never advertises a blocked rung as a bare threshold**: an unqualified `<Rank> at <n>` promises a grant the profile cannot yet deliver, which is the Section 20.2 defect in miniature. A bare `<Rank> at <n>` is correct only where the Stat reaching `<n>` really would take that Rank. A rung the Bearer has already paid for in Stat points and cannot yet receive is a gap in this profile, and a gap that goes unstated is the defect Section 7.2's withholding rule and Section 8.4.6's telemetry both exist to prevent.

### Flux Sight

**Flux Sight** is the Perception Stat Passive, renamed from **Rank-Sight** without changing its identity or acquisition Event. **Rank-Sight** and **Deep Sight** are both retired names for Flux Sight; no separate Perception-50 skill exists.

| Rank | Flux Sight reads |
|---|---|
| **E** | **Gates.** True Rank of any Gate at or below System Rank, converting unconfirmed to confirmed by capability and bypassing the Section 9.5 entry roll within that range. |
| **D** | **Monsters.** Rank, current/maximum Health, and current/maximum Mana of any perceived monster. Additionally, Gates **one Rank above** System Rank. |
| **C** | **Awakened humans.** The same Rank/Health/Mana read on hunters and other awakened. |
| **B** | **Items.** Full effect of an unidentified rune, skill book, core, or item of equipment before use. |
| **A** | **Abilities.** Skills and abilities a perceived subject holds, and which it can currently pay for. |
| **S** | **Complete read.** Everything the System holds on any perceived mana-bearing subject. |

Flux Sight has no scope count. How many subjects the Bearer can hold in one read is fiction, not tracked state.

**It reads on sight. There is no roll, no Mana cost, no activation, and no declaration.** A Stat Passive is always in effect (Section 4.4 opening), and Flux Sight's effect *is* the reading — so the read happens the instant a covered subject enters the Bearer's perception, whether or not he sought it, whether or not the scene is a combat, and whether or not he says anything. A Runtime never gates it behind a check, never asks whether the Bearer looks, and never withholds it pending an action declaration. Its rendering is **Tier 1** under Section 14.3 and its exact template is Section 14.5.

**Rendering it is not optional, and the covered rungs are not a menu.** Every rung the Bearer's Flux Sight Rank has reached fires on every covered subject at first perception. A read that names Rank but omits Health or Mana at a rung that authors all three has not been rendered — the D rung authors *"Rank, current/maximum Health, and current/maximum Mana"* as one read, not three the Runtime may select among.

Recorded as `F-017`, whose fourth item is this passive being withheld across an entire combat session as though it required an active check. The cause was structural rather than a lapse: Section 14.3's tier list authorized the designation color and the B-rung item appraisal, and named the D and C rungs in no tier at all — so a Runtime reading the tiers strictly found no authorization to fire the read unprompted, and Tier 3 forbids firing without a declared precondition. Both holes are closed in 1.61.

---

# 5. Mana

Mana is **tracked canonical Bearer state** (Decision 057): every cost and every tick of recovery is computed from the rules below and recorded, never estimated. Only the Bearer carries a Mana pool of this kind — one derived from a Stat and growing with it. Every other hunter and every monster carries a **Rank Mana** pool instead: fixed by its Rank, read from the Section 6.1 table, and spent under Section 5.2's tiers. Capacity is still subsumed in Rank; what changed in Profile 1.32 is that the Rank now names a number the entity can run out of.

## 5.1 The Pool

The Bearer's maximum Mana is the direct expression of effective Intelligence:

```
maximum_mana = 2 × effective Intelligence
```

Intelligence 10 yields **20 Mana**; Intelligence 20 yields **40**; Intelligence 50 yields **100**. Automatic level growth, allocation, and equipped Intelligence all change the pool because they change effective Intelligence. Apply the missing-amount rule of Section 4.1 whenever the maximum changes outside a level-up or Status Recovery.

**Fixed-Rank entities.** Every NPC hunter and monster carries a **Rank Mana** pool read
from the Section 6.1 table. It is not a Stat expression and never grows: a D-Rank beast
has D-Rank Mana for as long as it is D-Rank, exactly as it has D-Rank Health.

The table is derived from this section's own arithmetic rather than imported. The Bearer's
pools are `Health = 4 × Vitality` and `Mana = 2 × Intelligence`, so at equal Stats his Mana
is half his Health; the Rank Mana table applies that same ratio to the Section 6.1 Rank
Health table. *(A sibling world, Reikon, independently sets Rank as bands of pool capacity
whose tops match this table exactly at B and A and within a few points elsewhere. Reikon
is a separate world and binds nothing here; the correspondence is recorded as a sanity
check only.)*

**No creature is authored by the baseline.** The pool and every cost derive from Rank, so a fixed-Rank
entity still needs no stat block, no ability list, and no cost sheet — the Section 6.1
discipline extended one axis, not abandoned. The single exception is deliberate and bounded: a **recurring named NPC** may carry an authored variance under Section 6.1.2, which is a chosen characterisation of one person rather than a stat block, and reaches no monster and no unnamed hunter.

## 5.2 Recovery

- **Active** (moving, fighting, or under threat): **10% of the pool per hour**.
- **Resting** (safe, still, unpressed): **25% of the pool per hour**.
- **Level-up or claimed Status Recovery**: full restoration, immediately (Sections 3.2 and 3.9).

Recovery is a percentage of the *maximum* pool, so Intelligence increases both capacity and recovered Mana per hour while the time required to refill the whole pool stays constant. Recovery is settled from elapsed fictional time before the next action reads available Mana; a narrated span of rest produces one settled Mana figure, not a tick-by-tick stream.

**Deterministic settlement.** `campaign_time` is an ISO-8601 Chicago-local
timestamp with an explicit UTC offset and minute precision. `mana_recovery_mode`
is `active` or `resting`; `mana_recovery_remainder_units` is a nonnegative integer
smaller than `720000`. For elapsed seconds, use half-percent rate units so the
Frozen Gallery's halving remains exact:

```text
rate_units = 20 active | 50 resting
rate_units = rate_units ÷ 2 inside a Frozen Gallery
total_units = mana_recovery_remainder_units
            + elapsed_seconds × maximum_mana × rate_units
mana_restored = floor(total_units ÷ 720000)
mana_recovery_remainder_units = total_units mod 720000
current_mana = min(maximum_mana, current_mana + mana_restored)
```

**Conduit composes into the rate before anything else touches it** (Section 4.4). The Intelligence Stat Passive adds its Rank's bonus in percentage points to **both** rates, so a B-Rank Conduit reads 30% active and 45% resting, and `rate_units` becomes `60 active | 90 resting` in the half-percent units above. The order is fixed and never varies: **base rate, then Conduit's points, then any environmental halving, then any multiplier a title or item grants.** A Frozen Gallery therefore halves the improved rate rather than the baseline, and the **Wellspring** title (Section 16.2) doubles the out-of-combat result last. Nothing here changes a skill's Mana cost, which belongs to mastery alone (Section 7.2), and nothing here reaches inside an exchange: recovery is settled from elapsed fictional time, and a fight is measured in exchanges, so no Conduit rung can refill a pool mid-combat or soften Section 5.3's exhaustion.

The denominator is `3600 seconds × 100 percent × 2`. At full Mana, set the
remainder to zero. Changing mode first settles through the change instant under
the old mode, then applies the new mode. Recovery settles after every action,
transition, montage, travel span, wait, or sleep that advances time—never for the
first time when `/system` is opened or the player asks.

**Fixed-Rank entities spend and recover on the same rules.** An NPC hunter or monster pays
for a skill-like action out of its Rank Mana pool (Section 6.1) as a fraction of **its own
maximum**, selected by the action's role:

| Tier | Cost | E | D | C | B | A | S |
|---|---|---:|---:|---:|---:|---:|---:|
| **Minor** ability | 10% | 2 | 5 | 12 | 30 | 75 | 200 |
| **Signature** ability | 25% | 5 | 12 | 31 | 75 | 187 | 500 |
| **Boss-tier** ability | 50% | 10 | 25 | 62 | 150 | 375 | 1,000 |

Floor to an integer, minimum 1. **Ordinary attacks and movement cost nothing**, exactly as
for the Bearer.

Select the tier by the ability's role, never its flavour:

- **Minor** — used freely and repeatedly; the entity's ordinary supernatural repertoire.
- **Signature** — the thing that entity is known for, used once or twice in a fight.
- **Boss-tier** — an encounter-defining move, one that changes the shape of the fight.

Where a call is genuinely ambiguous the **lower** tier governs, so drift compounds toward
longer fights rather than shorter ones. No creature receives an authored ability list: the
tier is a reading of what the fiction just did, and the cost falls out of its Rank.

Recovery rates above apply unchanged — 10% of the pool per hour active, 25% resting. A
monster inside a live instance is `active`.

**Scene scoping.** A fixed-Rank entity's current Mana is tracked only while it is on screen,
and is discarded at scene close with other transient combat state. A **recurring named NPC**
is the exception: their pool persists between appearances and recovers across the elapsed
span under this section. Without this bound the subsystem is unbounded bookkeeping for
entities that will never appear again.

## 5.3 Running Dry

- A casting or skill whose cost exceeds current Mana is **unavailable** — it cannot be attempted until the Bearer has the Mana to pay it.
- At **0 Mana**, the Bearer suffers **−1 modifier step on all actions** until Mana recovers **above 25% of the pool**. This is exhaustion, not merely an empty counter, and it applies to physical actions as well as castings.

Mana gates whether a skill can be *attempted*; it never decides the result. The die resolves the attempt (Rules Section 4).

**Both clauses bind fixed-Rank entities too.** An ability whose cost exceeds a monster's or
NPC hunter's current Rank Mana is unavailable to it, and at **0 Mana** that entity takes
**−1 modifier step on all actions** until its pool recovers **above 25%**. A drained boss is
a measurably worse boss, and wearing one down is therefore a real tactic rather than a
figure of speech — which is the point of tracking the number at all.

---

# 6. Health, Damage, and Vitality

## 6.1 Health Pools

NPC hunters and monsters have **Rank Health** sized to their fixed Rank. A creature's Rank is a complete description of its durability: a C-Rank beast has C-Rank health and a B-Rank hunter has B-Rank health, with nothing further authored per creature (Decision 020).

The Bearer is the declared exception. His maximum Health is the direct expression of effective Vitality:

```text
maximum_health = 4 × effective Vitality
```

Vitality 10 yields **40 Health**; Vitality 20 yields **80**; Vitality 50 yields **200**. Automatic level growth, allocation, and equipped Vitality all change the pool because they change effective Vitality. Apply Section 4.1's missing-amount rule whenever the maximum changes outside a level-up or Status Recovery.

The fixed-Rank table remains canonical for every NPC hunter and monster:

| Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---|---|---|---|---|---|
| Rank Health | 40 | 100 | 250 | 600 | 1,500 | 4,000 |
| **Rank Mana** | **20** | **50** | **125** | **300** | **750** | **2,000** |

The scale climbs roughly ×2.5 per Rank, keeping fixed-rank entities resolvable without individual Stat sheets. It never substitutes for the Bearer's effective Vitality or Intelligence. Rank Mana is half Rank Health at every Rank, the same ratio the Bearer's own `2 × Intelligence` and `4 × Vitality` produce at equal Stats (Section 5.1).

## 6.1.1 Natural Health Recovery

Natural Health recovery is deterministic tracked state and is independent of
injury severity. Safe rest restores **25% of maximum Health per eight hours**;
safe light activity restores half that rate; combat, threat, strenuous exertion,
or an unstable environment pauses natural recovery. Reaching full Health does
not clear an injury, pain, poison, scar, or modifier; those change only under
Sections 6.3–6.4.

`health_recovery_mode` is `resting`, `light`, or `paused`.
`health_recovery_remainder_units` is a nonnegative integer smaller than
`5760000`. Settle elapsed seconds with integer arithmetic:

```text
rate_units = 50 resting | 25 light | 0 paused
total_units = health_recovery_remainder_units
            + elapsed_seconds × maximum_health × rate_units
health_restored = floor(total_units ÷ 5760000)
health_recovery_remainder_units = total_units mod 5760000
current_health = min(maximum_health, current_health + health_restored)
```

The denominator is `8 hours × 3600 seconds × 100 percent × 2`. At full Health,
set the remainder to zero. A mode or maximum-Health change preserves accumulated
carry unless the pool reaches full. New damage applies immediately and does not
erase carry. Settle through a mode change under the old mode before starting the
new one. The Runtime performs this settlement automatically from `campaign_time`
before the next action reads Health.

## 6.1.2 Individual Variance

Two D-Rank hunters are not the same hunter. A fixed-Rank entity may carry an **individual
variance** of up to ±10% on **both** its pools, so that Rank names a bracket rather than a
single body.

| Entity class | Variance | Where it lives |
|---|---|---|
| **Recurring named NPC** — one carrying an entry in a campaign's `130_NPCS_AND_FACTIONS.md`, in `220_NOTABLE_FIGURES.md`, or on an `institutions/` roster | **Authored** ±10%, chosen deliberately | That NPC's own entry, permanently |
| **Elite or boss** | **Rolled once** on the band table below, at first contact | The instance's transient state; discarded when the instance closes |
| **Common monster** | **None** — the flat table value | Nowhere |

The three sources named in the authored row are one class, not a hierarchy: a crewmate in a campaign ledger and a world-ranked hunter in `220_NOTABLE_FIGURES.md` carry variance on identical terms. The `institutions/` clause is forward-looking — no institution roster currently carries a Character block — and binds any that later does.

| d100 | Variance |
|---|---|
| 01–10 | **−10%** |
| 11–30 | **−5%** |
| 31–70 | **none** |
| 71–90 | **+5%** |
| 91–00 | **+10%** |

Apply the factor to the table value and floor to an integer.

**Rolled once, never rerolled.** The factor is fixed at first contact and is that entity's
for as long as it exists, exactly as a Gate's true Rank is fixed on first entry
(Section 9.5). A second encounter with the same named NPC never rerolls.

**Variance never reaches the damage arithmetic.** Section 6.2's standard-hit baseline reads
the **flat** Section 6.1 table value for the attacker's Rank, always. The pool varies; the
damage does not. Were it otherwise, every exchange would need that individual's factor and
combat would stop being reproducible from the tables alone — which is the property the
whole fixed-Rank model exists to keep.

**What reads flat, and what reads varied.** Every magnitude derived from an entity's Rank
Health *as a source of output* reads the flat table; every quantity that is a fraction of
that entity's *own pool* reads its varied maximum. Two cases are stated outright because
they are the ones that bite:

- **Section 13.5's mender field-touch reads flat.** The touch restores one standard-hit
  baseline of the mender's Rank — ¼ of the **flat** table value — so a C-Rank mender's
  touch is **62** whatever their variance. A deeper well makes a mender no stronger per
  touch; it lets them spend more before the pool decides otherwise, which is the only axis
  variance should move.
- **Section 5.2's Mana tiers read varied.** A fixed-Rank entity pays 10%, 25%, or 50% of
  **its own maximum**, so a +10% C-Rank hunter's Signature ability costs **34** rather than
  31, and Section 5.3's running-dry threshold is 25% of that same varied maximum. This is
  the intended consequence: the deeper well is genuinely deeper and pays proportionally for
  what it does.

**Elixir points sit outside the bracket (Profile 1.43).** Variance is authored once and never recomputed; a
Section 12.5.1 elixir adds flat on top of the varied pool rather than re-deriving it. A recipient carried past
their Rank's bracket ceiling is a number no hunter of that Rank can be — which is the whole exposure surface
that rule creates, and the reason the bracket is worth stating precisely.

A one-scene named character is not a recurring named NPC. If such a character later earns a
ledger or world-file entry, their variance is authored at that point and is not retroactive.

**Why this exists.** Without variance, an entity's Rank yields its pools exactly, so reading
them returns nothing a Rank read did not already give. With it, the numbers are genuinely
underivable — which is what makes a capability that reports them worth having.

## 6.2 Damage

A hit's damage is built from the attacker's own magnitude source and the quality of the d100 result.

For a fixed-rank NPC hunter or ranked monster:

```text
fixed_band_damage = (rank_health ÷ 4 + equipped weapon_power)
                  × chassis_or_skill_multiplier
                  × result_multiplier
                  × (1 − total_reduction)
```

A monster's ordinary natural attack uses `weapon_power 0` and multiplier ×1 unless its authored signature states another multiplier. A fixed-rank hunter's unarmed strike uses ×0.5; an equipped weapon uses that weapon's chassis and power. This preserves Rank-honest monster damage while letting equipment improve a hunter from the hunter's own Rank rather than replacing it.

For the Bearer's physical strike:

```text
Bearer_physical_damage = (effective Strength + weapon_power)
                       × chassis_multiplier
                       × result_multiplier
                       × (1 − total_reduction)
```

An unarmed strike has `weapon_power 0` and chassis ×0.5. A wielded weapon uses only that weapon's power; dual-wielding does not add two weapon-power values to one strike unless a named skill explicitly says it does. Agility normally governs whether the weapon lands (§4.3); Strength governs how hard the landed physical strike hits.

### 6.2.1 The Pulled Strike

**An attacker may choose to do less than he can.** Sections 4.0 and 4.1 already establish that intent precedes method and that the die resolves a *declared* action; until 1.87 Section 6.2 had no term for the declaration *I am not trying to kill this person*, so the intent evaporated between declaring and resolving and full magnitude landed regardless. A Bearer whose bare effective Strength is in the hundreds could therefore not touch an ordinary human without a strong chance of killing them - no arrest, no restraint, no sparring, no prisoner. That is the defect this section closes (`F-042`).

**The declaration.** Before the roll, the attacker may declare a strike **pulled**. It is free, costs no action and no Mana, and is available to any attack the attacker controls - unarmed, wielded, skill, or launched object. It may not be declared after a result is known.

**What it changes.**

```text
pulled_damage = ordinary Section 6.2 damage x 0.25
```

The die still decides whether the strike lands and its result band; the result multiplier, reductions and the injury test in Section 6.3 all apply to the reduced figure exactly as they apply to any other. **A pulled strike is a real strike that hurts less**, not a separate resolution system.

**What it buys, and this is the whole point of the section.** A target reduced to **0 Health by pulled damage alone is incapacitated, not killed** - unconscious or unable to continue, at the Runtime's description, and **stabilises on its own**. It takes the injury Section 6.3 assigns and heals on that clock. **It does not die**, and Section 6.5's finality is not engaged.

**The bright line, stated so it cannot be read loosely.** The protection attaches to *how the target's Health was removed*, never to the attacker's hopes. Mixed sources do not average: if **any** unpulled damage contributed to reaching 0, the target is at 0 by ordinary damage and Section 6.5 governs. A pulled opening followed by a full follow-through is a kill.

**What it does not do.**

- **It does not make an attack safer to receive at high magnitude.** A quarter of a very large number is still a large number. An attacker whose ordinary figure vastly exceeds a target's maximum Health can pull and *still* remove the whole pool in one exchange - which incapacitates rather than kills, and is exactly the outcome sought, but it is not gentleness and the fiction should not narrate it as such.
- **It grants no accuracy, no defence, and no modifier step.** Pulling is not finesse; it is restraint, and it makes the attacker no better at connecting.
- **It is not available against a monster.** Gate creatures are resolved to kill under Section 6.5 and this section authors no exception; a Bearer may declare it, and against a monster it simply reduces damage for nothing.
- **It settles no counter differently.** Uses, qualifying scenes and mastery credit under Section 7.4 read the same as any other resolved use.

**Rendering.** A pulled strike is narrated as one, and its roll tag carries `pulled` beside the result so the reduced figure never reads as arithmetic that went wrong.

### Offensive Action Packages

One declared action in an exchange selects exactly one offensive package:

| Package | Resolutions | Mana |
|---|---|---:|
| **Ordinary strike** | One weapon against one target; one roll. | 0 |
| **Ordinary combo** | One ordinary weapon strike plus one offensive active skill; resolve each component separately. | The skill's cost |
| **Split dual strike** | While dual-wielding, one strike with each weapon against two different targets; one roll per target. | 0 |
| **Named multi-strike** | The resolutions explicitly supplied by a named skill, such as Twin Fang. | The skill's cost |

An **offensive active skill** is an active skill that directly deals damage or supplies an additional attack resolution. A declared action may contain at most one offensive active skill unless a named capability explicitly says otherwise. A split dual strike is already a free multi-resolution package and cannot add an offensive active skill. Setup, mobility, defensive, reaction, and sustained skills may accompany a package when their own text permits; Flash Step therefore remains compatible with an ordinary strike, an ordinary dagger-and-Rupture combo, or Twin Fang because it explicitly grants a follow-up action.

Narrating a flurry, several cuts, or repeated blows does not create further attack rolls. Earlier Gatefall precedents remain legal under these packages: a dagger followed by Rupture is an ordinary combo; Flash Step may set up that combo; two daggers divided between two targets are a split dual strike. Twin Fang and Rupture cannot occupy the same declared action because both are offensive active skills.

When Flash Step's immediate follow-up is a named multi-strike, its modifier step applies to every roll belonging to that one follow-up action. An item effect limited to the **first attack**, including the Ghost Quickknife's unseen-opening effect, still applies only to the first qualifying strike. Enemy actions already in motion resolve within the exchange normally; an action package creates no fresh enemy action between its component resolutions.

For a Bearer damage or healing skill:

```text
Bearer_skill_damage  = (skill_rank_baseline + effective Intelligence + equipped_focus_power)
                     × skill_multiplier
                     × result_multiplier

Bearer_skill_healing = (skill_rank_baseline + equipped_focus_power)
                     × skill_multiplier
                     × result_multiplier
```

The rank baselines are Section 7.2's E-Rank–S-Rank table. Only a Channeling Focus contributes focus power, and only to a damage or healing skill.

**A Mana skill's damage reads Intelligence the way a weapon strike reads Strength (1.56).** Through 1.55 it did not, and the consequence was measured rather than argued: at effective Strength 66 with an S-Rank dagger, **Rupture dealt 61 for 9 Mana while an ordinary strike costing nothing dealt 128**, and Twin Fang dealt 316 for 4. A signature offensive skill had become strictly worse than swinging the knife. The cause is structural — **a Rank baseline is fixed per Rank while a weapon strike compounds with Stats and gear across a campaign** — so the gap widens every session the Bearer grows, and no amount of Rank ascension closes it. The profile's own worked example set Rupture and Twin Fang as a deliberate pair at 29 against 18; ninety in-fiction days later it was 61 against 316.

**Healing is deliberately excluded, and this is the one place the two formulas differ.** Mend reading Intelligence would restore 91 Health for 5 Mana against a Lesser Healing Potion's 30, repeatable, at a Bearer whose maximum is 412 — which does not rebalance the consumable economy so much as delete it (Section 12.6). Healing therefore keeps its baseline-and-focus magnitude. Intelligence still governs the Mana pool and uncertain control for every skill, as it always has.

An unawakened wielder of a mana-bearing weapon uses ordinary-adult Strength 10 unless established capability says otherwise:

```text
unawakened_magic_weapon_damage = (10 + weapon_power) × chassis × result × reductions
```

**Mana-borne gate.** Against a monster, final damage is 0 unless the source carries mana under `GTF-OVR-003`: an awakened combatant's blow or skill, or a mana-bearing weapon. A mundane firearm, blade, or explosive can still produce non-Health fictional effects authored by the resolution.
- **Result multiplier — by degree of success.** The degree of success the d100 yields (Rules Section 4; Decision 011) scales the hit:

| Degree of success | Name | Multiplier |
|---|---|---|
| Partial success | graze | ×0.5 |
| Success | standard | ×1 |
| Strong success | strong | ×2 |
| Critical success | critical | ×4 |

A miss deals no damage. **Critical tails are always live** (Decision 052): a natural critical is a critical hit that no modifier can remove, and a natural fumble lands nothing.

- **Reductions apply last, and compose with `GTF-OVR-002`.** The die first resolves whether the hit lands and its degree; the multipliers above then set the raw magnitude; and only then is damage removed from Health **after** applicable reductions — exactly the "damage after reductions" order `GTF-OVR-002` declares. Reductions **multiply, never add** (`total_reduction = 1 − Π(1 − rᵢ)`, Section 7), so no stack of protections reaches immunity.
- **Equipped armor is an authored reduction.** Each equipped armor piece and Guard Shield contributes the reduction for its own Rank from Section 11.5. These reductions compose multiplicatively with one another, skills, titles, and circumstances under the same formula above. Stored, carried, broken, or merely owned armor contributes nothing.

**Final rounding.** Keep precision through every multiplier and reduction, then round the final Health change to the nearest whole number, with `.5` rounding up. A landed damaging hit that remains positive after reductions deals at least 1 Health. Do not round intermediate values.

### `/system` Damage Preview

`/system` shows **standard-success raw damage before target reduction** for every equipped weapon that can deal direct Health damage and every known offensive active skill. This is the only target-independent damage figure Section 6.2 can derive: use the applicable formula above with `result_multiplier ×1` and `total_reduction 0`, then apply ordinary final rounding. Label every number `DMG <n> standard · before reduction`; it is a preview, never a replacement for the rolled result.

Derive the preview live. It is not stored in a character ledger and must immediately reflect changes to effective Strength, weapon power or chassis, Dagger Mastery, skill Rank or mastery, and equipped focus power. Do not include accuracy modifiers, unseen-opening effects, temporary setup, a guessed target reduction, or any other circumstance that is not a permanent input to the displayed attack.

Each separately resolved hit stays separate. An ordinary combo shows its weapon and skill on their own rows. A named multi-strike shows every component in declared order; when either equipped weapon may open, show both legal orders rather than selecting one silently. Twin Fang therefore renders `main→off <opening> + <follow-up>` and `off→main <opening> + <follow-up>`. A skill that heals, reduces damage, moves, detects, or modifies another action but deals no direct Health damage receives no `DMG` field.

Healing uses the magnitude source its effect names: a fixed-rank mender uses its Rank baseline, while a Bearer skill uses its skill-rank baseline and focus power.

## 6.3 Injuries

Losing Health is not the same as taking a lasting **injury**. A hit inflicts an injury when it is heavy enough to mark the body:

> A single hit that removes **≥ 50% of the target's remaining Health**, **or** drops the target **below 25% of its maximum Health**, inflicts an injury.

The Runtime assigns the injury's **severity** from the engine's four-tier taxonomy (`010_ENGINE_RULES.md` Section 6.8 — **Minor · Moderate · Severe · Critical**) given the hit's magnitude and the established fiction, and tracks it under the engine injury model (location, type, ongoing effect, treatment). An injury's modifier-step and capability consequences (Rules Section 6.9) persist until it is healed; restoring Health does not by itself clear it.

Untreated injuries heal on a tiered clock; professional (hospital) treatment **halves** the time at every tier:

| Severity | Untreated | Hospital / professional care |
|---|---|---|
| **Minor** | 1 day | ½ day |
| **Moderate** | 1 week | ½ week |
| **Severe** | 1 month | ½ month |
| **Critical** | 3 months, **with death risk absent treatment** | 6 weeks |

### A Mender Clears Severity

A healing-touch **mender** does not merely accelerate that clock. A mender's **resolved treatment touch clears an injury's severity outright** — flesh knits, bone sets, the wound closes and the body is whole again — provided the mender's Rank reaches the minimum required for that severity:

| Mender Rank | Highest injury tier they can clear |
|---|---|
| E-Rank | Minor |
| D-Rank | Moderate |
| C-Rank | Severe |
| **B-Rank and above** | Critical |

- **It costs a touch.** Clearing severity consumes one of the mender's limited per-clear touches (Section 13.5), exactly as a Health restoration does. The mender's scarcity, not the injury table, is what makes wounds matter in a Gate.
- **A single touch does one job.** One touch either restores Health or clears one injury's severity, chosen at the moment it is applied. It does not do both; the two axes remain independent (Section 6.4).
- **Above their rank, they still help.** A mender treating an injury above their tier cannot clear it, but their care counts as professional treatment for the halving in the table above, and may step the severity down by one tier at the Runtime's ruling where the fiction supports it.
- **It is a resolved treatment, not a label.** The touch is an actual applied action in the fiction — the mender must reach the patient and lay hands on them. Under pressure it is an uncertain action like any other and may be resolved by the die.
- **Death remains final** (Section 6.5). A mender restores the living; nothing here touches that boundary.

Priced as a hired session in Section 12.7. This is the reason a crew that can afford a mender fields one, and the reason a high-rank mender commands what they do.

A **Critical** injury left untreated may kill the target before it heals — stabilization is not optional. Healing potions restore Health directly on the schedule authored in the economy (Section 12.5, per Anchor A7); a potion controls immediate bleeding and restores Health but does not by itself clear a wound's severity, which advances only through elapsed time and care.

## 6.4 Treatment Interaction

Direct Health restoration (a potion, a skill, a facility) and severity recovery are independent **axes**: restoring Health to full does not automatically clear an injury condition, and clearing a condition does not automatically restore Health. A fictional label ("bandaged", "rested") never upgrades care on its own; care advances only through a resolved treatment appropriate to the injury. New damage applies immediately and may worsen severity.

Independence is about *what an effect does*, not about whether severity can be removed quickly. A **mender's touch is a resolved treatment** and clears severity outright within their rank (Section 6.3) — that is the one effect authored to act on the severity axis directly. A potion, a Status Recovery, and a level-up act only on the Health axis and never clear a wound, however full they leave the pool. This is why a Bearer can stand at maximum Health and still be genuinely broken, and why a crew's mender is the answer to that condition rather than another potion.

## 6.5 Death Is Final

**Death is death.** No resurrection, revival, or reincarnation exists in Gatefall under this profile. When the Bearer dies, the death is resolved and recorded normally, all System state remains with the dead Bearer and transfers to no one, and **the campaign hard-ends** — it becomes terminal under the Engine Rules. The System is patient on a scale its host is not; that a successor may one day be chosen is a matter for the world's hidden canon, never a continuation of the dead character and never a promise play may rely on. A Bearer who dies in an E-Rank Gate is as dead as one who dies in an S-Rank Gate. A **Critical** injury (Section 6.3) that goes untreated is one of the ordinary roads to that end.

## 6.6 The System Rank Ladder

The Bearer's **System Rank** is a level-derived content bracket. It is not his carded rank, not a Stat, and not a substitute for his actual body. Stats and equipment determine Health, Mana, physical magnitude, and Bearer-versus-Rank margins; System Rank only selects the scale of authored content and rewards.

| Level reached | System Rank |
|---|---|
| Creation (level 1) | E-Rank |
| 10 | D-Rank |
| 20 | C-Rank |
| 30 | B-Rank |
| 40 | A-Rank |
| 50 | S-Rank |

The Rank advances the instant the level-up that reaches a threshold settles; between rungs it holds at the last Rank reached. It is canonical derived state, read from level and never estimated.

System Rank governs only:

- **Threat-color designation** (Section 14.6) — every creature is colored against his System Rank.
- **Flux Sight Gate range and Stat Passive ceiling** (Section 4.4) — read relative to his System Rank.
- **Underdog XP and Daily Premium Rank floors** (Sections 3.3 and 12.5).
- **The Combat Tier's floor** (Section 6.7) — content sized to fight the Bearer is never sized below his System Rank.

Where those content systems say “the Bearer's own Rank,” they mean this ladder. They never feed Health, Mana, physical damage, or the Section 4.3 stat margin.

**Three content systems no longer read this ladder for their population.** The penalty zone (Section 8.3) and the class trial (Section 18.2) are sized by the **Combat Tier** (Section 6.7) from Profile 1.67 forward, and the **proving key** (Section 17) from 1.92. A population sized to a Rank *label* is calibrated against an ordinary crew of that Rank, never against the one person in the world who grows. System Rank remains their floor.

**Two of the three are the ones the System drops on him.** A penalty zone he does not choose to enter and a class trial he cannot retreat from are content the System selects *for* him, so the System is what must size them honestly. Everywhere else the Bearer picks his own difficulty and the profile lets him: an ordinary instant dungeon runs at its key's own recorded Rank (Section 17), and a public Gate runs at the Rank BGM assessed it (Section 9) — a posted Gate is contracted against, staffed to a legal minimum and insured on that number, so it cannot bend around one hunter without the assessment becoming a fiction. That the Bearer's *chosen* content can therefore be easier than his *imposed* content is the intended shape, not a gap.

**The third is the Bearer choosing the honest setting, at a price.** A proving key is bought knowing what it is, so it takes nothing away from the paragraph above: it is one more thing he may pick, and the most expensive one. It exists because the two imposed consumers are a spent one-off and a penalty he avoids by doing his push-ups, which left the tier with nothing live to size (`F-046`).

## 6.7 The Combat Tier

System Rank is a content bracket read from level, and Section 6.6 is explicit that it is not a measure of the Bearer's body. For **rewards and labelling** that separation is correct and nothing here disturbs it.

For **content that has to fight him**, it is not enough. Two Bearers at the same System Rank differ by every point allocated and every piece equipped, and a population sized to the Rank label is calibrated against an ordinary crew of that Rank — several hunters together, none individually overwhelming. At sufficient investment the gap becomes total: when one skill critical exceeds a Rank's boss Health pool outright, a sealed instance billed as *fully lethal, with no retreat* delivers no danger at all, and the trial measures nothing.

The **Combat Tier** is the Rank at which the Bearer is genuinely contested. It is **derived, never stored**, and computed entirely from values his own ledger already carries.

**Offense axis.** `offense_tier` is the **lowest** Rank whose common Rank Health (Section 6.1) exceeds the Bearer's best single-resolution standard damage — his highest-magnitude offensive action package (Section 6.2) at a standard result band, with no critical, no modifier step, and no reduction on the target.

**Defense axis.** `defense_tier` is the **highest** Rank at which the Bearer survives five landed standard hits:

```text
incoming(R)  = (Rank_Health(R) ÷ 4) × (1 − standing_worn_reduction)
defense_tier = highest R where maximum_health ÷ incoming(R) ≥ 5
```

`standing_worn_reduction` is the reduction the equipped loadout carries at all times. Five hits is the attrition band where Endurance is actually tested: a Bearer who absorbs twenty is never pressured, and one who absorbs two dies to a single unlucky exchange without the content having measured him.

**What counts as standing, and the test is agency (1.92).** Through 1.91 this line read *"a once-per-exchange or once-per-scene effect is a tactical resource the Bearer may spend, hold, or waste — not standing protection — and is **excluded**"* — one sentence covering two things that are not alike. A **spendable** effect is a resource: it needs a declaration, it costs an action, Mana, a charge, or a choice of moment, and the Bearer can hold it too long or throw it away. An **automatic** effect is not a resource at all: it fires on its own triggering condition, needs no declaration, costs nothing, and there is no way for the Bearer to fail to have it. The old wording asked *how often* an effect fires and excluded on that answer. The question that decides whether something is protection he is standing in is **whether he can fail to have it.**

> **An effect enters `standing_worn_reduction` when it requires no declaration, spends nothing, and cannot be held or wasted.** Frequency does not exclude it. Everything the Bearer must choose to use stays excluded, exactly as before.

An automatic effect enters at the value it actually carries, composing multiplicatively with worn reduction and with every other automatic effect in the same order they compose in play. The five-hit band is read at **one landed hit per exchange** — five hits of attrition is five exchanges of it, which is the pressure the band was authored to measure — so a once-per-exchange automatic reduction applies to each of the five.

**This is a correction, not a concession (`F-046`).** The live Bearer had bought two A-Rank accessories *for the express purpose of moving this axis*, each granting an unconditional −30% on a landed hit with nothing to declare and nothing to spend, and the formula that exists to notice investment declined to notice the investment made directly at it. A sizing instrument that reads a loadout must read the loadout the Bearer will be wearing when he is hit.

**It remains a sizing instrument, not a survival guarantee.** A real exchange can land more than one hit and a once-per-exchange effect covers one of them; the tier prices the attrition band, in the same spirit as Section 9.4's note that a legal floor is not a promise anyone walks out.

**The tier.**

```text
combat_tier = max(System Rank, min(offense_tier, defense_tier)), capped at S
```

**Two axes, and the lower of them**, because out-damaging a Rank is not out-living it. Scaling on offense alone would drop a high-damage, low-Health build into a population that kills it in one exchange — not a harder trial, a shorter one.

**System Rank is a floor and the tier never falls below it.** The defect this section exists to close is content being too easy, never too hard, so the derivation may only ratchet difficulty upward. A Bearer who under-invests meets exactly the content he met before this section existed; a Bearer who invests heavily meets content that noticed.

**Three consumers, and no others.** The class trial (Section 18.2), the penalty zone (Section 8.3), and the **proving key** (Section 17) read this tier; nothing else does. The first two are content the System drops on the Bearer — one he cannot retreat from, one he did not choose to enter — so the System is what must size them honestly. Where he picks his own difficulty the profile lets him pick badly: an ordinary instant dungeon runs at its key's own recorded Rank (Section 17), and a public Gate at the Rank BGM assessed (Section 9). **The System owes an honest fight only where it picked the fight.**

**The third consumer is the Bearer buying that honesty, and it does not weaken the rule (1.92).** Through 1.91 there were two, and both were imposed — which meant the profile's one mechanism for sizing content to the Bearer had, in a campaign whose trial was long spent and whose daily streak had not broken in sixteen days, **no live consumer at all** (`F-046`). A proving key does not make the System owe him a fight it did not pick. He picks it, he pays for it, and he knows exactly what he is buying — which is Section 17's risk economy working, not an exception to it. *The Bearer chooses his own difficulty* was always the rule; nothing in it said the honest setting had to be unavailable.

**It is snapshotted, never live.** Each consumer computes the tier once, at the instant named in its own section, and the instance then runs at the recorded Rank and never re-Ranks. The Bearer cannot gear up mid-trial to soften it.

**Reward follows danger, deliberately.** Kill XP (Section 3.3), the Gate-clear milestone (Section 3.4), the underdog multiplier, and every drop table read the Rank the content actually runs at. Content raised by this section therefore pays more — including the underdog bonus for a tier standing above System Rank, which is exactly what that bonus is authored to price. An instance made harder that paid a lower Rank's rewards would be a tax on investment.

**Worked example.** A Bearer with maximum Health 444, a standing worn reduction of 42%, a best standard offensive result of 571, and System Rank C:

- *Offense.* C commons hold 250 and die to one hit; B commons hold 600 and survive one. `offense_tier = B`.
- *Defense.* At B, `incoming = (600 ÷ 4) × 0.58 = 87`, and `444 ÷ 87 = 5.1` — five hits stand. At A, `incoming = (1,500 ÷ 4) × 0.58 = 217.5`, and `444 ÷ 217.5 = 2.0` — it does not. `defense_tier = B`.
- *Tier.* `max(C, min(B, B)) = B`. His trial runs at B-Rank: commons at 600, elites at 1,200, a boss at 2,400, and incoming hits that register.

The same Bearer under-invested — maximum Health 200, reduction 20%, best standard result 200 — computes `offense_tier = C` and `defense_tier = D`, giving `max(C, min(C, D)) = C`: his System Rank, unchanged, which is the floor doing its work.

---

# 7. Skills

A **skill** is a named, canonical capability the Bearer has learned. Skills are the Bearer's active and passive techniques; each carries a name, a Rank, a Mana cost (or "passive"), and an effect stated in modifier-step, rank-baseline, reduction, resource, or direct-capability terms so a Runtime resolves it without a ruling.

## 7.1 Acquisition

A skill enters the Bearer's ledger by one of four routes, and only these:

1. **Rune.** A rune dropped as loot (Section 11) teaches one authored skill on use, consumed in the teaching. Runes found at E- and D-Rank Gates teach from the starting skill table below.
2. **Skill book.** A rarer drop teaching a specific authored skill, likewise consumed; skill books can carry skills above the rune tier (the full skill-book table is authored with loot in Section 11).
3. **Earned by doing.** A method that passes the Skill-Formation Audit below and contributes qualifying evidence in **three distinct qualifying scenes** becomes ready for System ratification. A qualifying scene may involve danger, consequential work, or structured practice under the closed tests below. Evidence is recorded from the first qualifying scene; recognition never depends on the Runtime remembering prose across sessions. At the third scene the candidate becomes `pending-ratification` and the Runtime surfaces it at the scene boundary. Because an earned technique's name, Rank, Mana cost, and effect are not known merely from practice, final ratification requires an owner ruling unless this profile already authors the complete result.
4. **Stat Passive.** Crossing base Stat 30 grants the governing Stat Passive in Section 4.4; later thresholds raise its derived Rank. Equipment cannot trigger or advance it, and the Section 7.5 ceiling clamps the result.

### Skill-Formation Audit

The profile-declared audit domain is `gatefall.skill_formation`. It never runs once per attack, roll, exchange, opponent, work roll, drill repetition, or narration response. During any potentially qualifying scene, the Runtime makes no candidate search and no additional roll. It retains only a compact session-local note when a player-declared method successfully and materially affects a resolution: the scene key, tools, sequence, intended payoff, and resolved result or objective feedback. Existing skill counters still settle normally under Section 7.4.

The audit has two deliberately different boundaries:

- **Danger — settle at scene close.** When one continuous scene carrying genuine threat ends, evaluate its bounded notes once. The closing canon-bearing Event uses `kind: dangerous-scene-settlement`, includes the Bearer, and records one Data Model Section 2.4 `progression_audits` result for this domain, including `none`. Update matching candidate state immediately, then retain the compact notes only as a reconciliation source until the next promotion barrier.
- **Consequential work and structured practice — defer to promotion.** At the close of a bounded consequential task or shift, or a structured session with a declared learning objective and real feedback, resistance, or measurable difficulty, seal its compact notes under a stable scene key but perform no classification and render no formation message. At the next checkpoint, automatic context-preservation checkpoint, or session-close promotion barrier, classify every sealed non-combat scene in one batch. The barrier creates one canon-bearing `progression-batch-settlement` Event containing the Bearer and the required `progression_audits` entries; candidate evidence references that batch Event plus the original stable scene key. If the batch contains no qualifying or ambiguous evidence, it records one explicit `none`.

Before that same promotion barrier writes anything, it also **reconciles combat formation** for every dangerous scene since the previous successful barrier. Compare each retained dangerous-scene note set with its settlement Event audit and the resulting candidate state. A missing `none`, missing evidence, wrong candidate match, duplicate scene, or unadvanced threshold is repaired in the pending live mutation before validation. This is a bounded session reconciliation, never a scan of older chronicles or checkpoints. After successful promotion and read-back, discard all reconciled dangerous notes and all classified non-combat notes.

Routine repetition is outside the coverage set. An automatic daily checklist, an uncontested rehearsal, ordinary job attendance, reading or writing without tested application, and repeating a task whose outcome is already assured create no sealed note set merely because time was spent. A practice or work scene enters the promotion batch only when it has a bounded objective, uncertain execution or informative resistance, and an outcome that can distinguish improvement from repetition. Several rolls in one drill, shift, vein, or continuous project remain one scene.

A demonstrated method is a skill candidate only when **all five** tests pass:

1. **Deliberate.** It comes from the player's declared method or a method the Bearer intentionally practiced, not descriptive flourish added by the narrator.
2. **Repeatable signature.** Its tools, sequence, and intended tactical payoff can be stated as a stable method another future attempt could match.
3. **Distinct capability.** It is not merely an ordinary attack, ordinary movement, using the same weapon again, an equipment property, a favorable circumstance, generic competence, or an existing skill's authored effect. A combination may qualify only when the combined sequence creates a repeatable capability not already granted by its parts.
4. **Material success.** The method successfully and materially contributes to a resolved outcome under genuine danger, consequential work, or structured practice with real feedback. An attempt that fails to contribute, or a routine repetition with no meaningful test, is not qualifying evidence.
5. **Distinct scene.** The evidence comes from a qualifying scene not already counted for that candidate. One continuous danger, bounded work task or shift, or structured practice session contributes at most once, regardless of repetitions within it.

At the applicable boundary, the first qualifying occurrence creates a `tracking` candidate with a stable key and signature and attaches the audit Event-and-scene reference. Later evidence matches by the signature's method, tools, sequence, and payoff—not by prose wording. If two candidates plausibly match or distinctness cannot be determined, record `pending-classification`; never convert uncertainty to `none`.

On the third qualifying scene, the Runtime must settle the threshold after the scene's ordinary outcome and rewards. If this profile already authors the candidate's complete name, Rank, cost, effect, limits, and mastery progression, ratify it automatically in that same dangerous-scene settlement or promotion-batch Event; it must not pause in `pending-ratification`. Otherwise change it to `pending-ratification` and render after a dangerous scene settles or after the work/practice promotion barrier succeeds:

```text
╔══ ◈  T E C H N I Q U E   F O R M A T I O N ═════════════════════════════════
     <candidate signature>
     Status          ready
     Evidence        3/3
╚═════════════════════════════════════════════════════════════════════════════
```

Ratification creates the fully authored skill at Novice and changes the candidate to `ratified`, recording `resolution_event` and `result_ref`. Rejection preserves the evidence and reason as `rejected`; it reopens only by owner ruling or when a materially different signature creates a new candidate. Pre-ratification evidence establishes acquisition only and never backfills post-acquisition successful-use or mastery counters.

**Mandatory ratification gate.** After every scene settlement and successful promotion barrier, scan the Bearer's candidates for `pending-ratification`. Present all such candidates as one consolidated owner-adjudication queue, never as per-action interruptions. Before another gameplay scene begins, every queued candidate must receive an owner ruling that either authors and ratifies the complete skill or rejects it with a recorded reason. The Runtime may answer rules questions and execute `/save`, `/end`, `/export`, or other non-advancing OOC commands while the queue remains pending, but it may not roll, narrate an NPC action, advance in-world time, or begin the next scene. A checkpoint may preserve the queue; `/continue` and every readiness gate must surface and resolve it before scene narration. Several ratifications may share one profile advance and one adoption Event.

Implement an approved ratification atomically: author the complete profile entry when one does not already exist; create the canon-bearing resolution Event; add the Novice skill to `skills_known`; initialize its tracked use, qualifying-scene, and mastery counters at zero with that Event as baseline; change the candidate to `ratified`; add `resolution_event` and `result_ref`; update every live binding and campaign index required by the mutation; then pass read-back and repository validation before play continues. Rejection creates its canon-bearing ruling Event and changes the candidate to `rejected` with the owner-authored reason. Neither path rewrites historical evidence or immutable checkpoints.

The audit is bookkeeping at its declared boundary, not an action-resolution phase. It adds no roll, modifier, response, or player choice before a dangerous scene ends, and no work/practice classification between saves.

### Instructional Item Identity and Binding

A generated rune or skill book is a physical instructional item with a fixed identity. Complete live state records:

```yaml
name: <item name>
teaches: <authored skill or mastery contribution>
teaching_rank: <E-Rank–S-Rank, or none for mastery instruction>
instruction_binding: bearer-only | unbound-awakened | class-bound:<class>
provenance:
  source_kind: <catalogue | daily-random-box | daily-premium | public-gate-boss | instant-dungeon | found-world | authored>
  source_event: <EVT-id>
status: unused
```

`instruction_binding` is immutable when the item changes hands. `bearer-only` instruction can be consumed only by the System's Bearer. `unbound-awakened` instruction can be consumed by the Bearer or any already-awakened recipient; it cannot cause an unawakened person to awaken. `class-bound:<class>` instruction can be consumed only by a holder of that authored class. Physical transfer is still possible when consumption is not: binding governs who can learn from the item, not who may carry it. `npc_consumable` is derived from binding plus the proposed recipient and is never stored as a second source of truth.

Binding follows provenance. Ordinary catalogue and Daily Random Box runes/books are `bearer-only`. Daily Premium runes, public-Gate boss runes/books, instant-dungeon and Runic-Key instruction, and authored found/world loot are `unbound-awakened` unless explicitly authored otherwise. Mastery Runes and Mastery Books are `bearer-only`. Class-restricted instruction uses `class-bound:<class>`.

### Consumption Settlement

The item's `teaches` and `teaching_rank` are fixed at generation regardless of what its current or future holder knows. **Nothing ever rerolls an item** — not transfer, not consumption, not a holder who already knows what it teaches. Once inscribed, an instructional item is the technique it names or it is nothing.

- **NPC or other non-Bearer awakened recipient.** If eligible by binding and the recipient does not know the technique, consumption teaches it. If the recipient knows it at a lower Rank, consumption upgrades it. If the recipient knows it at the same or a higher Rank, the item cannot benefit that recipient and remains intact; there is no reroll. An NPC's effective learned-technique Rank is `min(teaching_rank, recipient fixed Rank)`.
- **Bearer — above the ceiling.** If `teaching_rank` exceeds the Section 7.5 ascension ceiling, the item **does not consume and remains intact**, whether or not the Bearer knows the technique. There is no reroll, no partial teaching at the ceiling, and no loss. It is instruction he is not yet a wide enough channel to take, and it waits: the moment his System Rank rises far enough to put `teaching_rank` at or below the ceiling, the item becomes consumable exactly as generated. This is the same intact-item branch the NPC rule above uses, applied to the Bearer's own bracket.
- **Bearer — technique unknown.** Consumption teaches it at `teaching_rank`, at Novice mastery.
- **Bearer — known *below* `teaching_rank`.** Consumption **ascends** the skill to `teaching_rank` under Section 7.5's rune-ascension route, which resets its mastery to Novice. This is the whole of the upgrade path: an item that outranks what he knows is worth exactly the Ranks it carries him.
- **Bearer — known *at or above* `teaching_rank`.** The item has nothing to teach him, and **there is no reroll**. The System never re-draws a skill table to manufacture a result he happens to lack. He chooses instead, once, at consumption:
  - **Leave it intact.** The item does not consume. It keeps its identity, `instruction_binding`, and provenance unchanged, exactly as in the NPC and above-ceiling branches above. `unbound-awakened` instruction he cannot use is still real instruction for someone who can — an eligible awakened recipient who does not know the technique learns it under the NPC branch — and any item may be banked or resold.
  - **Spend it for mastery.** Consumption instead counts as one qualifying dangerous-scene contribution toward one chosen known skill's current mastery level, exactly as the matching **Mastery Rune** or **Mastery Book** does. This destroys the item and its transferable identity with it. It is the outlet for a `bearer-only` duplicate, which no other holder could ever consume.

Note which comparison governs: these branches read the Bearer's known Rank against the item's `teaching_rank`, not the reverse. An item teaching *above* what he knows ascends him; an item teaching *at or below* what he knows is the duplicate case.

Duplicate handling is therefore a Bearer-consumption choice, not item-generation filtering and never a re-draw. A fixed item may be valuable instruction for an NPC even when the Bearer already knows its technique — that transfer route, not a reroll, is what keeps a duplicate worth having. It also leaves this section with no unbounded procedure: a Bearer who knows every technique on a skill table cannot send the System searching that table for a result that does not exist.

Because the ceiling applies to acquisition as well as ascension, holding off on learning a technique buys nothing: an unlearned skill and a learned one are both bounded by the same `System Rank + 1`, and the learned one has been accumulating mastery and lifetime counters the whole time. This is the intended incentive, and it is the defect Section 7.5 exists to correct.

## 7.2 Skill Entries

Every ordinary skill entry carries: **name · rank (E-Rank–S-Rank) · Mana cost · effect · successful uses · mastery progress**. Active skills cost Mana and are gated by it (Section 5.3); passive skills cost 0 and are always in effect. Mastery-tracked skills also carry their lifetime `qualifying_scenes_total`. A Section 4.4 **Stat Passive** instead carries its derived Rank, class label, effect, successful uses, governing base Stat, and next threshold — never mastery state.

For a Bearer damage or healing skill, rank supplies its base magnitude:

| Skill rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---:|---:|---:|---:|---:|---:|
| Rank baseline | 10 | 25 | 62 | 150 | 375 | 1,000 |

The table preserves the fixed-Rank standard-hit scale while decoupling it from the Bearer's level. A-Rank Channeling Focus adds its weapon power to this baseline (Section 11.5). The skill's own multiplier and mastery then apply under Section 6.2.

**Native Rank.** Every skill has a **native Rank**: the lowest Rank at which its instruction can be inscribed, and the zero point of the Rank scale below. The eight Section 7.3 starting skills carry the native Ranks listed there. **Rupture and Bulwark are native E-Rank.** An earned-by-doing technique's native Rank is the Rank at which it was ratified. A skill at its native Rank receives no Rank bonus of any kind; every value authored in this profile is the skill's **native-Rank** value.

**Utility effects and Rank.** Utility effects remain expressed as a modifier step, duration, reduction, resource change, or stated capability — Rank never raises a modifier step above the Section 4.3 cap of +1. Instead, each Rank a skill stands **above its native Rank** adds, by category:

**The Rank Dominance Law.** Every utility Rank scale below is sized to satisfy one invariant, which holds for **every skill in this profile regardless of category**:

> **A skill at Novice one Rank higher can do something the same skill at Master one Rank lower cannot do at all, and ascension never leaves it covering less than it covered immediately before.**

The law has two halves because the axes differ. On **magnitude** axes it is a strict numeric comparison and always has been. On the **scope** axis it is categorical — Rank grants a *kind* of reach no mastery level ever supplies — and the second clause — that ascension never leaves a skill covering less than it covered immediately before — is guaranteed by the scope ratchet below. The earlier formulation compared counts alone and was false for every scope skill in this profile: an E-Rank Master Keen Sense reached five subjects against a D-Rank Novice's two, so ascension read as a downgrade on exactly the skills whose numbers are least visible.

Damage and healing satisfy this natively — a Rank step multiplies output by ~2.5 while a full mastery track multiplies it by only ×1.3–×1.6, so higher-Rank Novice wins by 1.56× to 1.92×. Utility skills are sized here to match that behaviour rather than contradict it. Rank is the wider pipe; mastery is the steadier hand; and a wider pipe at its crudest always moves more than a narrow one perfectly handled. Without this law, ascension would be a trap on exactly the skills whose numbers are least visible, and the Bearer would learn to fear his own progression.

| Utility category | Per Rank above native | Example |
|---|---|---|
| **Reduction** | **+25 percentage points** to the skill's own reduction fraction | Stone Skin, native D-Rank: 30% at D, 55% at C, 80% at B |
| **Passive multiplier** | **+0.25** to the multiplier the skill grants | Dagger Mastery, native E-Rank: +0.10 chassis at E, +0.35 at D |
| **Modifier step or stated capability** | **whole-scene duration outright** at the first Rank above native, then **one further affected subject and one authored category grant** per Rank | Keen Sense, native E-Rank: presence at E; at D, whole scene, one further subject, and the new category *intent and method* |

On the two **quantitative** utility axes, each Rank step is deliberately **larger than an entire mastery track**: +25 points against mastery's +20 for reduction, +0.25 against mastery's +0.20 for a passive multiplier. That is not generosity, it is arithmetic — ascension *costs* mastery levels (Section 7.5), so a Rank step must outweigh the whole track it can consume or the invariant fails. The **scope** axis cannot be sized this way: mastery's own ladder spans +4 subjects, and a Rank step large enough to dominate it outright would put fifteen concurrent Patterns on a C-Rank Exploit Pattern. Scope therefore satisfies the law by **category and ratchet** rather than by out-scaling, as set out below.

The **modifier-step** row works differently for a reason. Mastery's duration track terminates at *whole scene* (Section 7.4), an absolute ceiling no quantity of exchanges can exceed, so no duration-based Rank step could ever beat a Master-level skill. Rank therefore saturates duration immediately at one Rank above native and thereafter grants, per Rank, **one further affected subject and one category grant** — a kind of subject, condition, or reach the skill could not touch at any mastery level. Mastery grants subjects alone: **1 / 2 / 3 / 4 / 5** affected subjects, allies, patterns, or concurrent instances from Novice through Master, whichever the skill's authored effect names.

**Both contribute to the count, and the count is not what carries the law.** The earlier formulation asked the count alone to carry it, which required a Rank step to exceed an entire mastery track — +1 against +4, which it never did. The law is now carried by the **category**: no quantity of mastery ever reaches a kind, so a skill one Rank higher can always do something the lower-Rank Master cannot, regardless of which one currently covers more subjects — the count was never the category's job to win. The count's only remaining obligation is the law's second clause — that ascension never leaves a skill covering less than it covered immediately before — and the ratchet below discharges it. Where no category is authored at a target Rank the skill is not ascension-eligible at all (below), so no reachable state exists in which a skill one Rank higher fails to do something the lower-Rank Master cannot — the law holds for every skill in this profile because the profile declines to create the state that would break it.

**Retention, and why this profile no longer states it three times (1.83).** Through 1.82 the same principle was written twice as two ratchets and once, implicitly, as the practice of listing every category a skill had ever gained. It is one rule:

> **Nothing a skill has earned is ever taken back.** A category earned by Rank, a dividend rung earned by mastery, a scope count and a magnitude are all **permanent** — at every Rank, at every mastery level, and through every ascension on either road.

The two ratchets below are that rule applied to the two values that could otherwise *fall*, because Section 7.5 resets mastery and both are computed from it. A **dividend rung cannot fall** — `dividend_level` is monotonic and no rule decrements it — so it needs no floor and is given none. **Retention is the reason the ratchets exist; the ratchets are not themselves the reason.**

Categories were never at risk and were never floored, which is exactly why nothing said so. That silence is closed here: a skill at any Rank holds every category authored at or below it, and no mastery level, reset, rune or breakthrough removes one.


**The scope ratchet.** Because ascension resets mastery (Section 7.5), a skill's scope count would otherwise fall on the very step that is supposed to improve it. It never does:

```text
scope = max( 1 + ranks_above_native + (mastery_level − 1),  scope_floor )

scope_floor := the skill's scope count immediately before its last ascension
               (0 for a skill that has never ascended)
```

`scope_floor` is a `tracked_counters` entry under Section 7.4's storage rule, written as a `counter_deltas` change on the ascension Event like every other counter. Worked, on Keen Sense: at E-Rank Master it covers 5; breakthrough to D-Rank Adept computes `1 + 1 + 2 = 4` but the floor of 5 holds, and the D category is gained; climbing back to D-Rank Master computes `1 + 1 + 4 = 6` and the floor no longer binds. Rune ascension to D-Rank Novice computes 2, holds at 5, and reaches 6 at Master by the longer road. Neither road ever loses reach, and both gain the category immediately.

**The magnitude ratchet, and the case that made it necessary.** The scope ratchet was written because ascension resets mastery and a *count* would otherwise fall on the step meant to improve it. **Exactly the same thing happens to a magnitude that mastery owns and Rank does not**, and 1.54 is where that was measured rather than assumed:

| Skill | Rank N Master → Rank N+1 Novice |
|---|---:|
| Rupture | ×1.92 |
| Mend, Mana Bolt | ×1.56 |
| Dagger Mastery | ×1.17 falling to ×1.04 |
| Stone Skin, Bulwark | ×1.10 falling to **×1.00 at the 90% cap** |
| **Twin Fang** | **×0.625** |
| **Dimensional Projection** | **×0.25** (range 20 m → 5 m) |

Twin Fang's follow-up multiplier is authored by mastery alone, so ascending it **destroyed 37.5% of the damage it existed to deal** — and Section 7.5's ordering, `Rank N Master < Rank N+1 Novice`, asserted the opposite for every eligible skill in this profile. The magnitude-axis ladder (Section 7.3) had made Twin Fang eligible at 1.52 without anyone checking the arithmetic of the trade it was now permitted to make. The same defect sat waiting in Dimensional Projection's range track.

```text
magnitude = max( the value authored at the current Rank and mastery level,
                 magnitude_floor )

magnitude_floor := the skill's own authored magnitude immediately before its
                   last ascension (0 for a skill that has never ascended)
```

It is a `tracked_counters` entry and a `counter_deltas` change on the ascension Event, exactly like `scope_floor`, and it binds **every** magnitude a skill carries — multiplier, reduction fraction, or authored range. Where Rank already dominates the axis the floor never binds and costs nothing; where Rank supplies little or nothing, it is what keeps the trade honest.

**The floor guarantees no loss; the category guarantees a gain.** That is precisely the arrangement scope has always had, now stated for magnitude too — and it is why the Section 7.3 tables give *every* skill a row. A rung that returns an equal number and a new kind is a real ascension. A rung that returns a smaller number is not one, and this profile no longer permits it.

**Inert until scope exists.** A skill whose authored effect carries no scope count at its current Rank has no scope value, and its `scope_floor` is inert. It begins tracking at the first Rank whose category grant is scope-valued, starting from the ladder's Novice value of 1.

**Stat Passive exemption.** The per-Rank subject grant applies to **mastery-tracked** scope skills only. A Stat Passive (Section 4.4) has no mastery track and therefore no count axis: each Rank above native grants its authored category and nothing else, and it carries no `scope_floor`.

**Cost expressions must be total (1.73, `F-032` question 2).** Any authored cost naming a context-derived term — *the instance's Rank*, *the creature's Rank*, *the band they are raised to* — **must either state a fallback for the contexts the same rule advertises, or state that the ability does not function without that context.** A cost that reads a property the situation does not have is not a cost; it is a gap, and it will be found mid-scene by a player asking the obvious next question. Section 18.8's anchored step was exactly this: priced off *the instance's Rank* while the same paragraph advertised anchors in a contiguous stretch of the city, where there is no instance. It was closed at 1.72; this rule is what stops the next one.

**Ascension eligibility.** A skill is **ascension-eligible** at a target Rank only where that Rank's grant is authored and non-empty for it. On the two quantitative axes the grant is always authored: the reduction and passive-multiplier scales above are closed-form and every Rank has a value. On the **scope and capability** axis the grant is a category, and a category exists only where Section 7.3 authors one. Where a target Rank authors no category for the skill, and its whole-scene and further-subject grants are both inert — the first because the skill's authored effect has no duration to saturate, the second under *Inert until scope exists* above — that Rank would cost mastery levels and return nothing. **The skill is then not ascension-eligible, and Section 7.5 withholds the offer rather than making it.**

**A third case exists and was unnamed until 1.52: a skill Rank cannot reach on any axis.** An earned technique whose damage formula reads **weapon power rather than a Rank baseline** — Twin Fang, and Dimensional Projection when it forms — takes nothing from the Section 7.2 baseline table, holds no reduction fraction and no granted multiplier, carries no scope count, and has no duration to saturate. Every quantitative axis is inapplicable rather than merely small, so *"the grant is always authored on the quantitative axes"* said nothing about it, and it appeared in neither Section 7.3 ladder. Such a skill was permanently ineligible: it could reach Master and never ascend, by either road, for the rest of the campaign. Twin Fang reached exactly that state and held it. **Section 7.3's magnitude-axis ladder closes the case** by authoring a category for every mastery-tracked skill in neither existing table, so no skill is inert on all four axes at once. **1.54 closed the half that ladder left open**: a category made Twin Fang *eligible* without making the trade *favourable*, because its whole multiplier still belonged to mastery and ascension reset it. Rank now grants it +0.35 a step, and the magnitude ratchet below holds every skill harmless besides.

**Thin is not the same as absent, and both now reach the category.** The quantitative grants are authored at every Rank, but they are not all *large*. Comparing the higher Rank's Novice value against the lower Rank's Master value — the exact comparison the Rank Dominance Law makes — the ratios are not alike:

| Axis | First Rank above native | Second | Third | Behaviour |
|---|---:|---:|---:|---|
| **Damage / healing** (Rank baseline) | ≈1.56× | ≈1.56× | ≈1.56× | Holds; the baseline table multiplies by ~2.5 each step |
| **Passive multiplier** (+0.25) | 1.17× | 1.09× | 1.06× | **Converges toward parity** |
| **Reduction** (+25 points) | 1.10× | 1.07× | cap | **Converges toward parity** |

Damage and healing multiply; the other two **add a fixed increment to a growing base**, against a mastery track that also adds a fixed increment, so the margin shrinks at every step and a fourth Rank would be worth almost nothing at all. The law still holds — a higher-Rank Novice always exceeds the lower-Rank Master — but on those two axes it holds by a margin the Bearer cannot feel, which is the same failure the law was written to prevent, arriving by arithmetic instead of by omission. **A grant is *thin* where that ratio falls below 1.15×**, and a thin grant reaches the skill through an authored category as well, exactly as an absent one does. Nothing is taken away: the quantitative grant is unchanged and continues to apply in full.

Withholding costs the Bearer nothing: the skill keeps its Rank, its mastery level, and its full effect, and becomes eligible the moment the rung is authored under Section 20.3. It is a deferral, not a denial — and it is the only order of operations this profile permits, because an ascension settles by consuming mastery and Rules Section 13.2 forbids reopening what a settlement has spent.

**A withheld offer is recorded, never silent.** At the settlement or promotion barrier that would have surfaced it, the Runtime states that the skill reached ascension-readiness and that no offer was made because the target Rank is unauthored, naming the skill and the Rank. An unauthored rung is a gap in this profile, and a gap that goes unstated is the defect that Section 8.4.6's telemetry exists to prevent elsewhere.

Rank gains and mastery gains on the same axis **add**. Two bounds apply:

- Reductions still multiply and never add across sources (Section 7.3), and a **single skill's own reduction fraction never exceeds 90%** from Rank and mastery combined — reduction is bounded by arithmetic, not by design preference, and nothing in this profile reaches immunity. The Rank Dominance Law holds at every Rank until that cap binds, which for a native-D 30% reduction skill is A-Rank. At and above the cap, each further Rank step instead grants **one further exchange of duration**, so ascending a capped reduction skill is still never worth nothing.
- **Rank never changes a skill's Mana cost** — that axis belongs to mastery alone (Section 7.4), so the two growth tracks stay legible against each other.

### Earned Weapon Technique — Twin Fang

**Twin Fang [E-Rank]** is an earned-by-doing weapon technique under Section 7.1.

| Skill | Rank | Mana cost | Effect |
|---|---|---:|---|
| **Twin Fang** | E-Rank | 6 | Requires two equipped Quickknives. After one ordinary Quickknife strike against a single target, immediately resolve a separate strike against that same target with the other Quickknife. Each strike has its own d100 roll and physical-damage calculation and uses only its own weapon power. Twin Fang is the action's offensive active skill and cannot combine with Rupture or another offensive active skill. |

Mana is paid once when Twin Fang is activated, whether either strike lands or misses. Resolve the strikes in the declared order as components of one action; already-moving enemy reactions remain live under Section 6.2. The first strike is the ordinary opening and gains no Twin Fang mastery multiplier. The second, skill-enabled strike resolves as:

```text
Twin_Fang_follow_up =
    (effective Strength + second_weapon_power)
  × second_weapon_chassis
  × Twin_Fang_mastery_multiplier
  × result_multiplier
  × (1 − total_reduction)
```

Dagger Mastery modifies each Quickknife chassis normally. Twin Fang's mastery multiplier follows the damage-skill schedule in Section 7.4 — **+0.15 per level** — over a base that rises **+0.35 for each Rank above native**:

```text
Twin_Fang_multiplier = max( 1.00 + 0.35 × ranks_above_native + 0.15 × (mastery_level − 1),
                            magnitude_floor )
```

| Rank | Novice | Practiced | Adept | Expert | Master |
|---|---:|---:|---:|---:|---:|
| **E** *(native)* | ×1.00 | ×1.15 | ×1.30 | ×1.45 | ×1.60 |
| **D** | ×1.35 | ×1.50 | ×1.65 | ×1.80 | ×1.95 |
| **C** | ×1.70 | ×1.85 | ×2.00 | ×2.15 | ×2.30 |
| **B** | ×2.05 | ×2.20 | ×2.35 | ×2.50 | ×2.65 |
| **A** | ×2.40 | ×2.55 | ×2.70 | ×2.85 | ×3.00 |

**The +0.35 exists because Rank reaches Twin Fang nowhere else.** Its strikes read weapon power rather than a Rank baseline (Section 7.2), so without it the entire multiplier belonged to mastery and ascension destroyed 37.5% of it. The increment is deliberately modest rather than the ~2.5× a Rank baseline carries: Twin Fang's damage already grows with effective Strength and with every weapon he equips, and multiplying that by a Rank step as well would outrun every skill in this profile. **The magnitude ratchet does the rest** — the earned road lands at `1.60 → D Adept ×1.65`, a strict gain, and the bought road computes `D Novice ×1.35`, held at the floor of ×1.60 and gaining *Second target* outright. Neither road ever returns less than it cost.

Its Mana cost follows the same section's −10%-per-level rule: **6 / 5 / 5 / 4 / 4**. A successful use is recorded only when the skill-enabled second strike lands and materially contributes; one continuous dangerous scene contributes at most one mastery point.

Worked E-Rank baseline, before reduction: at effective Strength 10, an ordinary E-Rank Quickknife deals `(10 + 2) × 0.75 = 9` on a standard success. Novice Twin Fang deals `9 + 9 = 18` for 6 Mana. One ordinary dagger followed by Novice E-Rank Rupture deals `9 + (10 × 2.0) = 29` for Rupture's 12 Mana. Twin Fang is therefore the lower-cost sustained physical combination; Rupture is the higher-cost skill-rank burst.

### Ratified Earned Techniques — Analysis, Command, and Extraction

All three techniques below are earned-by-doing skills under Section 7.1.

| Skill | Rank | Mana cost | Effect |
|---|---|---:|---|
| **Exploit Pattern** | E-Rank | Passive | A successful deliberate tactical read establishes an active Pattern tied to one opponent, behavior, weakness, or structure. Alexander gains +1 modifier step on every personal action whose declared method genuinely exploits that Pattern while it remains valid. |
| **Field Command** | E-Rank | Passive | Relay one active Exploit Pattern to an ally who can perceive and understand Alexander. The ally treats the Pattern as personally understood, needs no separate tactical-read action, and gains its +1 modifier step on actions that genuinely exploit it. |
| **Resonance Extraction** | E-Rank | Passive | A successful deliberate read of a mana-crystal vein establishes a Resonance Pattern. Alexander gains +1 modifier step on every extraction action that follows it until the vein is exhausted or its structure materially shifts. |

**Exploit Pattern.** A Pattern ends when the scene ends or the fiction invalidates it: the opponent adapts, changes form or tactics, leaves the relevant conditions, or the weakness is destroyed. The skill never restricts ordinary analysis or tactical reads. Its modifier is the mechanical expression of the identified finding and does not stack with another modifier derived from that same tell, weakness, or structural opening; unrelated advantages still combine to the ordinary net cap. Novice through Master supports **1 / 2 / 3 / 4 / 5 concurrent active Patterns**. Each resolved personal action materially improved by a Pattern is one successful application.

**Field Command.** Relaying a Pattern requires a brief actionable call that the recipient can perceive and understand. When that fits into a short timing, angle, target, or abort instruction, it costs no separate action; detailed planning consumes its natural fictional time. Before each benefiting ally roll, Alexander may update the call to align the declared action with the Pattern, but cannot change an action or result after the roll. Ordinary communication still conveys information but does not transfer the mechanically established Pattern or its persistent modifier. The shared benefit ends when its source Pattern ends or communication becomes impossible. Novice through Master supports **1 / 2 / 3 / 4 / 5 simultaneous allied recipients**. Each resolved ally action materially improved by a relayed Pattern is one successful application.

**Resonance Extraction.** A Resonance Pattern ends when the vein is exhausted or its structure materially shifts; a shifted vein requires another successful read to recalibrate. This skill never removes or restricts ordinary mining expertise, tools, Stats, or unrelated circumstances. Its modifier does not stack with another modifier derived from the same resonance reading. At Novice it benefits Alexander alone. Practiced through Master lets **1 / 2 / 3 / 4 additional miners** benefit while following his live extraction calls. Each materially improved extraction action is one successful application.

For all three passives, several successful applications may occur in one scene, but one skill-appropriate qualifying scene contributes at most one mastery point under Section 7.4.

### Ratified Earned Technique — Broken Rhythm

**Broken Rhythm [E-Rank]** is an earned-by-doing technique under Section 7.1, ratified at `EVT-000309`. **Its effect was never authored here** — it existed only as a rendered line on the Bearer's own sheet, which is the Section 20.2 defect: a live mechanic resting in campaign state with no rule behind it. Authored in full at 1.52.

| Skill | Rank | Mana cost | Effect |
|---|---|---:|---|
| **Broken Rhythm** | E-Rank | Passive | Reading a live opponent's weight-shift and tell-cadence to react before the movement completes. +1 modifier step on evasion and reaction against any perceived attacker's telegraphed action. Unlike Pre-empt (Section 4.4) it is not limited to surprise or ambush exchanges. |

**Its mastery track widens scope, and this had to be ruled rather than derived.** Broken Rhythm is a *permanent passive at the Section 4.3 step cap*: no multiplier to raise, no reduction fraction, no duration to lengthen — it is always in effect — and Mana 0, so Section 7.4's −10%-per-level is inert too. Every closed-form mastery axis in that section was inapplicable at once, and **the skill therefore gained nothing from Novice to Master**: twelve qualifying scenes for no change of any kind. That is the same defect `F-014` recorded on the Rank axis, arriving on the mastery axis, and it is closed the same way — by authoring the rung rather than leaving the arithmetic to imply one.

Mastery grants **1 / 2 / 3 / 4 / 5** beneficiaries from Novice through Master, on the ladder Section 7.4 already names for a whole-scene modifier-step skill and Keen Sense and Silent Step already use. At Novice it benefits Alexander alone; each level extends the step to one further ally who can perceive him, against an attacker whose cadence he has read and named aloud. The ally reacts on the read as though it were his own. Broken Rhythm accordingly carries a `scope_floor` under Section 7.2's ratchet like every other scope-axis skill.

**This is why the C-Rank rung is *Read the room* and not an ally grant.** The first draft of the Section 7.3 magnitude ladder gave Broken Rhythm ally-sharing at C-Rank, which would have put the *same axis* under both Rank and mastery — the one arrangement Section 7.2 forbids, since Rank grants a **kind** and mastery grants a **count**, and a skill whose two tracks compete for one axis has no legible growth at all. The count belongs to mastery; the Rank ladder holds concurrency, unseen reads, and denial, none of which any mastery level reaches.

A successful application is each resolved evasion or reaction the step materially improved, his own or a benefiting ally's. Several may occur in one scene; one qualifying scene contributes at most one mastery point.

### Authored Formation Result — Dimensional Projection

Repeated, materially successful control of the dimensional inventory during motion may form the stable candidate `dimensional_weapon_control`, signature `instant-withdrawal.mid-motion.weapon-line-change-or-release`. Its complete ratification result is already authored:

| Skill | Rank | Mana cost | Effect |
|---|---|---:|---|
| **Dimensional Projection** | E-Rank | 6 | Withdraw **one or more** owned, portable objects into visible, unoccupied points within 5 metres and immediately launch them at perceived targets as a **named multi-strike** (Section 6.2). The number launched is the mastery/Rank projectile count below. Resolve **one ranged physical strike per projectile**, each using Agility to hit and the ordinary Bearer physical-damage formula — effective Strength, that object's power and chassis, the result multiplier, then reductions. |

The deployment point must have an unobstructed line of sight from the Bearer and a clear physical path to the target. A weapon cannot appear inside a creature, object, barrier, worn equipment, or occupied space; cannot cross a sealed barrier; and cannot target a location the Bearer cannot perceive. **The launched weapon is a real physical object after withdrawal: on either a hit or miss it lands where the fiction puts it and stays there until recovered or recalled.** A stored weapon contributes no equipped Stat bonus to the action; only a weapon already equipped before the roll supplies its ordinary equipped bonuses.

**Recovering it is Section 12.9's remote storage, and the cost is the point.** A landed weapon is an inanimate object the Bearer can perceive and no one is holding, so he may send it straight back to the inventory without walking to it — **but inside an exchange that is remote storage, and it spends that exchange's one inventory change.** The weapon is therefore never lost and never an errand; the price is a beat of tempo, paid in the same currency as a weapon swap. Outside an exchange recovery is free like any other storage. **This corrects a real defect rather than adding a convenience**: through 1.58 this entry said the pre-skill inventory was *hand-delivery only* in both directions, which Section 12.9's own text established for withdrawal and never for storage — so *stays where it lands* rested on a rule nobody had written, and `EVT-000326`'s crate sweep already contradicted it.

Dimensional Projection is the action's offensive active skill and cannot combine with Rupture, Twin Fang, a split dual strike, or another offensive active skill. Its remote withdrawal is the action's one inventory change for that exchange **however many projectiles it launches**, so **launching and recovering cannot both happen in one exchange** at native Rank. The pre-skill Section 12.9 inventory imparts no remote *motion*: practicing hand summons, grip changes, immediate releases, and throws can establish formation evidence, but remote placement and launch do not exist before ratification.

**Projectile count is this skill's magnitude, and it is the axis the technique was missing.** Mastery launches **1 / 2 / 2 / 3 / 3** objects from Novice through Master, and **each Rank above native adds one more** (Section 7.3). Every projectile is its own deployment point, its own object, and its own resolution, and they **may be split freely among any targets in range** — the Bearer's only true multi-target offensive action, which is what keeps this technique out of Rupture's single-target lane instead of losing to it there. Its strike reads weapon power rather than a Rank baseline, exactly as Twin Fang's does, so no Rank baseline can reach its damage; **count is what Rank and mastery move instead.** It carries a `magnitude_floor` from ratification. Mana follows the ordinary −10%-per-level rule and is paid **once for the action**, not per projectile: **6 / 5 / 5 / 4 / 4**.

**Anything portable may be launched, and the arithmetic is the whole of the restriction.** The launch is the Bearer's own skill, so it carries his mana under `GTF-OVR-003` and a thrown object wounds a monster where a mundane weapon in a soldier's hands would not. But damage reads **that object's** power and chassis: a ranked blade brings its Section 11.5 weapon power and its chassis, while a crate, a chair, or a fistful of crystal brings **weapon power 0 and the improvised chassis ×0.5**. Junk is therefore legal and nearly worthless, ranked steel is what hurts, and the profile needs no special rule to say so. The practical consequence is an **acquisition track**: a Bearer who holds this technique stops selling banked weapons, because his armoury is his ammunition.

Every deployment point must independently satisfy the placement rules above — line of sight, unoccupied, a clear path — and a failure to place one projectile does not spend the others. Each landed object is recovered under Section 12.9's remote storage on the terms above; recovering **all** of them costs the same single inventory change, which is what makes *Recall* (D) a real grant rather than a rebate once the count rises.

Mastery also extends maximum deployment range to **5 / 7 / 10 / 15 / 20 metres**, over a band that rises **+3 m for each Rank above native**. Range remains a genuine grant but is no longer the technique's only one; before 1.70 it was, and a skill whose sole axis is *how far away the same weak strike happens* is a skill nobody spends an action on. A successful use is recorded when **at least one** projected strike lands and materially contributes. One qualifying scene contributes at most one mastery point.

### Rejected Formation Candidate — applied analytical reconstruction

`applied_analytical_reconstruction` — signature `apply-formal-physical-or-geometric-training.reconstruct-unobserved-structure-or-coverage.act-on-the-derived-finding` — was opened at 2/3 and **carried a pre-authored result, First Principles [E-Rank], through 1.58 and 1.59. Both are retired at 1.60 and the candidate is `rejected`.** The reasoning is kept here rather than deleted, because a rejected candidate that leaves no trace invites the next reader to open it again.

**The native effect duplicated a modifier the Bearer already receives.** Both evidence scenes resolved on the engine's standing **established-capability** step — *"+1 step for the directly relevant established capability"* — which fires for competence a character actually holds and needs no skill at all. The Bearer is a university-trained mathematician and physicist; sightlines, load paths, and sweep-cone geometry are what that training *is*. A skill granting +1 step for applied physics to a man who already draws +1 step for applied physics grants nothing: Section 4.3 caps the net step at +1 and a modifier never stacks with another derived from the same finding, so on the very scenes that formed the candidate the skill would have changed no resolved outcome.

**That is the Rank Dominance Law failing at acquisition rather than at ascension.** The law asks whether a higher Rank can do something the Rank beneath cannot; here the *skill* could do nothing its own absence could not. Every mastery axis then failed the same test from the other direction: beneficiaries priced a solitary method as a group one; concurrent held derivations reproduced Multitask's retired defect, a ceiling no play ever reaches; and a scale ladder starting at *one wall* asserted a floor **beneath** what the Bearer had already demonstrated with no skill, making ratification a downgrade dressed as progression.

**The general rule this leaves behind.** A System skill is a capability the world does not otherwise grant. Where the Bearer's own background already resolves an action, the established-capability step is the correct and complete pricing of it, and Section 7.1's third test — *distinct capability*, not generic competence — excludes it from formation. **Education is capability, not a skill.** It carries no Rank, no Mana cost, no mastery track, and no System Rank ceiling, and it applies whenever it is directly relevant, which is strictly better than any E-Rank passive this profile could have authored for it.

Section 7.1's rejection route governs: the evidence and this reason are preserved, and the candidate reopens only by owner ruling or when a **materially different** signature creates a new one.

## 7.3 Starting Skill Table

These eight skills are what a rune can teach at E- and D-Rank. Costs are in Mana; effects resolve under Sections 4.3 (modifier steps) and 6.1 (Rank Health).

| Skill | Rank | Mana cost | Effect |
|---|---|---|---|
| **Sprint** | E-Rank | 3 | +1 modifier step on movement, pursuit, and distance-closing actions for one exchange. |
| **Dagger Mastery** | E-Rank | Passive | Add **+0.10** to a Quickknife's chassis multiplier (normally ×0.75 → ×0.85). |
| **Mend** | E-Rank | 6 | Restore Health at **×1.0 of the E-Rank skill-rank baseline** (10 before mastery/focus); controls bleeding but does not clear a wound's severity. |
| **Stone Skin** | D-Rank | 4 | 30% physical damage reduction while sustained; ends when Mana lapses or the Bearer drops it. |
| **Flash Step** | D-Rank | 8 | Close or break line-of-sight distance instantly once, granting +1 modifier step to the follow-up action. **Bound to what he perceives** — see the note below the table. |
| **Keen Sense** | E-Rank | 2 | +1 modifier step on detection: spotting ambush, hidden foes, or anomaly for the scene. |
| **Silent Step** | E-Rank | 3 | +1 modifier step on stealth and unseen-approach actions for the scene. |
| **Mana Bolt** | E-Rank | 5 | A ranged bolt at **×1.0 of the E-Rank skill-rank baseline** (10 before mastery/focus) on a standard success; Intelligence governs uncertain control and the die resolves whether it lands and its degree. **No limit in distance** — it reaches as far as the Bearer can see, and requires that he **see** it (1.57, delivery note below). |

Reductions from Stone Skin and any other source **multiply, never add** (`total = 1 − Π(1 − rᵢ)`), so no stack of skills reaches immunity.

**Flash Step is bound to perception at every Rank, and carries no metre band (1.96, `F-049`).** Its destination must be somewhere he can **see**, or — from C-Rank up, through the barrier and ward categories in Section 7.2 — somewhere he holds a **live read** of: a prior look, a resolved Keen Sense, or a Pattern relayed by an ally. **There is no Rank at which it crosses to a place he has not perceived**, and there is no distance in metres anywhere in its authored line: the limit is his perception, not a number. Both statements are here because the live campaign's skill line had acquired *"any point within 100 m, sight or no sight"* — a reach this profile never granted it and which belongs to Section 18.8's Riftwalker — and the two abilities became indistinguishable as a result. **Flash Step is the step you take at something you can see. Going somewhere you cannot is a class.**

**Delivery range, and why the two offensive Mana skills are not the same spell (1.57).** Since 1.56 folded effective Intelligence into Mana damage, **Rupture and Mana Bolt read the identical Section 6.2 formula** — `(skill_rank_baseline + effective Intelligence + equipped_focus_power) × multiplier` — differing only by multiplier bands exactly **1.00 apart at every mastery level** (×2.00–×2.60 against ×1.00–×1.60) and by Mana cost. That is not enough to make them different skills, and it had been true since long before 1.56, which only made it visible. **Delivery is what tells them apart, and it is authored here.**

- **Rupture reaches 5 metres, flat at every Rank.** It is the burst: the larger multiplier, the higher cost, and a band short enough that taking it means being in the fight. Range is deliberately **not** one of its axes — the skill already grows on magnitude and on four categories, and a restriction that says what a skill *is* should not erode as it ascends. A dagger strike followed by Rupture remains an ordinary combo under Section 6.2, since the Bearer is inside 5 metres whenever that combination occurs.
- **Mana Bolt has no limit in distance.** It is the reach: cheaper, weaker per action, and bounded by perception rather than by metres. At its native E-Rank the Bearer must **see** the target.

**Mana Bolt's ladder relaxes the sense, not the distance, and that is what keeps it a ladder.** *Arcing* (D) already sells a known position where a clear line was required; *Homing* (A) already sells a target perceived **by any means**, sound included. Authoring vision-or-sound into the E-Rank baseline instead would hand the baseline both of those rungs, leaving two Ranks granting nothing on a skill whose magnitude ladder 1.56 had **already** measured at nothing — and Section 7.2 defines a category as a kind of thing the Rank beneath cannot do at any value of the governing Stat. A rung that the baseline already covers is not a category. **`tools/test_rank_dominance_law.ps1` does not catch this class of defect**: it verifies that a thin magnitude ladder *carries* categories, not that each category grants something new, so a redundant rung passes green. That is the same shape of hole 1.56 found in the *magnitude only, by design* rows, one layer up, and it is recorded here rather than left for the next reader to rediscover.

**Neither skill crosses a Gate boundary, a Section 9.6 seal, or a Section 17 instance wall**, on the clause Dimensional Projection's *Past the wall* already uses. Distance without that limit would let a Bearer reach into an instance he has not entered.

**Keen Sense and Silent Step are scene-long from Novice.** Both are authored above as lasting *for the scene*, not for one exchange, and that authored duration governs at every mastery level — Section 7.4's per-level lengthening ladder does not apply to them, because there is no duration left to gain. Their mastery track instead widens **scope** under that section: Novice benefits the Bearer alone, and each level extends the effect to one further ally — **1 / 2 / 3 / 4 / 5** beneficiaries from Novice through Master. A Keen Sense ally shares the detection read as if he had made it himself; a Silent Step ally moving with the Bearer shares the concealment while he keeps to the Bearer's pace and line. Neither ever renders shorter than one scene at any level.

**Scope-axis category ladders.** Under Section 7.2 each Rank above native grants one further affected subject and one authored category. The subject count is the Section 7.2 formula's; the categories are authored here. The band is authored below to **S-Rank, the top of the ladder** — A-Rank at 1.53 and S-Rank at 1.81, each under Section 20.3 at the checkpoint where it first became reachable. No column is left prospective, and the note below the tables records why the last one took a separate ruling.

| Skill | E (native) | D | C | B | A | S |
|---|---|---|---|---|---|---|
| **Keen Sense** | Presence — ambush, hidden foes, anomaly | **Intent and method** — what a detected thing is preparing, and how it is concealed | **Structure through barrier** — the layout and extent of an unseen space and the disposition of what occupies it, beyond line of sight | **Through concealment** — pierces another's active concealment effect or a detection-blocking ward, not only ordinary physical obstruction | **Provenance** *(A)* — the recent past of what he detects reads as clearly as its present: what passed through a place, how long ago, and which way it went | **`Standing watch`** *(S)* — the read no longer ends with the scene: it persists on a place or a subject already detected, and a material change there reaches him after he has left it. It never crosses a Gate boundary, a Section 9.6 seal, or a Section 17 instance wall |
| **Silent Step** | Unseen approach | **Concealment through action** — stays unseen through one attack or manipulation, not only while moving | **Traceless** — leaves no track, scent, residue, or instrument signature | **Ward-blind** — the concealment holds even against a detection skill or ward actively searching for him, not only ordinary senses and instruments | **Unattributed** *(A)* — being seen no longer means being identified; perception of him refuses to attach to a name, face, or record, and an instrument that captures him captures no one in particular | **`Unremembered`** *(S)* — perception of him does not consolidate: a witness who did see him retains no usable account of it once the scene ends, and a record already captured degrades to nothing that identifies him. It undoes no consequence he has already caused |
| **Exploit Pattern** | One opponent, behavior, weakness, or structure | **Persistence** — a Pattern survives the scene boundary against the same subject while its conditions hold | **Group coordination** — a crew's or pack's coordination is itself readable as one Pattern | **Composite read** — two or more already-established Patterns are read and exploited together as one — an opponent's Pattern alongside a structural or environmental one, or two separate groups' | **Anticipatory** *(A)* — a Pattern reaches what the subject has **not yet done**: its next choice reads as an established tell, and he may exploit an action before it is declared | **`Standing Pattern`** *(S)* — a Pattern established on a person or an organisation persists indefinitely while its conditions hold, so the skill reaches negotiation, planning, and institutional behaviour rather than one exchange |
| **Field Command** | Relay to an ally who can perceive and understand him | **Silent relay** — relay without line of sight or speech, to an ally who has previously shared a Pattern with him | **Second-hand relay** — relay a Pattern he did not personally establish, taken from an ally's read | **Broadcast relay** — one call reaches an entire crew at once, and reaches an ally with no prior shared context at all, not only one lacking line of sight | **Standing order** *(A)* — a relayed Pattern persists for its recipients without him, holding while he is out of contact, unconscious, or gone from the scene entirely | **`Chain of command`** *(S)* — a recipient may relay the Pattern onward to their own crew on the same terms, so one call propagates across any number of hops without him |
| **Resonance Extraction** | Mana-crystal vein | **Cores and drops** — reads the harvestable structure of a beast core, improving extraction yield | **Field siting** — reads a whole deposit field's structure, siting productive veins before mining begins | **Predictive read** — forecasts a sited field's resonance drift, reading exhaustion or replenishment before it happens rather than only the field's present structure | **Latent siting** *(A)* — reads deposits that have not surfaced: unformed or buried veins the field’s structure implies and no survey shows | **`Field yield`** *(S)* — one read establishes a Resonance Pattern for an entire sited field at once rather than for a single vein, holding until that field is exhausted |

**Which rungs a Bearer has actually reached is campaign state, and this profile no longer asserts it.** Through 1.51 this line read *"every skill in this table is at its native E-Rank today, so every entry beyond the E column is prospective"* — true when written and false since `EVT-000390`, where Keen Sense reached B-Rank and Exploit Pattern C-Rank. It is the F-013 defect one layer up: a rules file carrying a copy of live state, hand-maintained, with nothing comparing the two. A held Rank is read from the Bearer's own ledger; the table authors the rungs and says nothing about which are occupied.

### Seamwork — the Bearer's half of a trade he cannot hold

**Seamwork** · native **C-Rank** · **Mana 3** · a resolved working of one object that **already carries a mana line** — a ranked item, an infused piece, a core, a crystal already seated. It returns what is in the working and, from C-Rank, lets him handle it. It also grants **+1 modifier step on any action taken assisting an artificer's work** (Section 12.10's assist step reads this skill and not a general impression of competence).

**The one thing it never does, and this is the whole of its boundary.** Seamwork **never creates an item.** It has no purchase on matter that carries no mana line: a bar of steel, a hide, an unworked blank is **inert to it**, and the Mana is refused before it is spent. Everything the skill does, it does to **an object that already exists and already carries a working** — read it, open it, add to it, take a working out of it, carry it up toward what it could become. **The Bearer never conjures the thing he then improves.**

**That is what keeps Section 12.8's economy intact rather than a prohibition on improvement.** He still buys, commissions, or loots **every item he will ever own** — the shop (Section 12.5), a commission (Section 12.8), a Gate. What changes is that a piece already in his hands is no longer finished business the moment he acquires it. Two further bounds fall out of rules this profile already carries and no new ceiling is invented for them:

- **An item's authored ceiling binds absolutely** (Section 4.4's ceiling read, and the campaign register it produces). Seamwork carries a piece **toward** its ceiling and never past it — a [C-Rank] piece whose ceiling is reached cannot be raised by him or by anyone, and a [B-Rank] piece that can reach [A] can reach [A] and stop. **Ceilings are why he still shops**: the way to a higher ceiling is a higher-Rank object, and those are bought, commissioned, or killed for.
- **Material is spent, at the Section 12.8 anchor.** Adding to a piece consumes crystals or a core of the relevant Rank exactly as commissioning does. Nothing here is free, and cores remain artificer material rather than shop goods (Section 12.5).

**And the ladder is gated on his own Seamwork Rank**, so a piece of a Rank he cannot yet read is a piece he cannot yet work.

**This is Section 13.6's Mend precedent applied unchanged.** *Learned Mend grants its heal but not the full innate-mender package.* Seamwork grants the hands and the eyes, never the standing: he is not a licensed artificer, takes no commissions, holds none of the trade's reach or reputation, and **cannot originate a piece** — which is precisely the half that requires a signature.

**Why it is native at C-Rank and not at E.** Section 18.3.1 states the rule this ladder is calibrated against: **a grant that returns nothing the Bearer already lacks is not a grant.** A technique earned under Section 7.1 route 3 is authored from the evidence that earned it, and Rank is explicitly one of the things ratification authors rather than assumes. An E-Rank entry rung reading *detect that a working is present* would be authored **below** what the qualifying evidence already shows — reading another maker's mid-process corrections unprompted, and opening a finished working without damaging the piece. **A ladder whose first two rungs are already spent is two Ranks of nothing**, and Section 7.2's ascension-eligibility rule refuses an offer that grants nothing for exactly this reason. Reading a working at all, and reading the hand that made it, are therefore folded into the native rung where the evidence puts them.

| Rank | Seamwork grants |
|---|---|
| **C** (native) | **Read and open** — a working's presence, its Rank, the maker's method and habits including the corrections they made mid-process; and a finished working **opens** under him without damaging the piece, and closes again intact. |
| **B** | **Seat** — a crystal or core is worked into a piece along its own tension points, **adding** to what it already carries, spending material and bounded by that piece's ceiling. |
| **A** | **Lift** — a working comes **out** of a piece whole rather than merely open, which is the donor half of a Section 12.10 fusion, and an opened working holds across a session instead of closing against him. |
| **S** | **Raise** — a piece is carried to its **authored ceiling** in one working, and two workings read against each other **before** anyone commits, answering in advance the uncertainty a fusion otherwise resolves on the die. |

**Native C also means the Section 12.10 assist step is live from acquisition**, which is correct rather than convenient: that step requires the rung at which a working can be opened under him, and opening is what the native rung grants.

**Mastery sells the cost of being wrong, and deliberately not the depth of the read** (Section 7.4). The Rank ladder already sells the reading — the native rung returns the maker's corrections — and **no mastery level withholds what a Rank rung has granted**, which is the trap an earlier draft of this section fell into by authoring a resolution axis that started below its own native rung.

What mastery buys is **`Hand`**: at **Novice** a failed working spends its material and closes the piece to him for the rest of the scene; each level softens that, and at **Master** a failure spends nothing and returns *why* it failed, which is itself a read. It is self-facing, it pays in full to a Bearer working alone, and it never touches what the piece becomes — the 1.83 test every axis in this profile now has to meet.

A working that changes a piece is an uncertain action resolved on the die like any other, at the Section 12.10 step vocabulary. **`Hand` never reaches a Section 12.10 fusion**: that roll belongs to the artificer performing it and its donor is consumed at every outcome regardless of who is assisting.

**Capability-axis category ladders.** A modifier-step skill whose authored effect carries no scope count gains no subject from Rank (*Inert until scope exists*, Section 7.2) and, where its effect is instantaneous, no duration either. Rank reaches such a skill through the category alone, so the category must be authored for the skill to be ascension-eligible at all under Section 7.2. Columns are stated relative to each skill's own native Rank, which differs between them.

| Skill | Native effect | D | C | B | A | S |
|---|---|---|---|---|---|---|
| **Sprint** *(native E-Rank)* | +1 modifier step on movement, pursuit, and distance-closing actions | **Broken ground** *(D)* — the step holds across footing that would otherwise demand its own check: rubble, ice, slick or shifting surfaces, moving debris | **Vertical** *(C)* — vertical and overhanging surfaces count as ground while the effect holds; he crosses a wall or a girder as though it were floor | **Over the gap** *(B)* — a short unsupported span (open air, a stretch of open water) counts as ground for the duration, closing what would otherwise be a fall or a swim | **Unbroken** *(A)* — the effect no longer ends at an obstacle, a fall, or a change of medium: rubble, open air, water and collapsing ground resolve as one continuous line of movement until the duration lapses | **`No ground needed`** *(S)* — the effect no longer requires a surface at all: open air resolves as ground for its duration, so nothing in the terrain interrupts a line of movement |
| **Flash Step** *(native D-Rank)* | Close or break line-of-sight distance instantly once, granting +1 modifier step to the follow-up action | *native Rank — no grant above native* | **Through the barrier** *(C)* — the step crosses a closed **constructed** barrier rather than only open distance: a door, shutter, partition, hatch, or fence he could pass if it stood open. He must already hold a read of the far side — a prior look, a resolved Keen Sense, or a Pattern relayed by an ally — or the step is blind and resolves as an uncertain action under Rules Section 4. It never crosses a Gate boundary, a Section 9.6 seal, or a Section 17 instance wall: those are the edges of a space, not obstacles within one | **Through the ward** *(B)* — the step crosses a closed **ward or barrier-effect**, on the same terms as the constructed case above: a prior read of the far side is required or the step is blind, and it never crosses a Gate boundary, a Section 9.6 seal, or a Section 17 instance wall regardless of Rank | **`Interpose`** *(A)* — the step may be taken as a **reaction**, placing him between a resolving attack and another person within his reach; he becomes its target and the attack resolves against him. Once per exchange, and it consumes his reaction. **It grants no reduction and no defence** — it moves who is hit, never how hard. Replaced the former `Blind step` at 1.96 (`F-049`): a category that let this skill cross to *a place he has not perceived* was the one grant making it indistinguishable from a Riftwalker's travel, and Section 18.8 is where crossing to somewhere unseen belongs. It still never crosses a Gate boundary, a Section 9.6 seal, or a Section 17 instance wall | **`Twice`** *(S)* — the step may be taken a second time within the same exchange, each resolving its own follow-up window and each paid separately, so Mana stays mastery's axis. It still never crosses a Gate boundary, a Section 9.6 seal, or a Section 17 instance wall |

As above, this table authors rungs and does not record which are occupied — the 1.51 text asserted Flash Step stood at native D-Rank, which had not been true since `EVT-000220`.

**Columns are absolute Ranks, not offsets from native.** Through 1.52 they read *First / Second / Third Rank above native*, which put two skills' A-Rank rungs in two different columns — Sprint is native E so its A is the fourth step, Flash Step is native D so its A is the third — and made the deferred rung look like a property of the column rather than of the Rank. A native-D skill simply has no grant in the D column, and the cell says so.

**Magnitude-axis category ladders.** The two tables above cover the skills Rank reaches through scope or through capability. Everything else in the profile's mastery-tracked set reaches Rank through **magnitude** — a Rank baseline, a reduction fraction, or a granted multiplier — and through 1.51 none of them appeared in any table at all. That was defensible for damage and healing, where Section 7.2's baseline table multiplies output by ~2.5 a step. It was not defensible for the rest: a **thin** grant (below 1.15×, Section 7.2) leaves ascension technically favourable and practically invisible, and an **absent** one leaves the skill permanently ineligible. Dagger Mastery had ascended twice and gained nothing but a number; Twin Fang stood at Master, below the ceiling, and could not ascend at all. Both are closed here.

Every mastery-tracked skill in neither table above has a row. A row reading *magnitude only* is a stated design position with its ratio attached, not a gap — and 1.56 is the demonstration that such a row is a **claim which can expire**: folding Intelligence into Mana-skill damage flattened Rupture's and Mana Bolt's Rank ratios, so both left that state and took authored categories, while Mend kept it because healing was deliberately excluded from the change — the distinction Section 7.2's *withheld offer is recorded, never silent* rule exists to preserve.

| Skill | Native | Rank's magnitude grant | D | C | B | A | S |
|---|---|---|---|---|---|---|---|
| **Dagger Mastery** | E-Rank | +0.25 chassis — **thin** (1.17× / 1.09× / 1.06× / 1.05×) | **Any blade** *(D)* — the chassis bonus applies to any bladed close-quarters weapon he wields, not only a Quickknife chassis: a knife, a dagger, a shortsword, or a found edge used as one | **Thrown** *(C)* — the bonus follows the blade out of his hand; a thrown blade resolves on its own chassis rather than as an improvised throw | **Blind edge** *(B)* — the bonus holds when the strike is made without sight of the target, whether from darkness, an active concealment, or an attacker behind him, where an ordinary blade strike takes that condition's penalty | **Unbroken edge** *(A)* — the blade cannot be taken from him or destroyed by a resolved action: it does not chip, dull, shatter, or leave his grip on a disarm, a sunder, or a failure | **`Any edge`** *(S)* — the chassis bonus applies at full value to every weapon he wields, bladed or not, so nothing he picks up is worse in his hands than a blade |
| **Stone Skin** | D-Rank | +25 points reduction — **thin** (1.10× / 1.07× / 1.00×, the last held flat by the Section 7.2 90% cap) | *native Rank — no grant above native* | **Impact spread** *(C)* — the reduction answers an environmental or hazard source, not only a creature's blow | **Shared skin** *(B)* — one ally in physical contact with him shares the reduction while it is sustained; the Mana cost is unchanged and the sustain ends for both at once | **Against the unphysical** *(A)* — the reduction answers non-physical harm as well — mana burn, hazard, and effect damage — where it has been physical-only at every Rank below | **`Carried`** *(S)* — the reduction persists for one further exchange after the sustain drops, so a lapse in Mana no longer ends it in the exchange it lapses |
| **Bulwark** | E-Rank | +25 points reduction — **thin** (1.06× / 1.00× / 1.00× / 1.00×); the Section 7.2 90% cap first binds at **D-Rank Master** (60 + 25 + 20 = 105) and holds every level from C-Rank up, so only the E→D step gains magnitude at all | **Anticipated** *(D)* — may be raised in reaction to a blow already declared, not only before the exchange opens | **Covering** *(C)* — the exchange's reduction extends to one adjacent ally as well as himself | **At the cap** *(B)* — the reduction is capped, so Section 7.2's cap rule governs: each further Rank grants **one further exchange of duration** instead | **Covering the line** *(A)* — the exchange’s reduction extends to **every** ally within reach rather than one | **`Braced elsewhere`** *(S)* — the exchange's reduction may be placed on one ally he perceives at any distance instead of on himself, and that ally need not perceive him |
| **Twin Fang** | E-Rank | **+0.35** to its follow-up multiplier per Rank (1.54; its strikes read weapon power, so a Rank baseline could not reach it and mastery owned the whole multiplier) | **Second target** *(D)* — the skill-enabled strike may be directed at a second target within reach of the same action rather than only the target of the opening strike | **Through the answer** *(C)* — the skill-enabled strike resolves against a target that has already reacted, blocked, or committed this exchange, where an ordinary follow-up would be denied the opening | **Continuation** *(B)* — if the skill-enabled strike kills, the technique does not close: it resolves once more in the same action against one further target within reach. **Once per scene** | **Answer** *(A)* — the technique may be spent as a **reaction** to an opponent’s committed attack rather than only on his own action; it remains one activation and one Mana payment | **`Third fang`** *(S)* — where both strikes land, a third separately-rolled strike resolves in the same action. It remains one activation and one Mana payment |
| **Broken Rhythm** | E-Rank | **none** — a passive modifier step, already at the Section 4.3 cap; its dividend is `Tempo` (Section 7.4) | **`Cold read`** *(D)* — the step applies from the **first exchange** against an attacker whose cadence he has not observed, rather than requiring a read to be established first | **`Shared cadence`** *(C)* — beneficiaries need not perceive him, the read carrying to anyone already on a Field Command relay | **Cadence break** *(B)* — he breaks the cadence rather than only answering it: an opponent whose tell he holds cannot open against him with a telegraphed action at all, and must commit to something else | **Broken formation** *(A)* — he breaks the cadence of a **coordinated group** as one: a crew or pack cannot open on him in concert, and their timing falls apart into separate, individually-read actions | **`Read the unliving`** *(S)* — the read holds against what has no cadence to read: a construct, a mechanism, or an environmental hazard running on a timing rather than an intent |
| **Rupture** | E-Rank | ×2.5 per Rank on the baseline table, **now thin** — and its 5 m band is flat at every Rank by design (1.57), so range is not a second axis; — folding effective Intelligence into the magnitude (1.56, Section 6.2) flattens the ratio, and above Intelligence 105 the breakthrough road inverts outright | **Compound** *(D)* — the wound reopens, taking effect again at the end of the next exchange | **Structural** *(C)* — it may be aimed at an object, wall, or mechanism and ruptures it as it would a body | **Ward-breaking** *(B)* — it ruptures a mana barrier or ward as though that ward were physical structure | **Propagating** *(A)* — the rupture carries to one further target in contact with, or immediately behind, the first | **`Unmaking`** *(S)* — the strike ignores worn physical reduction entirely |
| **Mend** | E-Rank | ×2.5 per Rank on the baseline table — **dominant at 1.56×**, and it stays dominant because healing does not read Intelligence (Section 6.2) | *Magnitude only, by design* | *Magnitude only* | *Magnitude only* | *Magnitude only* | *Magnitude only* |
| **Mana Bolt** | E-Rank | ×2.5 per Rank on the baseline table, **now thin** — distance is unlimited from native Rank (1.57), so this ladder relaxes the **sense** required rather than the reach; — with Intelligence folded in (1.56) its E→D step returns **nothing at all** on either road, which is why it is no longer magnitude-only | **Arcing** *(D)* — the bolt bends around intervening cover; a known position suffices where a clear line was required | **Detonating** *(C)* — it bursts on impact, reaching what is in immediate contact with the target rather than the target alone | **Ward-piercing** *(B)* — it passes a mana barrier that stops an ordinary bolt | **Homing** *(A)* — once released it corrects to a target that breaks line of sight, so long as he still perceives it by any means | **`Split`** *(S)* — the bolt divides and resolves against every target he perceives along one line, each on its own roll. It never crosses a Gate boundary, a Section 9.6 seal, or a Section 17 instance wall |
| **Dimensional Projection** | E-Rank | **+1 projectile** per Rank, and **+3 m** to both ends of its range band (1.70; the same weapon-power case as Twin Fang, so a Rank baseline cannot reach its damage — count is what Rank moves instead) | **Recall** *(D)* — the launched weapon returns to his hand at the action's end rather than landing and waiting to be recovered, **without spending the exchange's one inventory change** (Section 12.9). At native Rank he may launch or recover in an exchange, never both; at D he does both in one action and keeps the change for a swap besides | **Blind placement** *(C)* — the deployment point requires a **held read** rather than an unobstructed line of sight: a prior look, a resolved Keen Sense, or a relayed Pattern | **Past the wall** *(B)* — the point may sit beyond a barrier the weapon could not be thrown through, on the same held-read terms; it still never crosses a Gate boundary, a Section 9.6 seal, or a Section 17 instance wall | **Recall in flight** *(A)* — the weapon may be recalled mid-flight and re-launched at a **second** target within the same action, resolving a separate strike | **`Volley`** *(S)* — every projectile may be recalled in flight and re-launched within the same action, so the action resolves twice over its whole count |


**Broken Rhythm's D and C rungs are ratified here, not invented (1.83).** The live campaign has rendered **`Cold read`** and **`Shared cadence`** since its rune ascension, and this profile authored *Unseen cadence* and *Read the room* — two pairs of categories, neither aware of the other, and the Bearer holding the pair that was never written down. **Ratified under Section 7.1 by owner ruling** rather than allowed to stand by survival: `EVT-000590` withdrew improvised rungs of exactly this class three days earlier, and the difference between that withdrawal and this ratification is that one was chosen. *Unseen cadence* and *Read the room* are struck; nothing the Bearer holds is withdrawn.

Three constraints bind every rung above. **No rung adds a modifier step** — Section 4.3's cap of +1 is untouched, and where a category widens *who* or *what* a step reaches, the step itself is the same one. **No rung changes a Mana cost**, which stays mastery's axis alone (Section 7.2). **The quantitative grant is unchanged and still applies in full** — a category is added beside the number, never in place of it, so no ascension returns less than it did under 1.51.

**Twin Fang's and Broken Rhythm's D rungs are what make those skills ascendable at all.** Before them, a Rank step for either cost mastery levels and returned nothing, so Section 7.2 withheld the offer correctly and permanently — a skill could be carried to Master through twelve qualifying scenes and then be finished. That is not a deferral the way an unauthored A-Rank is; nothing was ever going to author it, because the profile had no table it belonged in.

**A-Rank is authored at 1.53, S-Rank at 1.81, and they were never the same question.**

Through 1.52 both were deferred together on one argument: every named S-Rank hunter in this world's canon — Tereza Blažková's Vltava, Reid Calloway's Overrun, Dominic Crane's Meridian — carries one unique, singular signature technique rather than a templated continuation of a starter skill's ladder (`worlds/gatefall/220_NOTABLE_FIGURES.md`), so authoring an A- or S-Rank rung by the same pattern used for D/C/B risked contradicting established fact.

**Examined at the owner ruling that authored A-Rank, that argument turns out to conflate two things this profile deliberately keeps apart.** A **signature** is innate, one per awakening, fixed for life, and authored per NPC under Section 13.6 — and Section 13.6 gives one to *every named NPC hunter of D-Rank or above*, not only to S-Ranks: Naomi Okafor is C-Rank and carries **Still Room**. A **ladder rung** is what a *learned* technique gains from Rank, and Section 13.6 states in its own words that runes and skill books "add **learned** techniques on top" of a signature. The two are different categories that already coexist at every Rank from D upward — including C-Rank, where this profile has authored ladder rungs since 1.6 and no one has ever suggested they contradict Naomi's signature. Nothing about authoring an A-Rank rung for a learned skill says anything about what any S-Rank's signature is.

**A-Rank is therefore authored in all three tables above**, on the same terms as every rung below it: a category and nothing else, no modifier step, no Mana change, and no magnitude the skill did not already have. It becomes reachable at System Rank B, which is level 30 (Section 6.6, Section 7.5's ceiling).

**S-Rank is authored at 1.81, and the reason it waited is worth keeping.** It was never the signature argument, which is answered above. It is that S-Rank is the top of the ladder and the point at which a *learned* technique stands level with the singular gifts the world's whole hunter politics is built on — six named individuals, counted by name, pre-positioned as strategic assets (Section 9). Whether a starting skill reaches that at all is a question about the world's power ceiling rather than about a category ladder, so it was left to an owner ruling at the checkpoint where it first mattered. **That checkpoint arrived.** The Bearer reached System Rank A, four skills stood at Master beneath a ceiling that had just moved to S, and two of them — Keen Sense and Exploit Pattern — held offers the Runtime could not make because no rung existed to grant, while Rupture's `Unmaking` had already been ruled in play. **The owner ruling is that a learned technique does reach S**, and the answer to the power-ceiling question is that it does not thereby become a signature: a signature is innate, singular, one per awakening, and authored per NPC under Section 13.6, and no quantity of ladder rungs produces one. What an S rung grants is what every rung below it grants — a category, and nothing else. **One limit does not move, and it is the one the ladder pressed hardest against.** For Keen Sense, Flash Step, Mana Bolt and Dimensional Projection the obvious S rung was crossing a Gate boundary, a Section 9.6 seal, or a Section 17 instance wall, and the Runtime improvised exactly that for Keen Sense before the authoring was checked. **It is refused.** Those are the edges of a space rather than obstacles within one, the clause is load-bearing in six places, and a rung that dissolves it would let a Bearer reach into an instance he has not entered. The four skills take rungs that do not touch it, and each of the three whose wording could be read as reaching it restates the limit in its own cell rather than relying on the reader to remember it.

## 7.4 Skill Mastery

An ordinary skill is not fixed the day it is learned — it **grows in the Bearer's hands with use.** Every mastery-tracked skill is held at a **mastery level, 1 through 5** — Novice, Practiced, Adept, Expert, Master — starting at **Novice** when acquired. This is the Bearer's **second growth axis beside stats**: a much-used skill becomes formidable even at a low rank, the way a hunter's signature deepens over a career. Section 4.4 Stat Passives are the explicit exception: they grow from base-Stat thresholds and have no mastery level.

**Advancing.** A skill rises **one mastery level** after it has materially contributed to **three distinct skill-appropriate qualifying scenes at its current level** under Section 7.1. A combat skill requires a genuinely **contested** contribution, defined immediately below. A non-combat skill may qualify through consequential work or structured practice whose objective, uncertainty or informative resistance, and material result actually exercise that skill. A mixed-use utility qualifies only in a scene where its authored effect materially matters. Trivial repetition does not count, and the three scenes must be materially distinct. Reaching Master therefore takes twelve qualifying scenes across a skill's life. The System advances mastery automatically on the third qualifying scene and fires a Tier-1 window titled `◈  S K I L L   M A S T E R Y`, carrying the skill on its first row and one `Mastery` row — *Mana Bolt · Novice → Adept*.

**A combat skill's qualifying test is contest, not danger (1.92).** Through 1.91 this read *"a combat skill requires genuine dangerous-scene contributions,"* and every settlement in the record applied it literally — `EVT-000527`, `EVT-000560`, `EVT-000574`, `EVT-000599`, `EVT-000667` and `EVT-000676` all classify no credit on the same finding, *nothing acted against him and nothing was rolled against him*. **Those rulings were correct, remain correct under the text below, and none is re-settled.** What changed is the standard's name for the property it was always measuring.

> **A combat skill qualifies in a scene where something could have made it fail at a cost** — an opposed resolution against an opponent capable of beating him, in which a bad result takes something from him. **Danger is the ordinary form that takes. It is not the definition.**

**Why the old wording had a ceiling built into it.** A campaign's whole direction of travel is toward being in less danger — that is what growth *is* — so an axis gated on danger prices itself out of exactly the campaign that succeeds at it. `F-046` reached that ceiling from the far side: at System Rank A with Rupture outdamaging an A-Rank boss's pool, the Bearer had no reachable content that could hurt him, and the world's supply could not manufacture any, because Section 9.2's Rank distribution composed against Section 9.1's trade-takes-the-job rates leaves a freelancer a **B-Rank ceiling** on anything the board will still be holding when he gets there. The track stalled not because he stopped working but because he stopped being in danger, which was the goal.

**And a combat skill was the only growth axis with no route through practice.** The paragraph above has always let a non-combat skill qualify through *structured practice whose objective, uncertainty or informative resistance, and material result actually exercise that skill* — so Seamwork and Resonance Extraction grow whether or not anything is trying to kill him, while his blade did not. **Gatefall authored no way for a hunter to train**, which is the one thing every hunter in this world visibly does.

**What contest requires, and it is not softer than danger.** Three conditions, all of them the profile's existing vocabulary, and all three must hold:

- **An opponent who could beat him** — something resolving at a Rank or standing that can actually take the exchange. A Section 13.1 hunter at or near his own weight qualifies; a beast he deletes before it acts does not.
- **A real resolution against him** — the die is rolled against the skill and can come back badly. A demonstration nobody contests is not a contest.
- **A cost on failure** — something he loses: the match, the standing, the reading he wanted, the person he was trying not to hurt. It need not be his life.

**What this opens, and the mechanism is already authored.** Section 6.2.1's pulled strike was written at 1.87 for arrest and restraint (`F-042`) and makes fully contested non-lethal combat resolvable without moving a single number: the die still decides, the result band and reductions still apply, and a target reduced to 0 by pulled damage alone is incapacitated rather than killed. **Sparring, exhibition bouts, guild trials, arrests, and duels are therefore ordinary qualifying scenes** wherever the three conditions hold. Section 6.2.1's own clause that a pulled strike *"settles no counter differently"* was written for exactly this and now has somewhere to point.

**What still does not qualify, which is most of what raised the flag.** A cleared instant dungeon beneath his tier, a beast that dies before it resolves, a demonstration against something that cannot answer, a partner who cannot pressure him, and repetition against an opponent already beaten are all **uncontested** and credit nothing — exactly as the six settlements above found. The test has not been lowered. It has been asked about the right property.

**Use counters.** Every skill records `successful_uses`, a lifetime total that never resets. A successful activation or application adds one; a failed or missed use adds none. One activation counts once even when it affects several targets. A sustained skill counts once when activated, not once per exchange. A passive skill counts once per resolved action in which its effect materially applies. Several successful applications in one qualifying scene each add to `successful_uses`, while that scene contributes at most one mastery point for that skill. A successful trivial or consequence-free test adds a use but no qualifying scene.

**Promotion reconciliation.** Before a checkpoint or session-close promotion writes, re-count every known combat skill activation and material passive application in the unpromoted span from its resolved action record and resource trace. Reconcile those facts against the skill's in-flight `successful_uses`, `qualifying_scenes_total`, mastery progress, and required Event `counter_deltas`. Repair a missed or duplicate count before validation. This is limited to play since the prior successful promotion barrier; it never scans older chronicles or immutable checkpoints.

Mastery-tracked skills also record `qualifying_scenes_total`, which never resets, and `mastery_progress`, the exact count from 0 to 2 toward the next level. On the third qualifying scene the mastery level advances and current progress resets to 0; at Master it renders complete. Stat Passives from Section 4.4 have no mastery track, but their successful material applications still increment `successful_uses`.

**A skill at Master still earns its scenes, and they are still written.** `mastery_progress` renders *complete* at Master and cannot advance, but `qualifying_scenes_total` and `successful_uses` are lifetime counts that never reset, and a Master-level skill that materially contributed to a qualifying scene increments both exactly as any other skill does. **The delta is written even though no rendered value moves.** This is not bookkeeping for its own sake: ascension returns the skill at Adept with a live `mastery_progress` again (Section 7.5), and scenes credited while it stood at Master are the record from which the fresh track is reconciled. A settlement that drops the delta because it would move nothing visible destroys the evidence its own next ascension needs.

That omission is **self-reinforcing, which is why it is stated as law rather than left to judgment.** A skill pinned at Master shows progress as complete, so crediting it looks like a no-op; the uncredited scenes then hold it at Master; and a suppressed Section 7.5 offer holds it there permanently. Every arithmetic gate stays green throughout, because a delta that is never claimed can never disagree with a stored value. The cheapest moment to catch it is exactly the moment the system makes it look as though nothing is happening. Recorded as `F-012`; ruled at Decision 090.

Under Data Model 0.1.5, the Bearer's structured `tracked_counters` entries are the authoritative numeric storage for these values. The prose skill lines and `/system skills` panel are renderings of `current_value`, not independent counters. Every post-baseline change is written both as the causing Event's `counter_deltas` and the matching `current_value` update; repository validation rejects arithmetic drift.

**What each level above Novice improves** — two axes, both closed-form:

- **Magnitude**, by one Rank of the skill's own effect per level:
  - a **damage or healing** skill's multiplier rises **+0.15** (Mana Bolt ×1.0 at Novice → **×1.6 at Master**; E-Rank Mend 10 → 16 before focus at Master);
  - a **reduction** skill's fraction rises **+5 points** (Stone Skin 30% → **50% at Master**);
  - a **passive multiplier** skill's granted multiplier rises **+0.05** (Dagger Mastery, native E-Rank: **+0.10** at Novice → **+0.30 at Master**), so a full track adds +0.20 — the figure Section 7.2's Rank comparison already assumes;
  - a **modifier-step or utility** skill — already capped at +1 step (Section 4.3) — instead **lengthens**, its effect covering one further exchange per level and reaching the **whole scene at Master**, or widening to one stated additional target. A skill whose authored effect **already covers the whole scene at Novice** has no duration left to gain; its mastery track instead widens **scope**, adding one further affected subject or ally per level — **1 / 2 / 3 / 4 / 5** beneficiaries from Novice through Master, on the pattern already used by Exploit Pattern, Field Command, and Resonance Extraction. This ladder is **mastery's** contribution to the count. Rank adds its own further subject and its category grant per Rank under Section 7.2, and the two contributions **add** rather than substitute; the Section 7.2 ratchet keeps the total from falling on ascension. **Mastery never shortens an authored effect.** Where this ladder and a skill's authored Section 7.3 entry disagree, the authored entry governs.
- **Mana cost**, **−10% per level** (rounded, minimum 1): a 5-cost skill runs 5 → **3 at Master**; passive skills stay 0.

**Every mastery-tracked skill names its axis, and the table is the check.** The ladders above are closed-form and were treated as self-applying, so no list was kept of which skill used which. Broken Rhythm fell through all of them at once — a permanent passive at the Section 4.3 step cap has no multiplier, no reduction, no duration to lengthen, no authored scope count, and Mana 0 — and it had climbed to a live mastery level while granting **nothing at any level**. Nothing detected that, because a closed-form rule with no coverage list cannot report a skill it does not cover. Section 7.3's Rank tables gained a row per skill for exactly this reason at 1.52; this is the same treatment on the mastery axis.

| Skill | Mastery axis | Novice → Master | Dividend (1.83) |
|---|---|---|---|
| **Rupture** | Damage multiplier | ×2.00 → ×2.60 (+0.15/level) | clause 1 — the floor ratchets +0.15 a level |
| **Mend** | Healing multiplier | ×1.00 → ×1.60 (+0.15/level) | none needed — never ascended, the band pays in full |
| **Mana Bolt** | Damage multiplier | ×1.00 → ×1.60 (+0.15/level) | clause 1, on the same terms as Rupture |
| **Twin Fang** | Damage multiplier (follow-up only) | +0.15/level over a base of `1.00 + 0.35 × ranks above native`; the opening strike never carries it | none needed — its band is authored per Rank |
| **Stone Skin** | Reduction | 30% → 50% (+5 points/level) | magnitude to the 90% cap, then duration |
| **Bulwark** | Reduction | 60% → 80% (+5 points/level), bounded by the Section 7.2 90% cap | duration, capped from C-Rank up |
| **Dagger Mastery** | Passive multiplier | +0.10 → +0.30 chassis (+0.05/level) | none needed — +0.05 a level is thin but live |
| **Sprint** | Duration | 1 exchange → whole scene (+1 exchange/level) | `Control` |
| **Flash Step** | Duration | follow-up window 1 exchange → whole scene (+1 exchange/level) | `Arrival` |
| **Keen Sense** | Scope — beneficiaries | 1 → 5 (scene-long at every level; no duration to gain) | `Resolution` |
| **Silent Step** | Scope — beneficiaries | 1 → 5 (scene-long at every level) | `Composure` |
| **Exploit Pattern** | Scope — concurrent Patterns | 1 → 5 | none needed — its count is his own reads |
| **Field Command** | Scope — simultaneous recipients | 1 → 5 | `Conduction` |
| **Resonance Extraction** | Scope — additional miners | 0 → 4 | `Yield` |
| **Broken Rhythm** | Scope — beneficiaries | 1 → 5 (**authored at 1.52**; it had no axis at all before) | `Tempo` |
| **Dimensional Projection** | Scope — projectiles per action | 1 → 3 (1/2/2/3/3), each its own resolution, splittable across targets; range rises alongside, 5 m → 20 m | none needed — projectiles and range are his own |
| **Seamwork** | `Hand` — the cost of being wrong | a failed working spends its material and closes the piece to him for the scene → a failure spends nothing and returns why it failed | none needed — self-facing, and it pays in full to a Bearer working alone |

A Section 4.4 **Stat Passive** appears in no row by design: it has no mastery track, grows from base-Stat thresholds alone, and stores neither `mastery_level` nor `mastery_progress` (Section 7.2's Stat Passive exemption).

**The mastery dividend, and the three ways a level was returning nothing (1.83).** A mastery level costs **three qualifying scenes**, and this section has twice been amended because a level was buying nothing — `F-014` when Broken Rhythm had no axis at all, and 1.52 when the axis table was added so no skill's levelling would be undocumented again. **Both fixes gave every skill an axis and neither asked whether the axis could pay.** Measured on the live campaign at System Rank A, **nine of sixteen skills had a mastery track that returned nothing**, by three separate routes:

- **A magnitude pinned by its own floor.** A **Rank-baseline** skill's multiplier band is *identical at every Rank* — Rank moves the baseline, not the band — so `magnitude_floor` lands equal to the new Rank's **Master** value and every level up to Master authors a number already in force. Rupture at [S-Rank] Adept authors ×2.30 under a floor of ×2.60; six qualifying scenes return it to exactly ×2.60.
- **A duration already saturated.** Section 7.2 saturates duration at one Rank above native, so a skill whose mastery axis *is* duration stops responding the moment it ascends once.
- **A count of other people.** Five skills' mastery axis counted allies, beneficiaries, recipients or miners. A Bearer who clears content alone held **twenty-two such slots and filled none of them** — and paid three qualifying scenes for each.

**The rule:**

> **A mastery level must return something to the Bearer, in the play he is actually in.** Where its authored axis cannot, the level pays on the first axis below that can.

**1. A binding floor ratchets with mastery.** While `magnitude_floor` binds — wherever the authored value at the current mastery level is at or below the floor — **a mastery advance raises the floor by that skill's own per-level increment**: +0.15 to a multiplier, +5 points to a reduction, +0.05 to a granted multiplier. Written as a `counter_deltas` change on the advancing Event like every other counter. **The floor becomes a floor rather than a ceiling**, which is what this profile has always called it.

**2. A saturated duration is not a mastery axis, and this is applied consistently.** Where saturation has already carried a skill to whole-scene, its levels pay clause 3 or 4 instead and its row below names which. Two skills on one axis rendering differently is how this went unseen for sixty checkpoints.

**3. A shared count belongs to Rank, not to mastery.** Every count of *other people* — Keen Sense's subjects, Silent Step's and Broken Rhythm's beneficiaries, Field Command's recipients, Resonance Extraction's miners — grows on **Rank alone**, one further subject per Rank above native and **double at S-Rank**:

| | E | D | C | B | A | S |
|---|---|---|---|---|---|---|
| **Further subjects, per Rank above native** | +0 | +1 | +2 | +3 | +4 | **+8** |

**Nothing is removed and no one loses reach**: sharing survives wherever it exists today, it simply stops costing a mastery level, and retention holds every count already reached. The mastery level buys the skill's authored **dividend** instead — a self-facing ladder of five rungs that pays the Bearer whether or not anyone is standing beside him.

**Exploit Pattern is outside this clause and stays as it is.** Its count is **concurrent Patterns** — his own reads, not people — and it already pays him in full alone. Moving it to Rank would cap growth that works, which is a loss wearing a fix.

**4. Where none of the above applies, the level pays Mana**, on the standing −10% rule. A row that reaches this clause and names nothing is not finished.

**The dividends are authored per skill, they are exactly five rungs each, and no skill gets a longer ladder than another.** They obey the same division of labour the Rank ladders do:

> **Rank sells what a skill can reach. Mastery sells how well it resolves.** A dividend rung naming a new *kind* of subject, condition or reach is a Rank category filed in the wrong table.

| Skill | Dividend | Novice · Practiced · Adept · Expert · Master |
|---|---|---|
| **Keen Sense** | `Resolution` — how the read comes back | Direction · Number and distance · Discrimination, so a decoy reads as a decoy · Live, updating through the scene rather than a snapshot at cast · Confidence, separating what the read established from what it inferred so *nothing detected* never renders as *nothing there* |
| **Silent Step** | `Composure` — how the concealment behaves under pressure | Re-establishes at the start of his next action · A break gives direction only, never position · Holds at full movement · Holds under load · No set-up; up the instant he wants it, mid-action |
| **Broken Rhythm** | `Tempo` — how much of the exchange he gets back | Reacting to a read attack does not spend his reaction · One further reaction each exchange against a read attacker · The reaction may be **any** skill he could use as one, not only evasion · A reaction against a read attack that misses is not spent · No limit on reactions against telegraphed actions he has read |
| **Resonance Extraction** | `Yield` — what the extraction gets out | More from the same deposit · The same yield in less time · No fragment loss on a partial success · A marginal deposit resolves one grade better than its face · He works a vein past where another miner would call it spent |
| **Sprint** | `Control` — how the movement performs | Full speed from stationary · Direction changes cost nothing · Halts without overshoot or a check · Holds under a load that would slow him · A scene of it leaves no fatigue |
| **Flash Step** | `Arrival` — the quality of the landing | Arrives facing any direction · Arrives carrying his speed · Silent, displacing no air · Lands exactly where intended · The follow-up step applies even when the arrival is contested |
| **Field Command** | `Conduction` — which of his own effects he can push onto allies | A sustained modifier step · A sustained reduction · A passive he carries · A window rather than a state · Two of them on one call |

**`Conduction` is bounded**: recipients are Field Command's own Rank-derived count, it costs no additional Mana, it ends when his own effect does, and **it never shares a skill that carries its own scope count** — those share themselves. Field Command remains the profile's one skill whose whole purpose is other people, and it is the only place sharing is bought.

**A dividend rung, once earned, is permanent.** `dividend_level` is a monotonic `tracked_counters` entry: ascension resets `mastery_level` and does not touch it, on either road. This is retention (Section 7.2), not a ratchet — a dividend has no way to fall and is therefore given no floor.


**A skill added to this profile joins this table or it is not finished.** A mastery-tracked skill with no row has no authored answer to what levelling it does, and the Bearer pays three qualifying scenes a level to find out — which is the transaction Broken Rhythm ran twelve times over for nothing.

**Rendering.** The focused `/system skills` panel (Section 15.3.1) carries mastery in its own column — the five-cell star string followed by its level name — with the Mana cost under `MANA` and qualifying-scene progress under `NEXT` as `<n> / 3`. Cumulative successful-use counts are canonical but reached through `/system skills <name>`, not the panel's columns. A Stat Passive renders in its own `STAT PASSIVE` group, carrying its driving Stat, that Stat's current value, its use count, and the next rung's threshold; it has no stars and no mastery progress. Every displayed Rank is derived from Section 4.4, renders bracketed as `[<Rank>]`, and is never independently stored.

Mastery raises a skill's power directly; it raises the skill's **Rank** only by carrying it to Master and opening the breakthrough route of Section 7.5. A mastered E-Rank Mana Bolt is still an E-Rank skill until it ascends — just a lethal one. Rank reflects the tier the technique is inscribed at; mastery reflects the hands that carry it. The two are separate axes that feed each other.

## 7.5 Skill Rank Ascension

A skill's Rank is **not fixed at acquisition.** A technique learned at E-Rank is the beginning of that technique's life, not its ceiling.

**The ceiling.** A skill's Rank may never exceed the **Bearer's System Rank + 1** (Section 6.6), capped at S-Rank. At System Rank D the ceiling is C-Rank. The ceiling binds **acquisition and ascension alike**: instruction teaching above it does not consume and waits intact (Section 7.1). Because both routes share one ceiling, delaying acquisition to catch a higher-Rank rune later gains nothing.

**Stat Passives are outside this section.** Their Rank is derived from base Stat under Section 4.4 and merely uses this section's ceiling. They have no breakthrough or rune-ascension route and no `rank_ascensions` counter.

**Two routes, and only these:**

| Route | Trigger | Mastery cost | Rank gained |
|---|---|---|---|
| **Breakthrough** — the earned road | A known skill reaches **Master** while below the ceiling | Falls to **Adept**, keeping three of five levels; `mastery_progress` resets to 0 | **+1 Rank** |
| **Rune ascension** — the bought road | Consume instruction teaching a **known** technique above its current Rank, within the ceiling | Resets to **Novice**; `mastery_progress` resets to 0 | Rises to the item's `teaching_rank`, however many Ranks that spans |

**The earned road is the better road, and this is deliberate.** Breakthrough demands the full twelve qualifying scenes of a mastery track and returns the skill at Adept; rune ascension demands only gold or luck and returns it at Novice. At the same Rank the breakthrough result is stronger — for Rupture, ×2.30 against ×2.00 — because the hands that carried a technique to Master do not wholly forget it when the technique widens. What the rune buys instead is **speed and reach**: it works at any mastery level with no prerequisite climb, it can cross several Ranks in one consumption, and it does not require the skill to be anywhere near Master. Gold buys the Rank now; play buys the Rank better. Neither road is strictly superior, and a skill may alternate between them across its life.

A skill sitting at Novice loses nothing to rune ascension because it has nothing to lose. That is correct: the gold was the price, and there was no earned investment to surrender.

**Rune ascension is offered too.** Consuming instruction for a technique the Bearer already knows presents the same before-and-after comparison as a breakthrough offer, and the item **is not consumed unless the offer is accepted**; a declined rune remains intact and owned. Under the Section 7.2 Rank Dominance Law every trade this profile offers is a net gain — a Rank that would grant nothing is not offered at all, because Section 7.2's eligibility rule withholds it — a D-Rank Master Stone Skin at 50% lands at 55% as a C-Rank Novice, and a scope skill gains its new category while the ratchet holds its count at the pre-ascension floor — so the offer is not a trap warning but a disclosure: mastery levels are real, hard-won, and about to be spent, and the Bearer is entitled to see the exact before-and-after on every axis before that happens. He may prefer to hold a Master-level skill and breakthrough it later on the earned road instead.

The full ordering, which holds for every skill this profile makes ascension-eligible, is therefore:

`Rank N Master  ≤  Rank N+1 Novice (rune)  <  Rank N+1 Adept (breakthrough)`

**The first relation is `≤` and the second is `<`, and the difference is load-bearing.** Through 1.53 both read `<`, which was false in two places and had never been checked: at the Section 7.2 **90% reduction cap** a higher-Rank Novice equals the lower-Rank Master exactly, and for **Twin Fang** it was *worse* by 37.5%. What holds the ordering is not one number rising every time — it is that **no axis ever falls** (the scope and magnitude ratchets) while **at least one thing is gained** (an authored category, a further exchange of duration at the cap, or a larger number). A rune landing on an equal magnitude plus a new category is a real ascension. A rune landing on a smaller one is not, and this profile no longer produces it.

Every ascension is an improvement; the earned road is simply the larger one.

**Breakthrough settlement.** Breakthrough is **offered, never imposed.** When a skill's mastery advances to Master, its Rank stands below the ceiling, and it is **ascension-eligible** at the next Rank under Section 7.2, it becomes **ascension-ready** and the Runtime surfaces the offer at the dangerous-scene settlement or promotion barrier that recorded the mastery advance, with the exact before-and-after values on every axis the skill uses:

```text
╔══ ◈  R A N K   A S C E N S I O N   A V A I L A B L E ═══════════════════════
     Rupture
     From            [E-Rank] Master · ×2.60 · 26 dmg
     To              [D-Rank] Adept · ×2.30 · 57 dmg
     Action          Ascend?
╚═════════════════════════════════════════════════════════════════════════════
```

A scope skill's offer states the category gained and the ratcheted count, because those are the axes it moves:

```text
╔══ ◈  R A N K   A S C E N S I O N   A V A I L A B L E ═══════════════════════
     Keen Sense
     From            [E-Rank] Master · whole scene · 5 subjects
     To              [D-Rank] Adept · whole scene · 5 subjects · + reads intent
                     and method
     Action          Ascend?
╚═════════════════════════════════════════════════════════════════════════════
```

An offer that omits a category grant or shows a count below the Section 7.2 ratchet floor is a misstated offer and is corrected like any misstated rule. An offer surfaced for a skill that is **not ascension-eligible** is a misstated offer of the same kind: it is withdrawn, the withholding is recorded under Section 7.2, and any mastery it consumed is restored, since the offer should never have been presentable.

The Bearer may decline and hold the skill at Master indefinitely; a declined offer stands open and re-surfaces at each later barrier, costing nothing and expiring never. Acceptance settles in that same canon-bearing Event and fires the Tier-1 confirmation. A skill already at Master and already at the ceiling simply holds; it becomes ascension-ready the instant the Bearer's System Rank rises, and needs no further qualifying scene to take the offer.

**The readiness check is standing, and it is evaluated from state rather than from memory of an event.** *"Re-surfaces at each later barrier"* has always required this and nothing implemented it: the Runtime surfaced offers by remembering that a particular barrier had recorded a mastery advance, so an advance that was never recorded produced no offer, ever. **At every dangerous-scene settlement and every promotion barrier, evaluate the whole mastery-tracked set** — no exceptions, no dependence on what moved this span:

> A skill is **ascension-ready** when `mastery_level` is 5, its Rank is below the Section 7.5 ceiling, and it is ascension-eligible at the next Rank under Section 7.2. Surface an offer for every such skill. Where a skill is at Master and below the ceiling but **not** eligible, state the withholding and name the skill and the Rank, under Section 7.2's *recorded, never silent* rule.

The check reads four stored values per skill and reaches no history, so it costs the same whether the last barrier was ten minutes or six in-fiction days ago — and it produces the same result at every barrier, which is what makes a missed offer recoverable rather than lost. Four skills sat ascension-ready for up to eight barriers under the previous reading (`F-012`); a standing check could not have produced that outcome, because it never asks what happened, only what is true.

The offer exists because ascension is a **trade, not a gift** — it exchanges hard-won mastery levels for Rank. The Section 7.2 Rank Dominance Law guarantees the trade is always favourable in raw power, but it is still the Bearer's to make: he may want a technique held at Master for a specific fight, a specific Mana cost, or a specific duration before he widens it. The System presents the arithmetic and waits.

**What ascension changes, and what it never touches.** Ascension rewrites the skill's Rank and mastery level and nothing else:

| Value | On ascension |
|---|---|
| Rank | Rises |
| Mastery level | Breakthrough route: falls to **Adept**. Rune route: resets to **Novice** |
| `mastery_progress` | Resets to 0 |
| `successful_uses` | **Never resets** — lifetime total |
| `qualifying_scenes_total` | **Never resets** — lifetime total |
| Skill identity, name, effect text | Unchanged |
| Mana cost | Recomputed from the new mastery level under Section 7.4's −10%-per-level rule; Rank itself never changes Mana cost |

Because `qualifying_scenes_total` never resets while mastery does, a skill's mastery level is **no longer derivable** from its lifetime scene count once it has ascended. From adoption forward, `mastery_level` is an authoritative world-declared `tracked_counters` entry alongside the others, written as a `counter_deltas` change on the causing Event like every other counter. For any skill with no recorded ascension the stored value equals `min(5, 1 + floor(qualifying_scenes_total ÷ 3))`, which is what it has always been — so adoption requires no recomputation.

**Ascension count.** Each skill records `rank_ascensions`, a lifetime total that never resets, naming how many times that technique has been raised. It is provenance, not a threshold: nothing reads it to gate anything.

**Worked example — Rupture.** At adoption Rupture stands E-Rank, Master, 14 lifetime qualifying scenes, dealing `10 × 2.60 = 26` on a standard success. The Bearer's System Rank is D, so the ceiling is C-Rank and Rupture is immediately ascension-ready.

| Step | Cost | Rank · mastery | Standard hit |
|---|---|---|---:|
| At adoption | — | E-Rank · Master | 26 |
| Breakthrough | offered, free | **D-Rank · Adept** (×2.30) | **57** |
| Climb Adept → Master | 6 qualifying scenes | D-Rank · Master (×2.60) | 65 |
| Breakthrough | offered, free | **C-Rank · Adept** (×2.30) | **142** |

There it holds at the ceiling until the Bearer reaches level 20 and System Rank C. The technique that was worth 26 forever is now worth 142 across six earned scenes and two offers — and note the second climb costs **six** scenes, not twelve, because breakthrough returns the skill at Adept rather than Novice. The earned road compounds; that is its reward.

Had he instead bought a C-Rank rune for 20,000 g at the first opportunity, Rupture would stand C-Rank Novice at `62 × 2.00 = 124` — reaching a higher Rank far sooner, but landing weaker than the earned route's 142 and carrying no mastery into it. That is the intended shape of the choice.

---

## 7.6 Succession — what a killed awakened leaves behind

**The System transcribes.** When the Bearer personally kills an awakened human, it takes **one technique** off the body and writes it into his ledger. This is the third acquisition route in this profile, after Section 7.1's three scenes of demonstrated method and Section 12.5's runes, and it is the only instant one.

**The trigger, exactly.**

- The victim is an **awakened human** — anyone carrying a Rank and a pool under Section 6.1. Never a monster: Section 11.1 already authors what a monster leaves, and it is a core. Never an unawakened person, who holds no technique to take.
- **The Bearer's own damage** reduced them to 0 Health under Section 6.5. A kill he did not land transcribes nothing, and a shared kill transcribes only where his damage is what crossed the threshold.
- **The death is real.** A target put to 0 by pulled damage alone under Section 6.2.1 is incapacitated and alive, and Succession does not fire on the living.

**What transfers.** The victim's **signature technique** — the one their record names as theirs. Where a record names none, it is the technique they actually used against him in that scene; where they used none, nothing transfers. **One per kill**, never a second. It never takes a **Stat Passive** (Section 4.4's threshold passives are grown out of a Stat and have no existence apart from it) and never a **class ability** (Section 18 binds those to their class and their trial).

**At what Rank, and in what condition.** It enters at the **victim's own Rank, clamped to Section 7.5's ceiling of System Rank + 1.** A technique above that ceiling transcribes **at the ceiling** and the excess is lost, exactly as an ascension is bounded — the ceiling is not raised, waived, or banked against a later Rank. Mastery enters at **Novice** with successful uses, qualifying scenes and mastery progress at **zero** (Section 7.1), and the Mana cost reads from the arriving Rank's ladder. Categories at or below the arriving Rank are held; nothing above it is.

**Where he already holds the technique, nothing is taken** — no duplicate entry, no free Rank ascension, no mastery credit, no counter movement. The System records the death and moves on.

**It renders as a window** under Section 14.5.3's grammar, named for the occasion:

```text
╔══ ◈  S U C C E S S I O N ═══════════════════════════════════════════════════
     <victim>             [<Rank>]
     Transcribed          <technique>   [<Rank>]   ★☆☆☆☆ Novice   Mana <n>
         <effect at the arriving Rank>
╚═════════════════════════════════════════════════════════════════════════════
```

**The price is not in the profile.** Nothing here costs Mana, gold, an action, or a qualifying scene. What it costs is everything Sections 19 and 20.4 already author: killing a licensed hunter is an exposure event and a legal one, the body is evidence, the guild that carded them keeps a record, and a Bearer who has taken a technique is carrying the proof in his own ledger. **The profile prices this at nothing and the world prices it at everything**, and that asymmetry is deliberate — Succession is a capability, not a strategy, and the Runtime is never obliged to make the world unaware of it.

---

# 8. System Quests and Penalty Zones

The System issues the Bearer a **daily quest** — a training regimen with a hard deadline and a real cost for failure — and may also surface bounded **Urgent** and **Hidden** quests under Section 8.4. The daily is the world's mechanism for keeping the Bearer growing between Gates, and its penalty is the sharpest edge the System shows in ordinary play.

## 8.1 The Daily Quest

Once per in-fiction day the System issues the quest, rendered as a Section 14.5.3 window:

```text
╔══ ◈  Q U E S T   I S S U E D ═══════════════════════════════════════════════
     Daily Training
     Objective       100 push-ups 0/100 · 100 sit-ups 0/100 · 100 squats 0/100
                     10 km run 0/10
     Reward          Ability Points <+n> · Status Recovery · Daily Random Box
     Deadline        00:00 local tonight
     Warning         incomplete at midnight transfers you to a penalty zone
╚═════════════════════════════════════════════════════════════════════════════
```

- **Issue and deadline:** the quest issues at **06:00 local** every in-fiction day. Its deadline is **00:00 local immediately following that issue date**: the Bearer may make progress from 06:00 through 23:59, an 18-hour window. At midnight the issuing day's quest is closed before any later beat resolves. No daily quest is active from 00:00 through 05:59; the next one issues at 06:00.
- **The regimen** is fixed: **100 push-ups, 100 sit-ups, 100 squats, and a 10 km run**, completed within that daily window.
- **Rewards on completion:** three independent pending entries — Ability Points **<+n>** (Section 3.9; +3 default, +4 with Ascetic equipped, read at claim), Status Recovery, and one Daily Random Box.
- The quest awards **no XP**. It tracks a **consecutive-completion streak**: completion advances the streak by 1; failure resets it to 0.
- **Seven-day streak upgrade:** when completion raises the streak to a **positive multiple of seven** (7, 14, 21, and so on), that completion's one Daily Random Box is recorded as **streak-upgraded**. It still creates exactly one pending box, but Section 8.1 resolves that box with two complete candidate rolls and lets the Bearer choose one result. There is no additional Weekly Cache, no multiplier on the other two daily rewards, and no separate 28-day benefit.

On a streak-upgrade completion, the completion window carries one further row before its closing rule:

```text
     Streak           milestone — Daily Random Box upgraded, roll twice and choose one
```

Completion is genuine effort, not a checkbox — the objectives are physical work the Bearer must actually do in the fiction. The System tracks progress against each objective (the `0/100` counters advance as the work is done). It resolves the quest **complete immediately** when the final objective finishes; if any objective remains incomplete at 00:00, it resolves the quest **failed at midnight**, resets the streak, and applies Section 8.3.

### The Daily Random Box

A Daily Random Box is rolled only when the Bearer opens that pending reward. A standard box makes one real d100. A **streak-upgraded** box makes **two independent real d100 rolls**, resolves both candidate results completely—including any required item, chassis, skill, or other subrolls—and presents both complete candidates to the Bearer. The Bearer chooses one; the unchosen candidate produces nothing and never enters inventory or state. Rank every ranked candidate to the Bearer's current **System Rank** (Section 6.6) at opening. Items follow their own sections:

| d100 | Daily Random Box yields |
|---|---|
| 01–35 | A **potion cache** — 3 potions at the Bearer's System Rank (healing/mana mix). |
| 36–60 | **System gold** — a purse at the shop's core-buy value for the Bearer's System Rank (E=500, D=2,000, C=8,500, B=35,000, A=150,000, S=650,000; Section 12.5). |
| 61–80 | A **rune** teaching one authored skill (Section 11.3 table) at the Bearer's System Rank. |
| 81–93 | A piece of **ranked gear** at the Bearer's System Rank (Section 11.5). |
| 94–99 | A **skill book** (Section 11.3) — a fuller technique with a growth path. |
| 100 | An **elixir** (+1 permanent to one stat, Section 12.5's lifetime cap applies). |

Any rune or skill book produced by a Daily Random Box has `instruction_binding: bearer-only` (Section 7.1). The box is the Bearer's alone and cannot be traded before opening because it is pending System state, not an object. Once opened, the chosen contents are ordinary dimensional-inventory holdings. One completion creates exactly one box. The streak changes only that box's roll mode at positive multiples of seven; it never adds a second box or changes the table.

## 8.2 Inline System Notifications

During prose, a pool or XP moving during resolution renders as a **ledger line** — unframed, indented to interior column 6, carrying the delta, the new standing, and the source:

```text
     XP +50 · 40 → 90/300  (elite ×2)
     MP −12 · 25 → 13/45
     HP −13 · 34 → 21/40
```

Each shows `before → current/maximum` (for XP, `current/next threshold`). Pool labels are `HP` and `MP`, always. Render each changed quantity once per resolved action. **Anything the System presents rather than counts — the Flux Sight read, level-up, the daily quest — renders as a framed window instead**, in the same Section 15.1 frame the `/system` panels use. There is no `[SYSTEM]` text prefix on either form; it was retired at 1.63.

**This is a mirror. Section 14.5 is the authority**, and it authors the full contract: the grammar, both forms, the Flux Sight read template, grouping, and re-render cadence. The two must never diverge.

## 8.3 The Penalty Zone

If midnight arrives with the issuing day's quest incomplete, the System **transfers the Bearer into a penalty zone at 00:00 local**: a sealed survival instance he does not choose to enter and cannot leave early.

- **Duration:** a **4-hour survival instance**. The Bearer survives it or dies in it; there is no other exit and no retreat.
- **Rank:** the instance runs at the Bearer's **Combat Tier** (Section 6.7), snapshotted at the 00:00 transfer — it scales with what he can actually do, not merely with his level, so it never stops being dangerous as he grows. System Rank is its floor.
- **Population:** populated per the standard Gate population formula at that Rank **G**:

  ```text
  3d6 common beasts (Rank G)
  + 1d2 elites (Rank G, ×2 Rank Health)
  + 1 boss (Rank G, ×4 Rank Health)
  ```

  (Section 9 restates this formula as the general rule for all Gates; it is reproduced here because a penalty zone must be fully resolvable from this section alone.)
- **XP and leveling are full and normal.** Every kill in the penalty zone awards its ordinary kill XP (Section 3.3) and that XP counts toward leveling exactly as anywhere else: thresholds cross and Section 3.2's immediate level-up effects settle in the instance itself. The penalty zone is dangerous, not barren — a Bearer who fights hard climbs out of it stronger, which is the trap's other edge.
- **No material loot.** What the zone withholds is *loot*, not growth: it drops **no crystals, cores, runes, gear, keys, or currency**. There is nothing to sell and nothing to carry home — only levels earned in blood. It punishes by making the Bearer pay in risk for XP he could have earned safely by doing his push-ups.
- **Exit:** the instance ends and returns the Bearer to the world on **surviving the full four hours**, or **early on killing the zone's boss** — a boss kill collapses the instance like any Gate (Section 9.7) and awards the **Gate-clear milestone XP at Rank G** (Section 3.4), the one milestone the zone does pay. Death inside it is death (Section 6.5), and the campaign ends there.

The penalty is deliberately not a fine or a debuff: missing the daily quest drops the Bearer, alone, into a fight at his own Combat Tier that he did not pick. That is the System being indifferent to his convenience — the daily quest is an order, and refusal has teeth. That the teeth also make him stronger is exactly the System's logic: it does not fine failure, it *forces the training the Bearer skipped*, at knifepoint.

**Deferred transfer from inside a sealed instance.** If midnight arrives while the Bearer is inside a **sealed instance** — a red gate (Section 9.6), an instant dungeon (Section 17), or the class trial (Section 18.2) — the quest still fails and the streak still resets at 00:00, but the penalty transfer **cannot fire** while that seal holds: there is no exit, and the System does not drop him into a second sealed instance atop the first. The transfer **defers**; the instant the Bearer exits the sealed instance, it **fires immediately**, before any new daily quest can issue or any other voluntary action resolves. The deferral spares him nothing — it only waits for a door.

## 8.4 Urgent and Hidden Quests

Urgent and Hidden quests are real System state, not labels the Runtime may add to an ordinary campaign objective. They exist only through the triggers below.

**Both triggers have a push channel, and 1.73 is where it was added.** Through 1.72 every quest in the record had attached to something the Bearer had already touched — a warehouse he investigated, a person he asked after — so the quest system **mirrored the player and never proposed to him**, and two of four slots stood unused for the whole campaign. The Section 9.1 daily world tick now feeds both triggers directly: a Gate sited **on his route** or a break sited near him satisfies Section 8.4.2's criteria on the world's initiative rather than on his, and the tick's agenda advances are a first-class source of Hidden pointers. **A quest may originate in the world and arrive unbidden. It does not have to be something he started.** The Runtime performs the trigger audit whenever a scene opens, the Bearer enters a new place, a nearby crisis materially changes, or the Bearer's action establishes a new concealed discovery. If no trigger is met, no quest appears.

### 8.4.1 Capacity and Canonical State

Concurrent non-daily quest capacity is **derived from the Bearer's System Rank** (Section 6.6): **2 / 3 / 4 / 5 / 6 / 7** at E / D / C / B / A / S. It is not granted by any skill, and no allocation, item, or title raises it. Only accepted `[URGENT]` quests and attached `[HIDDEN]` quests consume these slots.

**Why capacity is Rank-derived and not a skill.** Through Profile 1.48 this ladder was the Intelligence Stat Passive **Multitask**, and across the whole of Gatefall's play record its cap never once bound: a Bearer at capacity 4 held two attached Hidden pointers and had accepted **no** Urgent quest at all. The binding constraint on concurrent quests is **supply** — Section 8.4.2's crisis criteria and Section 8.4.3's concealed-discovery and proximity requirements — never the ceiling. A skill whose entire grant is a ceiling nobody reaches grants nothing, which is the Section 7.2 Rank Dominance Law failing on its own terms. Capacity still rises with progression, because System Rank rises; it simply no longer pretends to be a capability.

- The `[DAILY]` quest has its own reserved slot and never consumes non-daily capacity.
- The Class Quest and later class-evolution quest (Section 18) each use their own reserved class slot and never consume non-daily capacity.
- An Urgent offer that has not been accepted consumes no slot. A Hidden quest consumes one as soon as its pointer attaches, even while its content renders `???`.
- Completion, failure, expiry, or abandonment frees the slot immediately. A capacity increase never creates a quest; it only permits another qualifying quest to attach or be accepted.
- `/system quests` may abandon one named active Urgent quest or one selected Hidden pointer. Abandonment is immediate and irreversible, produces no reward or separate penalty, and cannot erase consequences already caused in the world.

Canonical `system_state.non_daily_quests` stores `capacity_total`, `active`, and `pending_offers`. `capacity_total` is derived from System Rank by the ladder above and stored as a read value; the retired `base_capacity`, `multitask_bonus`, and `analyst_bonus` fields are not carried. Every active quest record stores a stable quest key, type, status, issue time, objective counters, completion and failure conditions, reward Rank and XP, and deadline. A Hidden record additionally stores its authored concealed name, reveal condition, and whether it has been revealed. A pending Urgent offer stores the same resolved contract plus its offer-expiry condition. The complete record is canonical even when the character-facing panel withholds part of it.

If a trigger fires while every non-daily slot is occupied, the quest does not attach and no state is silently displaced:

```text
╔══ ◈  Q U E S T   C A P A C I T Y   R E A C H E D ═══════════════════════════
     <URGENT or HIDDEN>
     Non-Daily Slots   <used> / <capacity>
     Action            free a slot while this opportunity remains available
╚═════════════════════════════════════════════════════════════════════════════
```

The opportunity may be audited again only while its original world condition still holds. The System does not queue it after the crisis or discovery window has passed.

### 8.4.2 Urgent Quests

An **Urgent quest offer** becomes eligible only when all of the following are already established in the fiction:

1. a present, nearby crisis poses an immediate threat of death to at least one non-hostile person — **other than the Bearer himself only where the crisis is inside a Gate, a Section 9.6 red gate, or a Section 17 instant dungeon** (Version 1.90, below);
2. the threat is a Gate creature, an active Gate break, or a directly perceived sealed-instance hazard;
3. the Bearer has a physically actionable route to intervene before the threat resolves; and
4. the objective, success condition, failure condition, and causal deadline can be stated from facts the Bearer already perceives.

**Where the Bearer may be the imperilled person (Version 1.90).** The exclusion was written whole; its reasoning is true in one place and false in the other.

- **Inside a Gate, a Section 9.6 red gate, or a Section 17 instant dungeon, the Bearer is never the imperilled person.** Criterion 1 requires someone *other than* him, and criterion 3's "intervene" means intervening on that person's behalf. Danger to his own life in there is combat, resolved under Sections 6 and 20.4: the System does not pay a hunter for surviving the thing he walked in to do.
- **Outside one, in the ordinary world, he counts as a person.** He satisfies criterion 1 himself, criterion 3 reads as a route to end or escape the threat, and criteria 2 and 4 are otherwise unchanged.

**Criterion 2 widens for that case alone**: where the imperilled person is the Bearer and the place is not an instance, the threat may be any immediate lethal one he directly perceives — a Gate creature, an active break, or **an awakened human acting to kill him**. It never widens for a third party, and never inside an instance. The System still reveals no unconfirmed Rank, hidden attacker or NPC intent to make an offer fit, so an unperceived ambush produces nothing.

**Self-created danger still disqualifies, and is now the whole anti-farm**: he cannot open a lethal exchange and collect a milestone for winning it. The test is who initiated the lethal intent, not who struck first. **The contract exclusion reaches him too** — danger on the work he was hired to do is excluded whether the imperilled party is a crewmate or the Bearer.

A danger the Bearer deliberately created, a remote report he cannot reach in time, property loss without immediate danger to life, and a crisis already resolved do **not** qualify. The System does not reveal an unconfirmed Gate Rank, a hidden attacker, or an NPC's intent to make an offer fit.

**The contract exclusion, exactly.** What a contract excludes is **the work the Bearer was hired to do** — the contracted objective itself, and danger to any person who entered under the **same contract** as the Bearer, strike element and support element alike (Section 9.4). A crew facing the Gate's population is doing the job it signed and insured for, and the System does not pay a bonus for a hunter doing his own job. This exclusion does **not** reach a person who is not party to that contract. A civilian inside a cordon, a bystander at a break site, an unrelated crew, or a survey team the Bearer's contract does not cover is, when a qualifying threat puts them at immediate death, not "routine" by any reading — and an offer may become eligible if criteria 1–4 all hold on their own terms.

**Sealed instances can qualify, but not alone.** Criterion 2 admits a directly perceived sealed-instance hazard, and a sealed instance is not automatically empty of other people: Section 17 lets the Bearer bring a party into an instant dungeon, and a red gate (Section 9.6) seals whoever entered it. Where he brought others in, criterion 1 can hold. Where he entered **alone**, it never can — there is no one else inside to imperil, and no Urgent quest can arise in a solo instant dungeon at all. That is a deliberate consequence rather than an oversight: the more of his dangerous time the Bearer spends in private instances of his own opening, the less of his life is Urgent-eligible. Solitude buys safety from the world's claims on him, and costs him the world's opportunities.

An eligible offer is Tier 2 (Section 14.3) and renders:

```text
╔══ ◈  U R G E N T   Q U E S T   O F F E R ═══════════════════════════════════
     <name>
     Objective       <one concrete intervention with counters if needed>
     Reward          <XP> XP
     Deadline        <known timestamp or causal end condition>
     Failure         <the established condition that makes rescue impossible>
     Action          Accept / Decline
╚═════════════════════════════════════════════════════════════════════════════
```

The Bearer must explicitly accept before quest completion can be earned. Declining or letting the offer's causal window close creates no penalty. An Urgent quest's reward is the **Gate-clear milestone XP for one Rank above the Bearer's System Rank at acceptance**: E-Rank 150, D-Rank 320, C-Rank 700, B-Rank 1,500, A-Rank 3,200, S-Rank 6,800 (Section 3.4). Acceptance requires a free non-daily slot and fixes the reward at that figure; later leveling does not reprice it.

**Why a Rank above, and not the Bearer's own (Version 1.89).** Section 3.4's milestone is paid for two hours inside a Gate **and it is paid on top of every kill fought through to reach it**. A quest is paid once, flat, for work that runs across in-fiction weeks — the live warehouse investigation had been open sixteen days and Marnie nine when this was repriced. Under the previous rule an Urgent quest paid *four times common-kill XP*, which at D-Rank was 100 against the Gate's 150-plus-kills, so the most time-critical work in the world paid least of anything the System rewards. The ladder one rung up is used rather than a new multiplier so no figure here is invented: every value is one Section 3.4 already authors. **S-Rank continues the ladder's own construction** — it doubles and rounds up by a step that itself doubles (140→150, 300→320, 640→700, 1400→1500, 3000→3200), giving 6,400→**6,800**. That is the one figure not read from an existing row. Ordinary kill XP and Gate-clear XP still settle normally; the Urgent reward is additional challenge XP and settles immediately when the success condition is met. Failure or expiry awards nothing and does not impose a System penalty beyond the world's consequences.

### 8.4.3 Hidden Quests

A **Hidden quest pointer** becomes eligible only when all of the following are true:

1. a concealed discovery, place, object, pattern, or optional objective already exists in authored world or campaign canon **as a complete `concealed-discovery` record** — in `230_KNOWLEDGE_SUBJECTS.md` or the campaign's own concealed-canon ledger — authored under Section 8.4.5 in an earlier exchange than this audit;
2. the Bearer has entered immediate, actionable proximity to it or has just established a genuine clue through a resolved action;
3. the Bearer does not yet know the concealed fact; and
4. before notification, the Runtime records one exact reveal condition, one achievable objective, one completion condition, any failure or expiry condition, and the reward Rank in canonical Hidden quest state.

The Runtime may not create `[HIDDEN] ???` merely for atmosphere, retroactively turn a guess into a quest, or use the pointer to describe the concealed fact. Asking the System what `???` means never satisfies the reveal condition. The Bearer must investigate or act in the fiction. If capacity is available, the pointer attaches automatically and renders:

```text
╔══ ◈  H I D D E N   Q U E S T   D E T E C T E D ═════════════════════════════
     Objective       ???
     Reward          ???
     Deadline        ???
╚═════════════════════════════════════════════════════════════════════════════
```

When the authored reveal condition is met, the same record changes in place and immediately renders its name, objective, progress, reward, and any deadline. If the completion condition is met in that same action, reveal and completion settle together. A Hidden quest's reward is the **Gate-clear milestone XP for one Rank above the Bearer's System Rank when the pointer first attached**: E-Rank 150, D-Rank 320, C-Rank 700, B-Rank 1,500, A-Rank 3,200, S-Rank 6,800 (Section 3.4). Later leveling does not reprice it. The XP settles immediately on completion; failure, expiry, or abandonment awards nothing and adds no separate System penalty.

### 8.4.4 Settlement and Rendering

Accepted Urgent quests and attached Hidden quests update their counters from resolved fiction, never from narrative convenience. Completion and failure are Tier-1 state reactions once their stored condition becomes true (Section 14.3). A quest cannot complete from conduct that occurred before its offer was accepted or pointer attached.

`/system quests` renders `Non-Daily Slots <used> / <capacity>` first and the Console carries the same figure in its `QUESTS` rule (Section 15.2); both then render active quests in this order: Daily, Urgent by deadline, Hidden by attachment time, Class/evolution. Urgent rows always show objective progress, fixed XP, and deadline. An unrevealed Hidden row shows only `[HIDDEN] ???`; its reward and deadline remain `???` even though canonical state holds them. Completed, failed, expired, declined, and abandoned quests leave the active panel immediately and remain available only through `/system log`.

### 8.4.5 Concealed-Canon Supply and the Promotion Ritual

Section 8.4.3 is a filter, not a source. It asks whether a concealed discovery *already* exists in canon and whether the Bearer has reached it — and correctly refuses to fire when the answer is no. That leaves the section dependent on a supply of authored concealed canon, and a world that never produces one can never issue a Hidden quest no matter how much concealed-feeling material its campaign generates. This section is the supply.

**Where concealed canon lives.** Gatefall's world-scope concealed discoveries are `Discovery/Knowledge` entities carrying `subtype: concealed-discovery` in `230_KNOWLEDGE_SUBJECTS.md`. A campaign may hold its own in a campaign-scope concealed-canon ledger for discoveries anchored on entities that campaign created. Both are owner-facing: a Runtime never renders a record, and an attached pointer still shows `???` and nothing else.

**The complete record.** A `concealed-discovery` record is eligible under Section 8.4.3 only when it carries all of: `claim`, `anchor`, `concealment`, `proximity_condition`, `clue_condition`, `reveal_condition`, `objective`, `completion_condition`, `failure_or_expiry`, `resolution_depth`, and `bearer_knows`. A record missing any field is incomplete and cannot attach. A record **never stores a reward** — Section 8.4.3 fixes that from the Bearer's System Rank at attachment, and a stored reward would contradict it.

**World records are not mutated by play.** A world-ledger record's `bearer_knows` is the authored default for a fresh campaign. Live per-campaign pointer status — attached, revealed, completed, failed, abandoned — is campaign state under Section 8.4.1, held in `system_state.non_daily_quests` and the campaign's own ledger. Play never edits a world file.

**The promotion ritual.** A Runtime **may author** a new `concealed-discovery` record during play, promoting an unresolved thread the fiction has already produced — a withheld answer, a name that does not fit, a detail that does not add up — into eligible concealed canon. It is bound by three rules:

1. **Time separation.** A record is authored no earlier than the close of the scene that produced its thread, and its pointer may attach no earlier than a **later scene**. A record authored and attached inside the same exchange is manufacturing, and is prohibited exactly as Section 14.3's Tier 3 prohibits it.
2. **Grounding.** The record must be anchored to something the fiction already established — an entity, a place, a resolved action. A Runtime does not invent a mystery so that a record can exist; it writes down one the world already has.
3. **Completeness before attachment.** The full field set above, including the reveal condition, is written before any pointer attaches. Writing the reveal condition after the Bearer has acted is retroactive quest creation and is prohibited under Section 8.4.3.

**The authoring obligation.** When a scene introduces a new NPC, location, or institution, the Runtime gives it at least one detail that is not purely transactional and does not resolve on the spot. Where such a detail implies a concealed fact, the Runtime records it as a `concealed-discovery` at scene close. This is an obligation to seed texture, **not a quota**: there is no required rate, no dry-spell threshold that forces a record, and no circumstance under which a quiet session justifies inventing a crisis or a mystery. A world with unresolved texture in it will produce Hidden quests on its own once the Bearer walks into one; a world without any never will.

**What this does not change.** Section 8.4.3's four criteria are untouched, and every one of them still has to hold. The Bearer must still reach real proximity or resolve a genuine clue; asking the System what `???` means still reveals nothing; a guess is still not a pointer; and a quest still cannot complete from conduct predating its attachment (Section 8.4.4). This section widens the supply of things to find. It does not lower the bar for finding them.

### 8.4.6 Trigger Telemetry

Sections 8.4.5 and 9.10 exist because a defect stayed invisible for the whole of a campaign: no Hidden or Urgent quest had ever fired, every audit was performed correctly, and nothing anywhere counted the zeros. The owner found out because the player noticed. This section makes the count a written artifact so the same class of defect surfaces in the repository instead of in someone's patience.

**It is diagnostic, and it is never a trigger.** Nothing in this section creates, permits, or obliges a quest. No value it records is a precondition, no threshold releases the Runtime from any requirement in Sections 8.4.2 or 8.4.3, and a long dry count is **never** grounds to attach a pointer, issue an offer, invent a crisis, or lower a bar. A rule that fired a quest at a dry-spell threshold would be a Tier-3 no-declared-precondition firing wearing a counter as a disguise (Section 14.3), and is prohibited exactly as such. The counters are read by the **owner**, between sessions, about the design. The Runtime writes them and does not act on them.

**It is not System state.** The System's assertive domain is closed (Sections 14.1, 14.4) and contains nothing about the health of its own trigger supply. These fields live in campaign state, never in `system_state`, and never render in any `/system` panel. The Bearer cannot see them and cannot ask.

**Written at each checkpoint**, into mutable live state, as a `trigger_telemetry` block carrying:

| Field | Meaning |
|---|---|
| `hidden_pointers_attached` | lifetime count of Hidden pointers that have attached |
| `hidden_last_attached` | campaign timestamp of the most recent attachment, or `never` |
| `hidden_dry_days` | in-fiction days since that attachment, or since campaign start if `never` |
| `urgent_offers_issued` | lifetime count of Urgent offers issued, accepted or not |
| `urgent_last_offered` | campaign timestamp of the most recent offer, or `never` |
| `urgent_dry_days` | in-fiction days since that offer, or since campaign start if `never` |
| `concealed_records_available` | concealed discoveries in world and campaign canon that are neither attached nor completed — the size of the Hidden supply |
| `tracked_postings` | live entries on the Section 9.10 board — the size of the Urgent input stream |

**Reading it.** The two supply counts are what make a dry count interpretable, and the distinction is the whole point of the section:

- **Supply zero, dry count rising** — the design fault this section exists to catch. No amount of correct auditing can produce a quest from an empty supply. The answer is to author concealed canon under Section 8.4.5 or to let the board surface postings under Section 9.10, at the owner's pace, between sessions.
- **Supply healthy, dry count rising** — *not* a fault, and not a thing to fix. It means the world has things to find and the Bearer has not yet met a proximity, clue, or crisis condition. That is the bar doing its job, and the correct response is none.

A checkpoint that records a rising dry count against a healthy supply is reporting a working system, not a broken one. No reading of this table ever authorizes a Runtime to close the gap itself.

**Existing checkpoints are not retrofitted.** Immutable checkpoints captured before this section stay byte-unchanged and carry no telemetry block; the counters begin at the first checkpoint written after adoption and count from campaign start.

### 8.4.7 The Crucible Floor — it will not waste a candidate on a slow week (1.95)

Sections 8.4.2 and 8.4.3 state what a quest **is**. Neither states what happens when the world simply fails to produce one, and the answer through 1.94 was *nothing* — the criteria sat waiting, correctly, for a crisis that no rule was obliged to generate. `200_WORLD_BIBLE.md` Section 9 is explicit that this is not how the process behaves: *"The daily quest and its lethal penalty zone are the process refusing to let its investment coast — **it will not waste a candidate on a slow week.**"* That sentence is a rule, and this section is it.

**`quiet_days`** is tracked Bearer state: consecutive in-fiction days closed with **no Section 7.4-qualifying contested scene** — nothing that could have made him fail at a cost. It resets to 0 the instant one resolves.

| `quiet_days` | What the next Section 9.1 tick owes, before anything else it rolls |
|---|---|
| **0–1** | Nothing. The ordinary tick. |
| **2** | **One Section 9.12 audition is guaranteed**, sited on his route, in addition to whatever the ordinary siting and share rolls produce. |
| **3** | The above, **and** the tick must site a **Section 8.4.2-qualifying crisis within reach** — a break, a failing cordon, or Gate creatures loose where people are. |
| **4 or more** | The above, and the guaranteed audition rolls Section 9.6 **twice, taking the more dangerous result.** |

**This creates conditions, never a quest, and the distinction is the whole of its discipline.** A sited crisis satisfies criterion 1's *nearby* and criterion 3's *actionable route* by putting a real thing in real reach. **Criteria 2 and 4 still have to hold on their own terms**, the Runtime still may not reveal an unconfirmed Rank or an NPC's intent to make an offer fit, and self-created danger still disqualifies. If the criteria do not hold, **no quest appears and the tick records that they did not** — Section 8.4.6's telemetry counts it exactly as it counts any other dry audit. What this section removes is the case where the criteria were never *tested* because the world put nothing in front of them.

**It is not farmable, because what it pays out is danger.** The floor produces auditions and crises, not rewards; a Bearer who deliberately stays quiet to trigger it is choosing to be handed a Gate that is not what its card says, at four days doubling its odds of sealing behind him. **Solitude buys safety from the world's claims and costs the world's opportunities** — Section 8.4.2 already says so, and this is the same trade with the process pressing back.

**It never fires inside a sealed instance**, on the Section 8.3 deferral pattern: a tick that lands while the Bearer is inside a red gate, an instant dungeon, or the class trial accrues the day but sites nothing until he is somewhere a Gate can be near him. And a day spent in a Section 17 instance beneath his tier is a **quiet day** — clearing content that cannot contest him is exactly the coasting this section exists to interrupt, which is the same finding `F-046` was raised on.

---

# 9. Gates

A **Gate** is a breach between the world and a dungeon instance. Every Gate has a Rank (E-Rank–S-Rank), a detection timestamp, an interior archetype (Section 10), and a population (below). This section fixes how a Gate is measured, staffed, resolved, and — if it is left too long — how it breaks.

## 9.1 Spawn Rates

Gates open continuously; the two campaign cities open at very different rates.

| Metro | Gates per week (approx.) |
|---|---|
| **Chicago metro** | ≈ **35** |
| **Prague** | ≈ **8** |

These are aggregate rates across the metro. **They are rolled, not narrated at need.** They are also **tier III figures and not constants** — the rate is read from the world's current escalation tier (Section 9.2.1) and rises with it, which is what the Bible's *"all-time high and still climbing"* has always meant.

### The daily world tick (1.73)

**Through Profile 1.72 this line read *'the Runtime distributes them into the fiction as needed and does not roll a fixed calendar'*, and that sentence is the reason a campaign can run ninety in-fiction days inside a city opening thirty-five Gates a week and have none of them ever reach the Bearer.** It made every world event conditional on the Runtime deciding to author one, which is indistinguishable from a world that is not running. It is replaced.

**At each in-fiction day boundary — 06:00, the same instant the daily quest issues — the Runtime rolls the world, before and independently of anything the Bearer does that day.** The tick runs whether he is in a Gate, asleep, at the lakefront, or mid-scene; it runs on days he does nothing; and **its results are binding, including the inconvenient ones.**

1. **Gates.** Roll the metro's day count and each Gate's true Rank **on the world's current escalation tier** (Section 9.2.1) — at the present tier III that is Chicago **1d4+3**, Prague **1d2**, against the 50/25/15/7/2.5/0.5 distribution. **Both the count and the distribution are read from the tier, not from a constant**; a tick that uses tier III's numbers after the ramp has advanced is running last year's world.
2. **Siting, and this is the edge that matters.** For each Gate roll **d100** against the Bearer's own recorded day:

```text
     01-10   ON HIS ROUTE      the commute, the block, the lakefront, the
                               hospital, wherever the day already puts him
     11-30   WITHIN REACH      inside the metro and inside an hour of him
     31-00   ELSEWHERE         the city absorbs it; recorded, not surfaced
```

   **Every Gate that sites `01-10 ON HIS ROUTE` then rolls Section 9.12** for whether it is an audition. That roll happens here, in the same pass, and its result is recorded on the Gate rather than resolved — an audition's true Rank and anomaly are read at **first entry**, and a Gate he never walks into never reveals which it was.

   **Section 8.4.7's crucible floor is applied before this step's ordinary rolls, not after.** Where `quiet_days` has reached 2 or more, the tick owes a guaranteed audition on his route, a sited Section 8.4.2-qualifying crisis at 3, and a doubled anomaly roll at 4 — **and it owes them whether or not the ordinary siting rolls produced anything.** A tick that rolls a quiet day and moves on has not run this step.

3. **Rarity is rolled every time**, not when a scene wants one — red gates, anomalies, and every Section 9.4 modifier. A rarity that never rolls is not rare; it is absent, and three catalogue titles were unreachable because of it.
4. **The trade takes the job first — roll contest before you roll breaks.** Chicago is not an empty city with a countdown running in it. Ironline, Horizon, Karlov and the Coalition compete for Gate contracts, BGM Region V escalates and issues emergency contracts, and Section 9.10 already states the consequence: **`staffed` or `held` → cleared off-screen, and this is the ordinary case.** A break is what happens when *nobody took it*, which is a market outcome and not a timer.

   So each posting rolls **d100 per day** for whether the trade takes it, at a rate the campaign's own board already demonstrates:

```text
     E-Rank      15   per day     cheap work, insulting split eight ways
     D-Rank      25   per day
     C-Rank      55   per day     worth a guild's bench
     B-Rank      75   per day     contested; auction wars start here
     A-Rank      90   per day     every major guild wants it
     S-Rank     ---              state-directed; never sits on a board
```

   **These rates are derived, not invented.** `GB-01` and `GB-04` were both E-Rank Coalition postings that sat unbid to their deadlines and broke; `GB-02` was an unconfirmed D *"starved of bids by the Ironline/Horizon auction war"*; `GB-03` was a confirmed C-Rank *"won at auction, staffed from Horizon's own bench, cleared off-screen on schedule."* Four postings, and the pattern is the trade's economics rather than chance: **the bottom of the ladder breaks because nobody is paid enough to go, and the top is fought over.** Section 9.4's own note that cheap jobs sit says the same thing.

   A taken posting becomes `staffed` or `held` and leaves the board on its clear. **It is still a world event** — who took it is news, and a guild clearing a Gate on his route is something the Bearer can hear about, be offered a place on, or lose an opportunity to.

   **Every A-Rank and S-Rank Gate this step rolls also generates a directed assignment under Section 9.11**, rolled in the same pass. The rates above describe the *board*, and the board is not how the top of the ladder reaches an individual hunter — a 90%-per-day take rate means an A-Rank lot is gone before a freelancer sees it, and S-Rank never posts at all. Section 9.11 is the channel those two facts imply and that nothing had authored (`F-046`).

5. **Breaks.** Section 9.10's board then runs its timers on what nobody took. A posting still `posted` past its window breaks, and the break is **sited by the same d100 above** rather than assumed to be elsewhere.
6. **Postings regenerate.** The day's Gates produce board postings; the board is not permitted to decay to zero and stay there.
7. **Agendas advance.** Every named entity holding an agenda (`011_ENGINE_DATA_MODEL.md` Section 7.9) advances on its own clock, and the tick rolls whether any of them **initiates** — a call, an arrival, an ask, a piece of news. A world in which contacts only ever answer is a world with one moving part.
8. **The world does something that is not a Gate.** Roll **d100** once per tick on Section 9.1.2. Through 1.76 every step above produced Gates, breaks, or postings about Gates — so a city with four guilds, a regulator, a market, an underground and a press corps generated nothing except holes in the ground. **A world whose only event type is the one the protagonist fights in is a dungeon queue, not a city.**
9. **District pressure settles.** Apply Section 9.1.3's deterministic adjustments for every break this tick contained, every district that went a clear week, and cross any threshold reached. **No roll and no discretion** — a district at 10 is overrun whether or not it is convenient.

   **Then the escalation ramp settles, in the same pass and on the same terms** (Section 9.2.2). Accrue `escalation_credit` for every threshold this tick crossed, advance the tier if the credit reached 20 or the schedule's date has passed, and record it. **No roll and no discretion here either**, and the tier only ever rises. A tick that advances the tier changes what tomorrow's step 1 rolls, which is the whole mechanism by which this world gets worse.
10. **On the first tick of an in-fiction week, roll Section 9.1.4.** One d100 for whether the world changes shape: a guild rises or falls, someone awakens at a Rank that makes news, policy moves, a standing Gate thread opens, another metro takes the crisis, or something unprecedented happens.

**Proximity is an input, not a veto.** Section 8.4.2's criteria describe what an Urgent quest *is*; they were never meant to be the reason nothing is ever near him. **The tick is what puts things near him**, and it does so by rolling rather than by the Runtime judging a scene worth interrupting. A `01-10` result is not an invitation to narrate a Gate somewhere in the background: it is a Gate on his route, today, and it is surfaced.

**The tick is state, not a habit.** `world_clock.last_ticked` is canonical campaign state. **A campaign whose `last_ticked` is behind its `campaign_time` has an unrun world**, and that is a readiness finding rather than something nobody notices — the same treatment Section 18.8's anchor disturbances and Section 7.5's unanswered offers receive. A tick that can be silently skipped is the defect one level up.

**And nothing here is the player's to author.** The Runtime rolls this and reports it. Asking the Bearer's player what opens, who calls, or what is behind a door is not neutrality; it is declining to run the world, and an authored surprise is not a surprise.

### 9.1.1 A Tick Writes What It Rolled, Including Nothing

`last_ticked` records that time passed. It does not record that the world ran, and those are different facts. **A tick that advances the anchor and rolls nothing is byte-identical to a tick that rolled and found nothing**, so the only mechanism proving the world runs is a timestamp that moves whether or not it did.

That is the defect this engine has now met three times — `F-002`'s deadlines reached with nothing settling them, `F-035`'s supply sources declared and never advanced, and this. The remedy is the one Decision 080 already established and Section 7.5 already implements for supply: **an advance that yields nothing is recorded as having yielded nothing.**

**Each tick appends one entry to `world_ticks` in the campaign's world ledger**, carrying the boundary it ran for and what each of the six steps produced:

```text
boundary     the 06:00 instant this tick ran for
gates        the 1d4+3 count and each Gate's rolled Rank, or none
siting       the d100 results, as on-route / within-reach / elsewhere
contest      postings the trade took this tick, by Rank, or none
breaks       postings that broke on this tick, or none
postings     board postings added, or none
agendas      entities that initiated, or none
world_event  the Section 9.1.2 d100 and its result, or none
pressure     each district's value after settlement, and any threshold crossed
major        the Section 9.1.4 roll on a week's first tick, or not-due
landed       where each event resolved under Section 9.1.5, or `none` with a reason
```

**`none` is a result and is written as one.** A day on which Chicago opened four Gates all sited elsewhere, no posting broke and nobody called is a real day and is recorded as such — it is not an empty entry and it is not a skipped one. What may never appear is a boundary with no entry at all, because that is indistinguishable from a world that did not run.

**The daily quest is bound to the tick, and this is the safety rather than the bookkeeping.** Section 8.1's daily quest issues at 06:00 — the same instant. They are now one boundary event with a fixed order: **the tick runs first, its entry is written, and only then does the daily quest issue.** A Runtime may not render the daily for a day whose tick has no entry.

The reason is that the two obligations have very different failure rates. The daily quest is player-facing, arrives every morning, and is never forgotten — twenty-six have issued on time. The tick is world-facing, owed to nobody in the scene, and is exactly the kind of obligation this engine has repeatedly failed to meet. **Coupling the reliable one to the unreliable one makes skipping the tick cost something a player would notice immediately.** Section 12.5's Daily Premium rotation shares the same instant and the same ordering for the same reason.

### 9.1.2 The Non-Gate World Event

One **d100 per tick**. This is the city doing something other than opening a hole.

| d100 | Event | Sourced from |
|---|---|---|
| 01–30 | **Nothing today.** The city is ordinary. | — |
| 31–42 | **Guild movement** — an auction war, a poaching raid, a rate change, a bench shortage, a contract lost or won between Ironline, Horizon, Karlov and the Coalition. | The four guilds and the co-op desk |
| 43–52 | **Regulatory action** — BGM Region V escalates a rate, re-assesses a hunter, audits a roster, suspends a licence, or issues an emergency contract. | BGM Region V, Section 19.4 |
| 53–62 | **Market movement** — crystal or core prices shift, a gear line sells out, a vendor gets a shipment, an artificer's queue opens or closes. | Section 12, the vendors, the artificers |
| 63–72 | **An opportunity that is not a Gate** — a commission, an escort, an investigation, a training place, a survey, a piece of paid consultation. | Section 7.5 supply sources |
| 73–80 | **Aftermath** — the consequences of something already rolled: a break's casualties named, a cordon still standing, a funeral, a guild answering for a thin roster. | Prior ticks, prior breaks |
| 81–88 | **Someone's private life moves** — an NPC's own thread advances without reference to the Bearer: an illness, a move, a promotion, a debt, a relationship. | Entity agendas, Section 7.9 |
| 89–95 | **News the city hears** — a story breaks, a rumour spreads, a public figure says something, a record is set or broken. | Section 20.1 common knowledge |
| 96–00 | **Something genuinely unusual** — roll again and let the result be larger than it would ordinarily be, or author a one-off the world's texture supports. | The world |

**Siting uses the same `d100` bands as a Gate** (`01-10` on his route, `11-30` within reach, `31-00` elsewhere). An event elsewhere is still recorded — the city has a history whether or not he is in it, and a thing that happened three weeks ago in a district he has never visited is exactly what makes a later arrival feel like arriving somewhere real.

**This does not create Urgent quests, and that boundary is deliberate.** Section 8.4.2 criterion 2 admits only a Gate creature, an active Gate break, or a directly perceived sealed-instance hazard — a market shift is not a threat of death and must never be dressed as one to justify an offer. What these events feed is **supply, pressure, and fiction**: an opportunity a source can now hold under Section 7.5, a reason a contact calls, a fact the Bearer can learn, a consequence that lands later. The quest surface is unchanged.

**Nothing here is the player's to author** — the same rule as the rest of Section 9.1. A `31-42` is rolled and reported, not offered as a menu.

### 9.1.3 District Pressure — How a City Loses Ground

Section 9.8 answers **one** break: BGM issues an emergency contract, the nearest guild strike team takes it, the release is contained. It answers the second break in the same district the same way, and the third, and it never asks what happens when the answer stops being enough.

**Breaks are not independent events.** The world ledger already recorded the pattern without modelling it — *"Two E-Rank breaks in the Red Line Corridor inside eleven days… not a coincidence so much as a measurement of how thin the freelance pool is at the bottom of the ladder."* A district that keeps breaking is a district whose response capacity is being consumed faster than it recovers.

**Each district carries a `pressure` value.** It is tracked state on the world ledger, not a roll:

```text
     +1     a break contained in that district
     +2     a break at C-Rank or above
     +3     a break the response arrived late to, or a second break inside 7 days
     -1     per clear week with no break in that district (floor 0)
```

**Thresholds are deterministic — no roll, no Runtime discretion**, on the Section 9.10 pattern:

| Pressure | State | What it means |
|---|---|---|
| 0–3 | **Normal** | The trade absorbs it. Nothing visible changes. |
| 4–6 | **Strained** | Rates rise, benches thin, the desk starts refusing marginal jobs. Postings in that district gain a contest penalty. |
| 7–9 | **Cordon** | BGM closes blocks. Civilians moved, a perimeter stands, licensed traffic only. Visible from outside; the news carries it. |
| 10+ | **Containment failure** | The district is **overrun**. Monsters roam between sites rather than staying at them, the cordon becomes a front line, and ordinary jurisdiction lapses. |

**A joint raid is what the city mounts to stop this, not to undo it.** BGM-coordinated, multi-guild, Ironline and Horizon and Karlov and the Coalition contributing elements under one command, state-directed at B-Rank saturation on the Section 9.4 precedent. Mounted while the cordon still holds, it can break the entrenchment and bring pressure back down. It is a campaign event with a date, a roster, a command structure, casualties and a settlement — never a Section 9.10 posting.

**Mounted too late, or not at all, the district becomes a Scar — and this world already knows what that means.** Section 9.8 is the reason: **a break spends the Gate.** The mouth collapses, so there is nothing left to close and no boss left to kill. What is loose stays loose, digs into the terrain, and is fenced rather than finished. `worlds/gatefall/210_PLACES.md` describes the Cicero Scar in exactly those terms — *"a cordoned tangle of rowhouses and light industry that a break tore through in the chaotic first months, before the Damen Avenue protocols existed to contain it properly… no boss left to kill there, only a wound the city fenced off and has spent a decade managing rather than healing."* Prague carries the Libeň Scar on the same footing.

**A Scar is permanent, and it is not a failure state to be reversed.** The core never reverts; structure inside keeps the dungeon's warp. The reclaimed edge can be licensed — BGM permits vetted contractors to run harvest work there under escort, which is how the Bearer has already worked the Cicero Scar. **A new Scar is a place added to the map, with survey and containment work, a fenced core, an edge that pays, and residents on its perimeter** who may develop the gray sleep (`200_WORLD_BIBLE.md`).

**And the terminal case is authored: the Jiu Valley Exclusion.** In 2020 an S-Rank Gate's timer ran out over a valley of a quarter-million people; roughly 31,000 died, multiple S-Ranks died in the containment attempts, and six years on it is *"fenced, patrolled, evacuated of every survivor, and worked only by rotating multinational containment operations that hold the perimeter and grind the count down a little at a time."* **Finishing it would cost more than any nation will pay.** That is what an unanswered containment failure becomes at S-Rank, and it is why break timers are taken seriously in every agency on Earth.

**Every threshold this section crosses also feeds the escalation ramp** (Section 9.2.2): Strained is worth +1, Cordon +3, and a new Scar +8 toward the next tier of Section 9.2.1's distribution. A city that keeps losing districts does not merely have worse districts — it gets a worse world, sooner. **The pressure track and the ramp are the same story told at two scales**, and neither has a downward branch that the other lacks: pressure falls with clear weeks, and the tier never does.

**So the map is allowed to get permanently worse**, on the world's own terms rather than a new vocabulary. Places inside a Scar become unreachable, entities living there are displaced or lost, threads anchored there are cut, and Section 7.5 supply sources inside stop producing — while the edge may become a licensed work site that did not exist before. The Bearer declining to intervene is a legitimate choice with a consequence, not an interruption the fiction routes around.

### 9.1.4 Major World Events — Rolled Weekly

The daily table in Section 9.1.2 is the city being a city. This is the world changing shape, and it runs on a slower clock: **one d100 on the first tick of each in-fiction week.**

| d100 | Event |
|---|---|
| 01–55 | **The world holds.** Ordinary week; the daily table still runs. |
| 56–63 | **A new awakened of note.** Someone measures at C-Rank or above on intake and the trade notices. An A- or S-Rank awakening is national news, a name everyone learns in a week, and a recruiting war between all four guilds. |
| 64–71 | **A guild rises.** A new charter files — a splinter of an existing guild, a foreign branch opening, or a crew that got big enough to incorporate. It competes for the same contracts and changes the contest rates. |
| 72–78 | **A guild falls.** Bankruptcy, a scandal, a mass-casualty raid, or a licence pulled. Its contracts, bench and obligations go somewhere; its people need work this week. |
| 79–85 | **Political or regulatory upheaval.** BGM policy shifts, legislation moves, an inquiry opens, an international body rules. Rates, floors, licensing or liability change — and Section 9.4's numbers are the kind of thing that can move. |
| 86–91 | **A standing Gate thread opens.** A Gate that does not resolve in a day: an A- or S-Rank detection under a long countdown, an anomaly that will not close, a site that reopens after being cleared. It becomes a named thread the world watches, not a posting. |
| 92–96 | **Escalation elsewhere.** Another metro has the crisis — Prague, a foreign branch, a district on the far side of Chicago. It pulls resources out of his city and thins the response here, raising pressure everywhere. |
| 97–00 | **Something the world has not seen before.** A first: a new archetype, a monster that behaves wrongly, a Gate that does something no record describes. **Author it, do not defer it**, and let it be genuinely unprecedented rather than a bigger version of a known thing. |

**These are threads, not incidents.** A guild falling is not a sentence of news; it is a change to who holds contracts, who is hiring, whose bench is available, and what the board looks like for weeks. Each rolls its own siting on the standard bands for whether the Bearer is near it, but **an event elsewhere still changes the world** — that is the difference between this table and the daily one.

**Nothing here waits for the Bearer to be interested.** A new S-Rank awakening happens whether or not he hears about it; a guild collapses whether or not he had contracts with it. The tick reports what happened, and he finds out the way anyone finds out.

### 9.1.5 Where a World Event Lands

A rolled event that changes nothing durable did not happen. Sections 9.1.2 and 9.1.4 produce guild collapses, policy shifts, awakenings and openings — and through 1.78 every one of them was narration with nowhere to go, which is the same defect as a tick that moves a timestamp and rolls nothing.

**Every event resolves to at least one durable landing, or explicitly to none.** The landings already exist; none of them is new here:

| Landing | What goes there | Authority |
|---|---|---|
| **Supply opening** | Work that now exists — a roster place, a commission, a contract, an escort | `available` on a Section 7.5 source |
| **New supply source** | An actor who now generates work and did not before | Section 7.5, cadence derived from canon |
| **Standing need** | An actor who now wants something — short a striker, needs a mender, hiring | Section 7.6, Decision 088 |
| **Objective** | An obligation or goal the Bearer now carries or could take | `140_OBJECTIVES.md` |
| **Entity change** | Someone new exists, moved, rose, fell, or died | The campaign's NPC ledger |
| **World fact** | Common knowledge the city now holds | Section 20.1, the world ledger |
| **None, stated** | Genuinely fiction-only — colour with no durable consequence | Written as `none` with its reason |

**`none` is a legitimate landing and must be written as one**, on the same discipline as an empty supply advance and a tick that rolled nothing. What is forbidden is silence: an event with no recorded landing is indistinguishable from an event that was never rolled.

**Worked routing, so this is not left to taste:**

- **A guild falls** → its bench is suddenly available (*standing needs* for the hunters now looking, *supply openings* where its contracts transfer) and its collapse is a *world fact*.
- **A new awakened of note** → an *entity*, and if they are recruiting or being recruited, a *standing need* on whoever wants them.
- **Regulatory action** → a *world fact*, and where it obliges the Bearer specifically, an *objective*.
- **Market movement** → a *world fact*; where it opens or closes work, a *supply* change.
- **A non-Gate opportunity** → a *supply opening* on the source that generated it, and a *new source* if none existed.
- **A standing Gate thread** → an *objective*, because it persists and can be engaged, and it is **not** a Section 9.10 posting.
- **Aftermath** → usually a *world fact*; where someone is left needing something, a *standing need*.

**None of this creates a System quest, and that boundary is the reason this section exists rather than an eighth quest type.** Section 14.4 states what the System knows — Bearer state, quest state, its shop stock, and Gate state once resolved — and states that it does **not** know NPC minds or hidden identities. A quest about a guild's finances or a contact's motives would require the System to know something it is authored not to know, which is the same violation as an NPC citing a Bearer-only quantity. **The world generates work, obligations and news; the System measures the Bearer.** These are different surfaces and stay that way.

**A consequence worth stating plainly:** non-Gate content earns no System XP. Progression stays tied to what the System can measure, and an investigation that pays in money, standing and access pays in those rather than in levels.

## 9.2 Rank Frequency — and the Escalation Ramp

When a Gate opens, its true Rank follows the distribution of the world's **current escalation tier**. Most Gates are E and D; an S-Rank Gate is a once-in-a-long-while, world-news event. **Both of those statements are less true every year, and that is the point.**

**Through Profile 1.92 this section stated one distribution as a constant, and `200_WORLD_BIBLE.md` has always said it is not one (1.93).** The Bible's 2026 timeline row reads *"the worldwide break rate is at an all-time high and still climbing,"* its owner-facing Section 9 states outright that the rate is a **countdown on a geometric curve** along which *"Gates get denser, Ranks climb, breaks grow more frequent,"* and its third planted clue-line is a leaked analyst chart showing break frequency **doubling on a fixed interval**. A flat table makes every one of those unplayable: there is no doubling to chart, no climb to notice, and a hundred in-fiction days had passed inside a world whose central mystery is that it is accelerating. **The numbers below are not new content. They are the existing distribution placed on the curve it was always one point of.**

### 9.2.1 The tiers

| Tier | Era | Chicago / day | Prague / day | E | D | C | B | A | S | Anomaly band |
|---|---|---|---|---:|---:|---:|---:|---:|---:|---:|
| **I** | 2016–2020 | 1d4+1 | 1 | 60% | 24% | 11% | 4% | 0.9% | 0.1% | 97–00 |
| **II** | 2021–2025 | 1d4+2 | 1d2 | 55% | 25% | 13% | 5.5% | 1.3% | 0.2% | 95–00 |
| **III** | 2026 — the flat decade's end | 1d4+3 | 1d2 | 50% | 25% | 15% | 7% | 2.5% | 0.5% | 93–00 |
| **IV** | **the ramp bites** | **1d4+3** | **1d2** | **46%** | **25%** | **16%** | **8.5%** | **3.5%** | **1%** | **91–00** |
| **V** | not a coincidence any more | 1d4+4 | 1d2+1 | 42% | 24% | 18% | 10% | 5% | 1% | 90–00 |
| **VI** | the trade stops pretending | 1d4+4 | 1d2+1 | 37% | 23% | 19% | 12% | 7% | 2% | 88–00 |
| **VII** | the shoulder | 1d4+5 | 1d2+2 | 33% | 22% | 20% | 14% | 9% | 2% | 86–00 |

**Tier III is the pre-ramp constant** — exactly what this profile stated as law for its whole life — and it is where the *historical* half of the table ends. Tiers I and II are the retroactive explanation of the Bible's own timeline.

**The forward half was two rungs until 1.95 and is now four, because two was a cliff.** Going III → IV → V meant the world's character changed twice in the life of a campaign, each time by a large jump, with nothing in between to notice. Four smaller rungs reach the same endpoint in stages the trade can feel arriving: **tier IV barely moves the volume and moves the *character*** — an A-Rank Gate goes from one a week to one every four days, an S-Rank from one a month to one a fortnight, and the anomaly band opens two points — while **VII is the same shoulder the old tier V described.** The endpoint distribution is unchanged; only the path to it is subdivided.

**What actually doubles is the top, not the total.** Chicago's daily count rises only 5.5 → 7.5 across the whole forward ramp (about 36%), while **A-Rank density climbs 0.14 → 0.19 → 0.33 → 0.46 → 0.68 per day** and **S-Rank 0.028 → 0.055 → 0.065 → 0.13 → 0.15**, each roughly ×5 end to end. E-Rank density is almost flat (2.75 → 2.5 per day). This is what *"Ranks climb"* means, and why the trade reads it as a change in the **character** of the work long before it reads a change in the volume: the bottom of the ladder is the same job it always was, and the top of it arrives several times as often.

**The Section 9.1 header rates are tier III–IV figures.** Chicago ≈35 and Prague ≈8 Gates a week are the aggregates at the first two rungs — tier IV raises the Ranks without raising the count — and they move with the tier from V onward rather than being independent constants.

### 9.2.2 What advances the ramp

**The tier is tracked state on the world ledger** — `escalation_tier` and `escalation_credit` — on the Section 9.1.3 pattern: values the world carries, not rolls. **It only ever rises.** There is no mechanism in this profile that lowers a tier, and none is coming; the curve has no downward branch.

**The clock is the floor, and it is fixed.** The tier advances on schedule whatever anyone does, at **halving intervals** measured in campaign time:

| Tier reached | No later than | Interval |
|---|---|---|
| **IV** | **on adoption** | **immediate** |
| **V** | **2026-08-29** | 5 in-fiction days |
| **VI** | **2026-09-02** | 4 more |
| **VII** | **2026-09-05** | 3 more |
| *(the ramp's end)* | **2026-09-07** | 2 more |

**Tier IV lands the moment this version is adopted, and that is a correction rather than a gift (1.95).** The world has spent **33 in-fiction days** under a profile that declared the break rate *"at an all-time high and still climbing"* and then implemented it as a constant. Run the ramp's own arithmetic across those days — roughly 1.1 breaks a day at Chicago's authored take rates — and the accrued credit is comfortably past one rung. **Starting at III would mean the ramp's first act was to certify that nothing had happened while the Bible said something was happening the whole time.** Adoption therefore opens at **IV**, and nothing is recomputed to get there: no Gate already rolled changes, no break is re-settled, and the tier is simply set to where the elapsed clock already put it.

**The cadence is set against how fast this world is actually played.** 1.93 first authored this schedule at six months, three months and six weeks — intervals borrowed from the Bible's decade-scale 2016–2026 timeline — and 1.94 cut the first rung to fourteen days. Both were still slower than the story: `gatefall_pendragon_001` covered level 1 to 48 and an unawakened E-Rank card to a carded S-Rank inside those 33 days, so a world that changed once a fortnight would change perhaps twice in the whole campaign. **The Bible's curve is geometric, not calendar-bound**, and the interval that matters is the one the protagonist experiences: a world that produces a champion in a month is one the Assay is escalating against in days.

**Pressure pulls it forward and never pushes it back.** `escalation_credit` accrues on the world's own losses, and at **6 the next tier arrives immediately**, resetting the credit to 0. The schedule above still applies independently — whichever comes first:

```text
     +1   any break, any Rank, anywhere in the jurisdiction
     +2   a break at C-Rank or above                (in addition to the +1)
     +3   a district reaches Strained               (Section 9.1.3, pressure 4)
     +5   a district reaches Cordon                 (Section 9.1.3, pressure 7)
     +8   a new Scar                                (Section 9.1.3, containment failure)
     +3   a Section 9.1.4 roll of 92-96             (escalation elsewhere)
     +5   a Section 9.1.4 roll of 97-00             (something unprecedented)
```

**Every break credits, including the ones the city absorbs, and 1.93 had this wrong.** That version credited only losses — a cordon, a Scar, a Rank the response could not reach — on the reasoning that a contained break is the system working. It is, and it is **also the signal**: `200_WORLD_BIBLE.md` Section 9 says *"breaks grow more frequent"* and its planted clue-line is a chart of **break frequency**, not of districts lost. The thing the analyst plotted is the count. Crediting only catastrophes meant the ramp read everything except the one series the Bible says the world is measuring, and at Chicago's authored take-rates that made the pressure route dead: an A-Rank posting is taken at 90% a day against a three-day timer, so it survives to break about once per **seven thousand days**, and the line pricing it was one no world would ever reach.

**What this is worth in practice.** Chicago's own take rates leave roughly **1.1 breaks a day** across the metro — overwhelmingly E and D, exactly as Section 9.4 says cheap jobs sit. That is about **+1.2 credit a day**, so a city under ordinary pressure crosses **6 in about five days**, against clock rungs of five, four, three and two. **The two routes are deliberately the same order of magnitude**: the schedule usually leads by a nose, a bad week beats it, and neither is decorative. A metro that suddenly starts holding its board falls back to the clock; one that cordons a district or loses a Scar jumps a rung outright, since a Scar alone is +8 and clears the threshold on its own.

**The threshold was 20 through 1.94 and is 6 from 1.95**, for the same reason the intervals shrank: against rungs measured in days rather than months, a 20-credit gate took seventeen days to fire and the pressure route was decorative again. The credit values are unchanged; only the bar is.

The Bearer declining to intervene remains a legitimate choice with a consequence, exactly as Section 9.1.3 already says.

**The ramp reads the clock and the world. It never reads the Bearer, and that is a rule rather than an oversight.** A distribution keyed to his System Rank or his Combat Tier would mean **levelling makes the world worse**, and the optimal play under it is to stop levelling — an incentive pointed directly against the campaign, and against a System whose whole function is to accelerate him. `200_WORLD_BIBLE.md` Section 9 is explicit that the schedule is *"keyed to how long a world has resisted producing a viable champion"*: **time, not the candidate.** Content sized to the Bearer is Section 9.12's business and is deliberately a separate mechanism with a separate cause; nothing in this section may be rewritten to read his ledger.

**Beyond tier V this profile authors no further distribution.** What the curve does past its shoulder is campaign canon under owner authorship (`200_WORLD_BIBLE.md` Section 9) and is not a table. A Runtime that reaches that date and needs a number asks the owner; it does not extrapolate one.

**The world does not know any of this.** No instrument reads a tier, no agency has the model, and the profile's own tier table is not a thing any character can cite. What the world has is the observation — rates rising, Ranks climbing, closed emergency sessions, and no explanation on offer. **A Runtime surfaces the tier only as its symptoms**, on the Section 20.5 principle that numbers stay out of the fiction.

## 9.3 Break Timers

From detection, an uncleared Gate runs a countdown to a **dungeon break** (Section 9.8). Higher-Rank Gates break faster — the pressure behind them is greater.

| Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---|---|---|---|---|---|
| Days from detection to break | 7 | 6 | 5 | 4 | 3 | 2 |

The timer starts at detection, not at first entry. A Gate cleared before its timer expires closes safely on the boss kill; a Gate whose timer runs out breaks.

**Why the worst Gates give the least warning.** The timer is not a schedule; it is the barrier failing. A Gate's countdown is read from its mana pressure (the same reading that Ranks it), and a higher-Rank interior strains harder against the barrier that contains it — an E-Rank Gate is a sealed jar, an S-Rank Gate an overpressured boiler. This is the single fact the world's hunter politics is built on: no state can *assemble* an S-response inside two days, so an S-Rank Gate is answered by whoever is already in range — which is why S-Ranks are pre-positioned strategic assets counted by name, why the S-Rank draft binds them to emergency mobilization, why a state with one S-Rank guards where that one sleeps, and why an S-Rank Gate beyond the reach of a standing response becomes a Jiu Valley. An S-Rank Gate response is never "every S-Rank in the country"; it is the nearest adequate force plus **military containment** — cordon, evacuation, and holding the perimeter, since conventional arms cannot *kill* what a break releases (`GTF-OVR-003`) — of whatever the force cannot reach in time.

## 9.4 Party Minimums — Law and Practice

Regulation sets the minimum sanctioned party to legally enter a Gate by Rank; the trade's posting floors sit above the law at every Rank. Entering under the **legal minimum** is an offense in both jurisdictions (Section 13). **Posting floors** are enforced by the boards themselves: no licensed board — BGM auction, co-op desk, or guild dispatch — posts a contract below its floor, and none accepts a solo bid on an unconfirmed Gate or any Gate assessed D or above.

**The legal minimum is a *combat* requirement.** Every count in the "legal minimum" column below means **combat-rated hunters of adequate rank** — the strike element that must be able to fight the Gate's population (Section 9.7). It says nothing about the total headcount that walks through the mouth.

| Rank | Legal minimum — combat-rated hunters | Posting floor (total, incl. support) |
|---|---|---|
| **E-Rank–D-Rank** | None (a lone licensed hunter may enter) | **8** — a strike element of ≥5 plus support (waiver floor: 5, see below) |
| C-Rank | 4 (C-Rank-capable) | 10–12, strike + support |
| B-Rank | 8 (B-Rank-capable, incl. ≥1 B) | 14–18 |
| A-Rank | 16 (incl. at least one A-Rank) | 24–32 |
| S-Rank | National-asset operation (state-directed) | State-directed |

The gap between the columns is deliberate: the legal floor is the fighting strength; the posting floor is the fighting strength **plus the support crew who make a clear pay.**

**What *"-capable"* means, exactly (authored at 1.64).** A hunter counts toward a Gate's legal minimum when their **card Rank is at the Gate's Rank or one Rank below it** — nothing else. A C-Rank counts toward a B-Rank Gate's eight; a D-Rank counts toward a C-Rank Gate's four; an E-Rank counts toward neither. Capability here is a **card threshold, not a judgment**: no board, regulator, or party leader assesses whether a particular hunter is *really* ready, because a legal minimum that turned on opinion would be unenforceable at the mouth and unprovable afterward, which is the whole reason the law counts cards.

**The `≥1` clauses are what stop a party made entirely of the tier below.** At B-Rank and A-Rank the table requires at least one hunter carded *at* the Gate's Rank, so eight C-Ranks cannot legally take a B-Rank Gate on their own — seven may, with one B among them. **C-Rank carries no such clause and this is deliberate**: four D-Ranks may legally enter a C-Rank Gate, because C is the trade's ordinary working tier and D-Ranks doing C-Rank work is the common career rather than the exception (see the support-tier paragraph below). The law's floor rises where the beasts stop being survivable by the tier beneath; it does not rise merely because a Gate is worth more.

**Why one Rank and not two.** Section 2 fixes Rank at Awakening and Section 4 makes Rank the whole of an awakened's capability, so a two-Rank gap is not a hard fight — it is a different weight class, and a party built on it would be a casualty report the law had signed off on. One Rank below is the stretch the trade already makes every day; two is the thing the minimum exists to forbid.

**This is a legal threshold, not a survival guarantee.** Meeting the minimum makes an entry lawful. It does not make it wise, and Section 9.7's population formula does not soften for a party that scraped its floor.

**Support crew may be any rank — even far below the Gate's Rank.** Miners, harvesters, and porters do not fight, so they are not held to the combat requirement. They ride in **under the strike element's protection**: they cross the mouth after the line has secured ground, work only in the zones the fighters have cleared, and withdraw the moment the line moves or bends. An **E-Rank can legally and sensibly work a C- or B-Rank Gate** — cutting crystal worth a fortune he could never earn fighting — precisely because he is not there to fight. The strike element carries the combat rating for everyone; the support crew carries the tonnage out. This is the arrangement that puts a weak hunter on a strong Gate and pays him for it.

**This is what most low-rank hunters actually do.** The world's floor is not a floor of weak *fighters* — it is a support tier. Most E- and D-Ranks make their living as **miners, harvesters, and gear-porters** on higher-Rank clears, not as front-line strikers expected to trade blows with beasts that would kill them. Fighting below one's safe Rank is the *exception* an ambitious hunter chooses; the ordinary career of a low-rank licensed hunter is support work, and it is honest, needed, and dangerous enough — a support crewman caught when a line breaks dies exactly as a striker would (Section 9.8). A standard clear therefore fields a **strike element** (combat-rated, Section 13.5) and a **support element** (any rank — miners cutting the deposits of Section 11.1, plus porters who haul loot and carry the fighters' spare gear and consumables), the support paid a harvest share rather than a full combat split (the standard support-contract terms — 20% of the clear, output-weighted — are Section 13.2).

**The under-strength waiver.** A low-rate E- or D-Rank contract that has sat undersubscribed may post under a signed under-strength waiver at an absolute floor of **five** — no support element, everyone doubling roles, every signature acknowledging the risk. Cheap jobs sit, and thin crews take them; the waiver tier is where the trade's casualties concentrate, and everyone signing one knows it. Hunter insurance is void from the moment a hunter crosses a threshold alone. Solo entry of a populated Gate remains *legal* at Ranks E-Rank–D-Rank — as a matter of law, the government does not stop anyone from dying — and is understood by the entire trade as desperation or a death wish; the Lone Clear title (Section 16) is legendary precisely because its feat is one the working world considers suicide. The solo format that actually exists is not a Gate at all: it is the instant dungeon (Section 17), and it belongs to exactly one person on Earth.

### The high-Rank sponsor exception (Profile 1.15)

A **confirmed** low-Rank contract may be posted to, and bid by, a party of **any size** — including two — when the party carries a licence far enough above the Gate to make the headcount irrelevant:

| Gate assessment | Sponsor requirement | Minimum party size |
|---|---|---|
| **Confirmed E-Rank** | at least one **C-Rank or higher** licensed member | none |
| **Confirmed D-Rank** | at least one **B-Rank or higher** licensed member | none |

- **Confirmed assessments only.** The exception reads the assessment's confidence (Section 9.5), not its posted number. An **unconfirmed** Gate keeps the ordinary floors — 8, or 5 under the under-strength waiver — and no board accepts a small bid on an unconfirmed posting or on anything assessed D-Rank or above. This is the whole safety of the rule: a sponsored pair can never be surprised by a true Rank two bands above them, because the assessment they bid on was already settled.
- **A sponsored posting is sanctioned, so it is insured.** The sponsor's licence is what makes the clear legal to staff at that size, and hunter insurance applies to every member exactly as on any full-floor contract. The solo-entry void above is unchanged and still applies to anyone crossing a threshold outside a sanctioned posting.
- **It changes no legal minimum.** E-Rank–D-Rank already require no combat-rated minimum (Section 13.3); this clause moves the *board's* floor, not the law's.
- **Ordinary terms otherwise.** Standard party contract terms, declaration at exit, liability waivers, and beneficiary rules apply unchanged (Section 13.2). The sponsor holds no automatic leader's share; the split is whatever the contract says.
- **The trade's opinion is its own.** Boards post these; veterans still read a two-person clear as thin, and a sponsor who loses a low-Rank member on one answers for it socially long before anyone answers for it legally.

## 9.5 Confidence and the True Rank

An assessed Rank carries a **confidence**:

- **Confirmed** — established by an instrumented survey. The survey drone or licensed surveyor has read the interior; the Rank and archetype (Section 10) are known before entry.
- **Unconfirmed** — a remote reading only (mana-flux magnitude read from outside). The Rank is a best estimate and the archetype is unknown.

A **confirmed** Gate is entered at its stated Rank. An **unconfirmed** Gate resolves its true Rank on the **first entry**, on a d100:

| d100 | True Rank |
|---|---|
| 01–15 | One Rank **lower** than assessed |
| 16–70 | **As assessed** |
| 71 – (A−1) | One Rank **higher** than assessed |
| **A – 00** | **Anomaly** — roll on the anomaly table (Section 9.6) |

**`A` is the anomaly band of the world's current escalation tier (Section 9.2.1)**, and it is the one number in this table that moves. At the present tier III it is **93**, so this table reads exactly as it has always read: `71–92` one Rank higher, `93–00` anomaly. At tier IV it is 90 and at tier V it is 86, and the *one Rank higher* band absorbs the difference — the ladder's shape is unchanged and only the tail thickens.

### 9.5.1 The Bearer's own band — strangeness concentrates around him (1.95)

**A Gate the Bearer personally enters rolls the wider of two bands**: the world's tier band above, and his own, read from his **System Rank**.

| Bearer's System Rank | His band | Anomaly chance |
|---|---|---:|
| **E – C** | the world's tier band, no uplift | tier |
| **B** | 88–00 | 13% |
| **A** | 80–00 | **21%** |
| **S** | 70–00 | **31%** |

**This is the audition mill, and it is authored rather than invented.** `200_WORLD_BIBLE.md` Section 9 states that the rising break rate *"is, among other things, an audition mill"* and that the process *"engineers auditions — Gates seeded to mislabel, red-gate anomalies, crucibles built to look survivable and not be"*, then *"keeps steering him into exactly the ordeals that make him stronger."* A candidate the process has invested in does not meet the world's average Gate. **He meets the strange ones, and the further along he is, the less of a coincidence that becomes.**

**It is invisible, and that is what makes it a clue rather than a rule.** Another crew clearing the same posting rolls the world's tier band; nothing about the Gate is different until he is the one who walks in. What accumulates is a **pattern in his own record** — a hunter whose jobs go wrong far more often than the trade's do — which is the third planted clue-line arriving by a second road, and the sort of thing an appraiser, a guild, or a regulator eventually notices about him (Section 19.1).

**It reads System Rank, not Combat Tier, and this is the one place that is deliberate.** Section 9.12's audition reads Combat Tier because it is *sizing content* and needs the honest measure of what can test him. This clause is not sizing anything: it is how much attention the process is paying, and the process is watching a **candidate's progression**, which is the ladder System Rank tracks. At the live campaign's System Rank A that is **21% on every Gate he enters against the world's 8%** — a red gate on about **one Gate entry in sixteen**.

**And it does not touch Section 9.2's ramp, which still never reads him.** The two are separate on purpose: the ramp governs *what the world produces*, and keying that to the Bearer would make levelling worsen the world for everyone. This governs *what he walks into*, where the incentive points the other way — a Bearer who grows meets more danger, which is the thing he is being grown for.

**Why the tail is what thickens.** A Gate's assessed Rank is read from mana pressure, and the punctures are less stable the further along the ramp the world is. An anomaly is not a rarer version of a Rank swing; it is the reading failing to describe the thing at all, and a world whose apertures are being opened faster and wider produces more readings that fail. **The band is therefore a symptom the trade can feel before anyone can explain it** — appraisers who trust their instruments less each year, and a slowly rising share of jobs that were not what the card said.

**Flux Sight** converts an unconfirmed reading to confirmed by capability and bypasses this roll within its authored Gate band: at E-Rank it covers Gates at or below System Rank; at D-Rank it also covers Gates one Rank above (Section 4.4).

**An unconfirmed Gate that breaks without ever being entered rolls its true Rank at the break (1.74, `F-004`).** Same d100, same table, same anomaly band — **the roll is discovery, not creation.** A Gate's true Rank exists from the moment it opens; entry was only the ordinary way of finding out, and a puncture nobody paid to walk into does not become whatever the assessment guessed simply because no one looked.

**What the world responded to is the assessed Rank, and that is the whole danger.** The board priced it, the institutions staffed the cordon, and the first responders sized their answer to the posted number. When the true Rank comes back **higher**, or lands on Section 9.6's anomaly table, the response already committed is the response that is wrong — and Section 9.4's own economics guarantee this will not be rare, because cheap jobs sit and the Gates that sit are the ones that break.

**This supersedes the per-instance ruling at `EVT-000270`**, which settled `GB-02` at its assessed D-Rank on the reasoning that Section 9.10's deadline settlement has a *no roll* character. That ruling was explicitly made for that instance, and the case for it was strongest while breaks never reached the Bearer. **Profile 1.73's world tick sites breaks against his own day**, so a break that can only ever resolve as its assessment is a world event with no surprise in it — the same defect `F-034` was raised about, one section over. `GB-02`'s historical resolution stands as ruled; the rule governs forward.

**It also closes the asymmetry the flag named.** An *entered* unconfirmed Gate could anomaly-roll to a Rank swing that an unentered break could never produce, which made entry the only route to the most interesting outcome. Both roads now reach the same table.

**The ladder clamps at both ends.** The true-Rank roll can point past the ends of the E-Rank–S-Rank ladder; when it does, it resolves to the nearest real Rank rather than an impossible one:

- A result **below E** (a "one Rank lower" on an assessed-E-Rank Gate) resolves as **E** — there is no sub-E-Rank Gate; the remote reading was merely generous, and the interior is a true E.
- A result **above S** (a "one Rank higher" on an assessed-S-Rank Gate) resolves as an **S-Rank anomaly**: treat that 71–92 outcome as though it had rolled 93–00 and roll on the anomaly table (Section 9.6). There is no supra-S-Rank, so the excess pressure surfaces as an anomaly instead.

## 9.6 The Anomaly Table

A 93–00 on the true-Rank roll is an **anomaly**. Roll again on a d100:

| d100 | Anomaly |
|---|---|
| 01–50 | **Population one Rank above** the assessment (Rank as assessed, but populated as the next Rank up). |
| 51–80 | **Red gate** — the Gate seals on entry and cannot be exited until its boss dies; there is no retreat. |
| 81–95 | **Archetype twist doubled** — the interior archetype's mechanical twist (Section 10) applies at double effect. |
| 96–00 | **Dungeon-break-in-progress on arrival** — the Gate is already breaking (Section 9.7); its population is pouring out as the party arrives. |

**At escalation tier V the 96–00 result is replaced (Section 9.2.1).** On the ramp's shoulder the punctures stop behaving as separate holes, and a 96–00 becomes a **confluence**: two interiors joined at a seam, each with its **own** archetype (roll the d8 twice) and its **own** full Section 9.7 population, sharing one mouth. **The mouth does not close on the first boss.** Killing one interior's boss collapses that half and starts no clear window; the Gate holds until **both** are dead, and only then does Section 9.7's two hours begin. A party that clears what it came for and turns to loot is standing in a Gate that is still open, still populated, and still running its Section 9.3 timer.

This is the only entry on this table that a tier gates, and it is here rather than at tier IV because it is the first thing the world will see that no protocol was written against — the Damen Avenue lesson failing on a case it never imagined. **A Runtime narrates it as apertures behaving wrongly, never as a countdown reaching a stage**; the cause is owner-facing (`200_WORLD_BIBLE.md` Section 9) and surfaces only as consistent in-world clues.

## 9.7 Population

**A Gate is populated by default. Emptiness is an authored exception carrying an in-world cause — and in Gatefall, an empty-looking dungeon is itself a warning sign.**

Every Gate of Rank **G** is populated on this formula:

```text
3d6 common beasts (Rank G)
+ 1d2 elites (Rank G, ×2 Rank Health)
+ 1 boss (Rank G, ×4 Rank Health)
```

- **Common beasts** have plain Rank-G Rank Health (Section 6.1) and award Rank-G kill XP (Section 3.3).
- **Elites** carry **×2** Rank Health and award **×2** kill XP.
- The **boss** carries **×4** Rank Health, awards **×4** kill XP, and deals damage at **its own Rank's baseline** like every other creature of its Rank (Section 6.2) — a Rank is an honest statement of what hits you; a D-Rank Gate's boss hits like a D. Killing the boss **clears the Gate** — it collapses the instance and awards the Gate-clear milestone XP (Section 3.4).

**A boss fights with a signature.** A boss is never a bigger common. At instantiation it carries one authored **signature method**, consistent with its form and the Gate's archetype — a sweeping tail that threatens everything in its arc, a breath that fills a corridor, a burrowing charge, a coil-and-drown — capable of endangering **several hunters in a single exchange**. Each endangered hunter resolves against it separately (own roll, own damage at the boss's Rank); the signature multiplies *who is in danger*, never the per-hit number. And a boss is played with the cunning of an apex thing on its own ground: it ambushes, uses terrain, and picks targets — the mender first, the wounded first — rather than trading blows with whoever stands closest. Its menace is reach, endurance, intent, and the fact that nothing closes the Gate but its death; Rank honesty holds at every point of contact.

For loot provenance, instantiation also records the boss's exact fictional form plus two normalized facets. These classify authored facts; they are **not rolls** and do not replace the creature's description or signature:

| Body family | Covers | Boss-Imprint stat resonance |
|---|---|---|
| **Brute** | massive, load-bearing, crushing forms | +1 further Strength |
| **Predator** | fast hunters, pouncers, stalking quadrupeds | +1 further Agility |
| **Carapaced** | plated, shelled, stone-skinned forms | +1 further Vitality |
| **Winged** | flying, gliding, aerial forms | +1 further Perception |
| **Serpentine** | coiling, swimming, many-jointed forms | +1 further Agility |
| **Arcane** | caster-like, crystalline, incorporeal, or otherwise mana-dominant forms | +1 further Intelligence |

| Signature mode | Covers |
|---|---|
| **Impact** | slam, charge, quake, knockdown, crushing force |
| **Edge** | claw, bite, horn, blade, tearing or puncture |
| **Projection** | breath, bolt, spit, beam, ranged burst |
| **Affliction** | venom, disease, drain, corrupting contact |
| **Mobility** | pounce, dive, teleport, burrow, impossible speed |
| **Control** | grapple, web, coil, fear, restraint, forced position |
| **Guard** | shell, barrier, parry, reactive armor |
| **Renewal** | regeneration, lifedrain, repair, rebirth |

Use the single body family and signature mode most responsible for how the boss actually threatens the party. A hybrid still receives one of each, fixed before combat resolution and never selected after seeing its loot.

An empty or under-populated interior is never a lucky break; it is an authored signal that something has already emptied the Gate — a break in progress, a prior party wiped, or a worse thing feeding. The Runtime treats emptiness as a clue, not an absence.

**The clear window.** Killing the boss does not snuff the instance around the victors — it begins the collapse. From the moment of the boss's death the interior holds stable for **two hours**: the window in which a party loots the dead (Section 11), treats its wounded, and walks out the way it came. Section 13.2's loot-declared-at-exit procedure presumes this window. When it ends, the mouth closes and the interior ceases to exist; anyone still inside is lost with it, and no one has ever come back. The window is two hours at every Rank. Ordinary hunters work it by watch and hard-learned habit; the System, which holds Gate state (Section 14.4), surfaces the countdown to its Bearer. A hunter may also exit a standing, uncleared Gate through its mouth at any time — the threshold bars the unawakened inward and beasts outward (Section 9.8), never the awakened out — except inside a red gate (Section 9.6), which seals until the boss dies.

## 9.8 Dungeon Breaks

While a Gate stands, its barrier contains what lives inside: beasts can no more pass the threshold outward than the unawakened can pass it inward. Only a break dissolves that barrier.

If a Gate's break timer (Section 9.3) expires before the Gate is cleared, the Gate **breaks**: its barrier fails and its **remaining population** — every monster not yet killed, boss included — pours out into the surrounding area, where it fights with none of the containment a sealed instance provides. A break is the disaster the whole regulatory apparatus exists to prevent.

**Hunters inside at the break are expelled with everything else.** The failing barrier holds nothing back, beast or hunter: a crew still inside when the timer lapses lands at the Gate site — alive if they were alive inside, wounds and all — amid the entire remaining population, in the open, with no containment and the city behind them. Ejection is survivable in principle; what follows usually is not, because the crew now stands at the center of the break it failed to prevent.

**A break spends the Gate.** The release is one-time: the barrier's failure empties the interior, and the mouth collapses once nothing remains for it to hold. A broken Gate leaves no standing portal, no instance to clear, and nothing to close — what it leaves is its released population loose in the world (the Jiu Valley Exclusion is what that population does afterward, not an open wound still feeding).

Response follows a fixed escalation order by jurisdiction:

| Jurisdiction | Response order |
|---|---|
| **Chicago** | BGM **emergency contract** issued → **nearest guild strike team** dispatched under it. |
| **Prague** | **CGA** mobilizes → **Karlov Guild** or the **nearest international branch** dispatched. |

The remaining-population rule means a Gate broken early (few kills made) is far worse than one broken after a party has fought most of the way through — what pours out is exactly what was left inside.

## 9.9 Worked Example — An Unconfirmed D Reads Worse

A Red Line contract posts an **unconfirmed D-Rank Gate**. Because it is assessed D, no legal minimum applies (Section 9.4) and a small crew takes it.

1. **Confidence → true-Rank roll.** Unconfirmed, so the true Rank resolves on first entry (Section 9.5). The d100 comes up **84** (71–92): **one Rank higher**. The Gate is truly **C**, not D — and a C-Rank Gate legally requires four licensed hunters. The crew is already in an under-strength, illegal entry without knowing it.
2. **Population.** At C-Rank the formula (Section 9.7) rolls **3d6 = 11 common C-Rank beasts, 1d2 = 2 C-Rank elites, 1 C-Rank boss** (×4 Rank Health).
3. **Archetype.** Unknown on entry because the Gate was unconfirmed (Section 10); it reveals as **Crypt** (d8 = 1) — darkness, so Perception checks to avoid ambush.
4. **Clear.** The crew fights through and kills the boss; the two-hour clear window (Section 9.7) opens, and they loot and walk out well inside it. Kill XP and the C-Rank Gate milestone (320 XP, Section 3.4) settle on the boss kill.
5. **Loot roll.** Eleven C-Rank crystals drop (one per beast, Section 11); the two elites and the boss each drop a C-Rank core (three cores). The boss-drop d100 (Section 11) comes up **52** (41–65): a **rune** teaching one authored skill.
6. **Sale.** At licensed market prices (Section 12): 11 C-Rank crystals × **$2,500 = $27,500**; 3 C-Rank cores at ≈2.5× the C-Rank crystal price (**$6,250** each) = **$18,750**. The clear grosses **≈ $46,250** in sellable crystal and core, plus the rune, which the Bearer keeps to learn a skill rather than sell.

Every step above is resolved from the tables in Sections 9, 11, and 12 — the Runtime took the Gate from posting to sold loot without inventing a single number, and the "easy D" that was really a C is exactly the kind of hazard the confidence rule exists to model.

## 9.10 The Tracked Board

Section 9.3 gives every Gate a countdown, but a countdown only means something if something is counting. A Gate the Bearer is contracted to has always had a live clock, because the contract put it in front of him. Every other Gate in the metro has had none: it entered a scene as a line on a board, the scene ended, and it stopped existing. The result is a city whose entire regulatory apparatus exists to prevent dungeon breaks (Section 9.8) and in which no break can ever occur off the Bearer's own contract. This section fixes that, and nothing else.

**This is persistence, not simulation.** Section 9.1's rates are aggregate and explicitly **not a calendar**; the Runtime still distributes Gates into the fiction as needed and never rolls the metro's ~35 weekly detections. What changes is only what happens *after* a Gate has entered the fiction: it stops evaporating.

**What becomes tracked.** A Gate detection becomes a **tracked posting** the moment it enters the fiction through an ordinary channel the Bearer perceives — the BGM ranking board, a co-op or guild dispatch posting, an auction lot, or a named NPC telling him about one. Nothing else is tracked, and the Runtime does not manufacture postings to fill the board. Between **three and six** tracked postings is the ordinary standing state for Chicago; Prague, at Section 9.1's lower rate, runs fewer.

**What a tracked posting stores.** District or place anchor, detection timestamp, assessed Rank with its confidence (Section 9.5), the break deadline derived from Section 9.3, the posting floor that applies (Section 9.4), current staffing status, and the posting body. The deadline is **derived, never authored**: detection timestamp plus the Section 9.3 days for the assessed Rank. An unconfirmed assessment derives its deadline from the assessment on the card, and a re-ranking re-derives it.

**A posting is tracked state, not a Persistent Object.** It carries a stable local board key and mints no identifier: most postings are cleared by other people and leave the board without ever having mattered individually. A posting is **promoted to an Event** at the moment it becomes campaign-durable — the Bearer bids, takes, or enters it; it breaks; or it produces a consequence the campaign will cite later — and it is allocated an identifier only then, exactly as `EVT-000051` carries the one posting that mattered.

**Staffing status** is one of `posted` (open, below floor, still attracting bids), `staffed` (floor met or a Section 9.4 waiver or sponsor exception signed), `held` (a named party has it), or `withdrawn`. This is the axis the world already turns on: Section 9.4 establishes that cheap jobs sit, that the under-strength waiver tier is where the trade's casualties concentrate, and `EVT-000051` records a real posting sitting undersubscribed at Red Line rates.

**Deadline resolution is deterministic.** When a tracked posting reaches its deadline, exactly one of the following settles, with no roll and no Runtime discretion:

- **`staffed` or `held` → cleared off-screen.** The trade did its job. The posting leaves the board and the Gate closes on someone else's boss kill. This is the ordinary case and the one that happens most.
- **`posted` → the Gate breaks** under Section 9.8, releasing its remaining population at the site. A metro this dense does not lose a Gate because the Runtime wanted a crisis; it loses one because the posting sat under its floor until the clock ran out, in a trade whose own rules say cheap jobs sit.
- **`withdrawn` → the posting leaves the board** and the Gate's disposition passes to whoever pulled it, resolved as ordinary fiction.

The institutions act before the deadline exactly as their ledgers say they do — BGM escalates, raises the rate, or issues an emergency contract (Section 9.8), and a guild dispatch may take a lot it had been ignoring. Those interventions change a posting's **staffing status**, which is how a break gets averted. They are not a guarantee: `EVT-000052`'s auction war is authored to pull mid-tier bids away from exactly these lots, and an office under the staffing pressure `EVT-000051` records does not catch everything.

**What this does and does not create.** A break is a world event, not a quest. If it fires where the Bearer can perceive and reach it, Section 8.4.2's four criteria are then evaluated **on their own terms and unchanged** — a break is a Gate-sourced immediate threat to life, so an offer becomes possible, but proximity, an actionable route, and a statable objective must all still hold, and the Runtime never adjusts a posting's staffing, deadline, or location to make one fit. If the Bearer is across the city, it is news he hears about, and the world is worse for it whether or not he was there.

**The Bearer is not obligated to any of it.** A posting sitting two days from its deadline is information and pressure, never a summons. Declining a job, standing down for crew training, or simply working elsewhere is an ordinary choice, and a Gate that breaks because nobody took a thin contract in a bad district is the world behaving as authored — not a punishment aimed at him.

## 9.11 Directed Assignment — how the top of the ladder actually reaches a hunter

**The board is where cheap work sits, and Section 9.1 already says so in numbers.** Composing Section 9.2's Rank distribution with Section 9.1 step 4's trade-takes-the-job rates gives the board a hard ceiling that nobody authored and everybody would have to live under:

| | A-Rank | S-Rank |
|---|---|---|
| Chicago Gates per day (1d4+3, avg 5.5) at the Section 9.2 rate | ≈ 0.14 | ≈ 0.03 |
| Still `posted` after one day (taken at 90% / never posted) | 10% | — |
| **Reaching a freelancer at all** | **≈ once per 73 days** | **never** |
| After Section 9.1 step 2 siting (30% on route or within reach) | **≈ once per 240 days** | **never** |

Both halves of that are correct on their own. Section 9.2 is honest that an A-Rank Gate is rare; Section 9.1 step 4 is honest that *"every major guild wants it."* **The ceiling is what they compose into**, and a hunter who has outgrown B-Rank work has no route to anything harder for as long as he is waiting at a board. Raised as `F-046`.

**The board was never the channel for this work.** Section 9.4 rates an S-Rank Gate a *"National-asset operation (state-directed)"*, Section 9.1 step 4 records S-Rank as *"state-directed; never sits on a board"*, Section 9.3 names an **S-Rank draft** binding S-Ranks to emergency mobilization, and Section 12.3 prices an A-Rank contract at *"national-asset scale — no posted band."* **Four sections describe a channel that reaches individual high-Rank hunters directly, and none of them authored it.** This section does.

**The call list.** BGM Region V (Chicago) and the CGA (Prague) each maintain a standing list of hunters **carded A-Rank or S-Rank** (Section 19) whose Section 19.4 contract cap permits the Rank in question. The list is the regulator's, not a guild's, and it runs **beside the board rather than through it**: a guild wins an A-Rank lot at auction, and a regulator calls a name. A hunter concealing his capacity behind a low card is not on the list at all — Section 19.4's trade is unchanged and this is one more thing carding up buys.

**Assignments are rolled on the world tick, never narrated at need.** Each A-Rank or S-Rank Gate the Section 9.1 tick rolls in a jurisdiction generates one **directed assignment** in addition to whatever the board does with it. For each, roll **d100** for whether it reaches the Bearer, applying the modifiers below to the roll before reading the table:

```text
     01-25   NAMED             the response is assembled around him; the call
                               names him and expects an answer
     26-50   OFFERED           the call comes as an ask; take it or decline
     51-00   NOT THIS ONE      assembled without him. He hears about it, and
                               who took it is news (Section 9.1 step 4)
```

| Modifier | To the roll |
|---|---|
| A standing cooperation arrangement with the issuing regulator is live | **−20** |
| He is the only hunter carded at the Gate's Rank inside its Section 9.3 response window | **−20** |
| His Section 19.4 contract cap bars the Gate's Rank | **+40** |

**Refusal, and where the draft bites.** Three tiers, and only these:

- An **offered** assignment is declined freely. It costs the work and the pay, and nothing else.
- A **named** assignment on a standing Gate may be declined at a **standing cost** with the issuing regulator — the cooperation arrangement is the thing at risk, resolved as ordinary fiction against that entity's own ledger.
- A **named** assignment under **emergency mobilization** — a break in progress (Section 9.8), or an S-Rank Gate inside its two-day Section 9.3 timer — **is the draft**, and refusal is a licensing offense on the same footing as refusing a court-ordered re-assessment (Section 19.4). The regulator that can compel a measurement can compel a carded S-Rank to a national-asset operation. This is the price of the card, and it is the reason a hunter might rationally refuse to be measured up.

**What this does not do, stated so it cannot be read loosely.**

- **It creates no Gate.** It routes a Gate the tick already rolled. The Section 9.2 distribution is untouched and no supply is added anywhere.
- **It sizes nothing to the Bearer.** An A-Rank assignment is an A-Rank Gate. Section 6.6's rule that a posted or assessed Gate never bends around one hunter holds here in full; what changed is which Gates he can get to, not what is inside them.
- **It is not a solo clear.** Section 9.4 rates these as state-directed operations, so he arrives inside one — a strike element, a cordon, a commander, and people who will see what he does (Section 19.1). That exposure is the other half of the price.
- **Pay** is Section 12.3's national-asset scale, negotiated rather than banded.

## 9.12 The Audition — a Gate that was not what the card said

Section 9.11 is the **world** reaching him because he is carded to take the work. This is the other channel, and nothing in the world can see it.

**Some of the Gates that open on his route are not ordinary Gates.** They assess like any other, post like any other, and read to every instrument BGM owns as exactly what the card says. They are not. **What is inside is sized to the Bearer, and the assessment is wrong on purpose.** The profile states the mechanics; the cause is owner-facing and lives in `200_WORLD_BIBLE.md` Section 9, which authors it directly — *"engineers auditions — Gates seeded to mislabel, red-gate anomalies, crucibles built to look survivable and not be"* — along with the third planted clue-line by which a player may eventually work it out. **A Runtime never explains an audition, names one, or hints that a category exists.** It narrates a Gate that was not what the card said, which is a thing this world already has a word for.

**It keys to Combat Tier, and to nothing else.** Not System Rank, which is a content bracket read from level; not the BGM card, which is paperwork this channel has no reason to respect. **Section 6.7's Combat Tier is the only honest statement of what the Bearer can actually be tested at**, and it is what this section reads.

| Bearer's Combat Tier | Share of **on-route** Gates that are auditions |
|---|---:|
| **E–D** | none |
| **C** | 15% |
| **B** | 25% |
| **A** | 33% |
| **S** | 50% |

**The roll.** For each Gate the Section 9.1 step 2 siting places **on his route** (`01-10`), roll **d100** against the share above. **Section 8.4.7's crucible floor overrides this roll upward**: at `quiet_days` 2 or more the tick owes one guaranteed audition regardless of what the share produces, and at 4 or more that audition rolls Section 9.6 twice and takes the more dangerous result. Auditions are drawn only from that band — never from `within reach`, never from `elsewhere`, and never from a Section 9.11 directed assignment, which is a real operation with a real command structure and real witnesses.

**What an audition Gate does, and only these three things:**

1. **It is assessed on the ordinary distribution.** Roll Section 9.2 for the *assessment* exactly as for any Gate. This is the number the board carries, the contract is priced against, and the legal minimum is set by.
2. **Its true Rank is read from the Bearer, on first entry.** Roll **d100**: `01-70` the Bearer's **Combat Tier**; `71-00` **one Rank above it**, capped at S. Section 9.5's ordinary true-Rank table does not run — this replaces it.
3. **It always rolls Section 9.6, and confidence is no protection.** Not a band — **every** audition rolls the anomaly table on entry, whatever the survey said. **This is the only route by which a red gate reaches a Bearer who does not walk into unconfirmed public postings**, and it is the whole reason the category is reachable at all for someone whose combat is otherwise self-owned keys and assigned operations.

   **1.93 made this a band and that was too thin to be the thing it describes (1.94).** Rolling the tier's ordinary anomaly threshold gave an audition an 8% chance of being anomalous, which at the Bearer's own audition rate put a red gate roughly **150 days** out — in a campaign that has run 33. `200_WORLD_BIBLE.md` Section 9 does not describe an audition as a Gate that might be strange; it names *"red-gate anomalies"* and *"crucibles built to look survivable and not be"* as **what an audition is.** An always-roll makes the category match its own definition: at Combat Tier S the Bearer meets one roughly every three or four days, and about **three in ten of them seal behind him.**

   **Where an anomaly result has no rung left, it resolves as density instead.** A `01-50` *population one Rank above* on an audition whose true Rank is already S has nowhere to climb; it becomes **doubled population at the true Rank** — twice the `3d6` commons and twice the `1d2` elites, the boss unchanged. Nothing else on the Section 9.6 table needs a cap, and at tier V the confluence entry applies here exactly as anywhere.

**The one thing that switches it off, and it is the section's entire risk economy.** An audition **does not fire** on a Gate the Bearer enters alongside a party meeting or exceeding that Gate's Section 9.4 **legal minimum** for its assessed Rank. It resolves as an ordinary Gate on its assessment, under Section 9.5, like any other job. **Being tested is the price of working light.** A Bearer who takes a crew is taking a contract; a Bearer who goes in with two friends and a licence is taking whatever is in there. The check is made at the threshold, once, on who actually crosses it — not on who signed.

**What this costs the people around him, stated rather than discovered.** A crew *under* the legal minimum standing beside him in a Gate that reads D and resolves at S is in a fight the assessment never priced, with insurance void under Section 9.4's own solo and waiver rules. **That is a real consequence and it is not softened here.** It is also the lever: he can protect anyone he brings by bringing enough of them, and the moment he learns the pattern, choosing to go light becomes a decision about someone else's life as well as his own. A campaign in which he starts refusing company is this section working, not failing.

**What it does not do.**

- **It creates no Gate.** It reclassifies one the Section 9.1 tick already rolled and already sited on him. The Section 9.2 distribution is untouched, and an audition consumes an on-route Gate rather than adding one.
- **It never reaches an instant dungeon.** Section 17 instances are the System's own architecture and carry no assessment to be wrong about; the proving key is that section's answer and this one has no business there.
- **It changes no reward rule.** Kill XP, the Gate-clear milestone, the Section 3.3 underdog multiplier and every drop table read the Rank the content **actually ran at** (Section 6.7), so an audition pays what it was, not what it said. A Gate assessed D and resolved at S pays S.
- **It is not a quest, and the System does not announce it.** Section 14.4 bounds what the System knows and Section 8.4 bounds what becomes a quest. An audition is a Gate, and he finds out the way anyone finds out.

---

# 10. Dungeon Archetypes

Every Gate has an **archetype** — the character of its interior — fixed when the Gate is instantiated and rolled on a d8. Each archetype carries **one mechanical twist**, stated below in a single rule.

**The interior is another world.** A Gate is a mouth onto somewhere *else* — a slice of the beasts' own world held in the void between it and ours — and its interior **never resembles, continues, or copies the place where the Gate stands.** A Gate in a metro tunnel may open onto a sun-bleached bone flat under three moons; a Gate in a cathedral onto a drowned forest. The interior keeps its own light, its own weather, its own horizon that goes nowhere; the mouth is the only way home. The archetype names below are the trade's shorthand — a domestication of terrains that have no Earthly names: the "Flooded Mine" archetype is no mine of ours, its timbers cut from no tree that grows here, its water fed by no rain we know. A Runtime narrating an interior draws it **alien first** — the archetype sets the mechanics and the broad character; the flesh on it belongs to the monsters' world, never to the neighborhood outside. An interior that *does* mirror its surroundings is not an aesthetic choice: it is anomaly-Rank wrongness, treated exactly like an empty interior (Section 9.7) — a clue, and a reason to leave.

| d8 | Archetype | Mechanical twist |
|---|---|---|
| 1 | **Crypt** | Darkness fills the interior: entering combat requires a Perception check to avoid being ambushed, and unlit fighting imposes −1 modifier step on sight-dependent actions. |
| 2 | **Hive** | Swarming brood: the common-beast count is **doubled** and **no elite is present** (the two 1d2 elite slots are replaced by additional common beasts). |
| 3 | **Flooded Mine** | Standing water throughout: Strength and Agility actions take −1 modifier step, and going under imposes a drowning risk resolved as an environmental hazard. |
| 4 | **Overgrown Temple** | A lootable shrine stands in the interior: clearing the Gate grants a **bonus loot roll** (Section 11), but the shrine is guarded by an extra elite. |
| 5 | **Beast Den** | A second **boss-Rank alpha** roams alongside the boss — two boss-Rank threats (×4 Rank Health) instead of one. |
| 6 | **Shattered City** | Broken verticality: falls and drops deal **Rank damage** (a standard-hit baseline at the faller's Rank, Section 6.2), and ledges force Agility checks. |
| 7 | **Ashfield** | Lingering burn hangs in the air: every hour inside forces a Vitality check against Rank-appropriate burn hazard (Section 6.3). |
| 8 | **Frozen Gallery** | Deep cold saturates the instance: **Mana recovery is halved** inside (Section 5.2), pressuring any Mana-dependent Bearer to clear quickly. |

**When the archetype is known.** The archetype is set at Gate instantiation. On a **confirmed** Gate the surveyors have seen the interior, so the archetype is **named in the assignment** alongside the confirmed Rank. On an **unconfirmed** Gate the archetype is **unknown** until first entry, and it reveals as the party crosses the threshold — the same entry that resolves the true Rank (Section 9.5).

An **archetype twist doubled** anomaly (Section 9.6, 81–95) applies that single twist at double effect: doubled darkness penalty, doubled swarm, twice the hazard rate, and so on, as fits the archetype.

---

# 11. Loot

Loot is the material output of a cleared Gate. Crystals and cores drop deterministically; the boss drop is rolled. Nothing here is estimated — every drop is read off the rules below.

## 11.1 Crystals and Cores

- **Mana crystals (beast-drop).** Every beast killed drops **one crystal**, of the **beast's own Rank**. An E-Rank beast drops an E-Rank crystal; a C-Rank beast drops a C-Rank crystal. Crystals are the world's base currency good (Section 12).
- **Beast cores.** **Elites and bosses always drop one core** each, of their Rank. A core is worth roughly **2.5× the same-Rank crystal** (Section 12) and is the raw material for gear and consumables.

### Mined crystal deposits

Beast drops are not the only crystals a Gate yields — most of a clear's crystal *tonnage* is **mined from the interior itself.** A Gate's structure carries **mana-crystal deposits**: veins and clusters seamed through its walls, floor, and the strange geology of the dimension it opens onto (Section 10). These are the deposits the trade's **support element** (Section 9.4) exists to strip, and the reason a clear fields miners alongside its strikers. Because mining is not fighting, the miners may be **any rank** — an E-Rank works a B-Rank Gate's veins under the strike team's protection (Section 9.4) — which is how the bulk of the world's low-rank hunters earn.

- **Rank and value.** Deposits are of the **Gate's Rank**; a mined crystal is worth exactly a beast-drop crystal of the same Rank (Section 12). Mining yields crystals only — never cores (cores come from creatures) and never gear.
- **Yield.** A cleared Gate holds roughly **`3d6 × (Rank multiplier)` Rank-G crystals** in minable deposits — where the Rank multiplier is 1 at E and rises with Rank the way crystal *value* does (E ×1, D ×2, C ×4, B ×8, A ×16, S ×32), so a Gate's minable crystal wealth scales sharply with its danger. The deposits are the bulk of a clear's take, which is why Rank determines a contract's pay far more than its kill count does.
- **Extraction costs time and hands.** Deposits are not picked up like a drop; they are **worked out** with effort during the **two-hour clear window** (Section 9.7) — or during the fight, by hunters not needed on the line. A short-handed crew (the waiver tier, Section 9.4) leaves crystal in the walls it has no time to cut before the window closes; a full crew with a dedicated support element strips a Gate near-clean. What is not extracted before the window closes is **lost with the collapsing interior** — a real tension between mining more and leaving alive.
- **Who profits.** Under a standard party contract (Section 13.2) mined crystals are declared at exit and pooled; a peer crew splits them like all loot, while a hired **support element takes the authored harvest share — 20% of the total clear, output-weighted (Section 13.2)** — and no cut of the cores in kind. For a **solo Bearer** in an instant dungeon (Section 17) or a lone clear, every deposit is his — one of the quiet reasons a Bearer's private clears are so lucrative.

The Bearer benefits from mining exactly as anyone does; nothing here is System-specific. It is ordinary hunter economics, finally stated: a Gate is not just a fight, it is a **mine with teeth.**

### Every holding carries a Rank

The rules above author the Rank of a crystal, a core and a deposit one at a time, and 1.72 states the rule they were all instances of. **Every holding in an inventory carries a Rank, and it defaults to the Rank of the creature, instance or Gate it came from.** A beast's drop takes the beast's Rank, a mined crystal the Gate's, a boss's gear its own — and so does anything else that leaves a Gate, including something the System hands over without a category.

**The System returning no category is a statement about identification, not about Rank.** It was possible before 1.72 for a genuine boss drop to sit in an inventory with no Rank, no stats and no value, indefinitely, because nothing said it had to have one — the frost-fused plating of `EVT-000502` did exactly that for a full campaign span. That is the same distinction Section 19.2 already draws between what an instrument *reads* and what is *true*: an unidentified holding is a known Rank of unknown function, and identifying it (Section 12.8's artificers, Flux Sight at B-Rank) resolves the function rather than conferring the Rank. **A holding whose Rank cannot be traced to a source takes the Rank of the instance or Gate it was recovered from**, and where even that is unknown it is recorded as unranked *and flagged for a ruling*, never left silently blank.

## 11.2 The Boss Drop

On the boss kill, in addition to its core, roll the **boss drop** on a d100. The drop's Rank is the **Gate's Rank** unless a Rank bump applies (Section 11.4).

| d100 | Boss drop |
|---|---|
| 01–40 | **Equipment** at the Gate Rank — roll its chassis on the table below (Section 11.5). |
| 41–65 | **Rune** — roll d8 on the Section 7.3 starting-skill table in listed order; it teaches that authored skill (Section 7.1). |
| 66–80 | **Potion cache** — 3 potions at the Gate Rank (Section 12.5). |
| 81–90 | **Instant-dungeon key** at the Gate Rank (Section 17). |
| 91–97 | **Skill book** — from the skill-book table (Section 11.3). |
| 98–00 | **Elixir** — a permanent +1 to one stat (max 3 lifetime per stat, Section 12.5). |

The **potion cache** tier follows the Gate Rank: Gate Rank **E-Rank–D-Rank → lesser** potions, **C-Rank–B-Rank → standard**, **A-Rank–S-Rank → greater** (the tiers priced in Section 12.5). Resolve its healing/mana mix with one real d4:

| d4 | Three-potion cache |
|---:|---|
| 1 | 3 healing potions |
| 2 | 2 healing potions · 1 mana potion |
| 3 | 1 healing potion · 2 mana potions |
| 4 | 3 mana potions |

For an **equipment** result, roll d20:

| d20 | Equipment chassis |
|---|---|
| 1–2 | Quickknife |
| 3–4 | Longsword |
| 5 | Greatarm |
| 6 | Reacharm |
| 7 | Longshot |
| 8 | Channeling Focus |
| 9 | Guard Shield |
| 10–14 | Armor piece: roll d5 for slot (head, torso, hands, legs, feet) and d5 for style (Bastion, Titan, Gale, Watcher, Arcanist). |
| 15 | Hunter's Band |
| 16 | Quickstep Charm |
| 17 | Heartward Sigil |
| 18 | Seer's Lens |
| 19 | Mindspun Loop |
| 20 | The player chooses any non-unique chassis in this table. |

Every roll is real under the resolution contract; a Runtime never chooses a favorable item except on the authored 20 result. The result receives the Gate Rank (or Section 11.4 bump), and its exact line is then derived from Section 11.5.

### 11.2.1 Boss Imprints

Every **equipment result produced by a boss** — the normal 01–40 result, an Overgrown Temple bonus roll that lands on equipment, or a Premium Armory Key's guaranteed equipment result — carries one **Boss Imprint**. Random-box gear, shop stock, commissioned gear, and ordinary market gear do not. The imprint is a non-unique source property: it never turns the item into a Section 11.6 named artifact.

The imprint is fixed from facts recorded under Section 9.7:

1. Record the exact boss form and signature method in provenance.
2. Apply the body family's **+1 further Stat point** from the Section 9.7 table. It sits outside the Rank budget like a Premium item's further points.
3. Apply the signature mode's **Echo** below.
4. Roll one real d6 finish and compose the visible item from the Gate-archetype palette, the boss's actual anatomy/material, and that finish.

| Signature mode | Echo — once per scene, within the net ±3 cap |
|---|---|
| **Impact** | +1 modifier step on one Strength action to break, shove, resist knockdown, or resist forced movement. |
| **Edge** | +1 modifier step on one close attack against an already-injured target. |
| **Projection** | +1 modifier step on one ranged attack or one defense against a ranged/area attack. |
| **Affliction** | +1 modifier step on one resistance attempt against poison, venom, disease, drain, or the source's authored affliction. |
| **Mobility** | +1 modifier step on one movement, pursuit, escape, or evasion action. |
| **Control** | +1 modifier step on one attempt to establish or break a grapple, restraint, fear hold, or forced position. |
| **Guard** | +1 modifier step on one physical defense action. |
| **Renewal** | +1 modifier step on one healing, stabilization, or recovery action affecting the wearer; the Echo alone restores no pool and clears no injury. |

A wearer may invoke **only one Boss-Imprint Echo per scene**, regardless of how many imprinted pieces are equipped. Passive body-family Stat resonances still apply normally. An Echo is an item capability, not a learned skill, costs no Mana, and does not gain mastery.

| d6 | Finish |
|---:|---|
| 1 | Seamless |
| 2 | Segmented |
| 3 | Etched |
| 4 | Crystalline |
| 5 | Bound or wrapped |
| 6 | Weathered |

| Gate archetype | Appearance palette |
|---|---|
| **Crypt** | soot-black metal, ossified-white accents, violet mana lines |
| **Hive** | lacquered chitin, amber resin, hexagonal seams |
| **Flooded Mine** | green-black alloy, pearl accents, blue current-lines |
| **Overgrown Temple** | root-grained metal, jade stone, gold sap-lines |
| **Beast Den** | horn, bone, rawhide, iron-red accents |
| **Shattered City** | fractured ceramic, black glass, bright metal joins |
| **Ashfield** | cinder steel, charred grips, ember-red fissures |
| **Frozen Gallery** | pale alloy, ice-blue crystal, frost tracery |

An authored nonstandard archetype supplies its own one-line palette before the equipment appearance is resolved. The appearance roll changes no Rank, condition, slot, or combat magnitude. A Boss Imprint creates no automatic price multiplier: the System shop uses its existing category repurchase rule, and the licensed market retains Section 12.8.1's ordinary ranked-gear anchor unless a specific negotiated transaction values the provenance differently. A complete imprinted line records `boss form · body family · signature method · signature mode · finish · appearance · provenance` in addition to Section 11.5's ordinary fields.

Worked item-line example (illustrative, not canon):

```text
Quickknife [C-Rank] · Agility +7 · Vitality +1 Boss Resonance · weapon power 7 · armed strike ×0.75
Boss Imprint — plated mandible queen · Carapaced · acid fan · Projection Echo
Finish/appearance — Etched · lacquered black chitin, amber resin seams, hooked mandible guard
Echo — once/scene, +1 step on one ranged attack or defense against a ranged/area attack
Provenance — C-Rank Hive boss equipment drop · Good
```

## 11.3 The Skill-Book Table

A **skill book** (boss drop 91–97) is rarer than a rune and teaches its skill at the **rank matching the Gate Rank it dropped from** — a book from a C-Rank Gate teaches its skill at C-Rank, above the E-Rank/D-Rank rune tier. Roll the taught skill on a d10:

| d10 | Skill book teaches |
|---|---|
| 1 | **Sprint** (Section 7.3) — movement. |
| 2 | **Dagger Mastery** (Section 7.3) — passive weapon mastery. |
| 3 | **Mend** (Section 7.3) — healing. |
| 4 | **Stone Skin** (Section 7.3) — sustained physical damage reduction. |
| 5 | **Flash Step** (Section 7.3) — mobility. |
| 6 | **Keen Sense** (Section 7.3) — detection. |
| 7 | **Silent Step** (Section 7.3) — stealth. |
| 8 | **Mana Bolt** (Section 7.3) — ranged attack. |
| 9 | **Rupture** — Mana **12**: a heavy strike **within 5 metres** at **×2.0 of its skill-rank baseline** (Sections 6.2 and 7.2); the die resolves whether it lands and its degree. The band is flat at every Rank (1.57, Section 7.3's delivery note). |
| 10 | **Bulwark** — Mana **10**: **50% physical damage reduction** for one exchange; reductions multiply, never add (Section 7.3), so it never reaches immunity. |

Entries 1–8 are the eight starting skills of Section 7.3, taught here at the dropped Gate's Rank rather than at the E-Rank/D-Rank rune tier. **Rupture** and **Bulwark** (entries 9–10) are authored here and enter the ledger with their name, rank (the Gate Rank the book dropped from), Mana cost, and effect on the schedule of Section 7.2.

**Dropped instructional-item settlement.** A generated rune or book teaches the rolled technique at the drop's Rank, never below the skill's native Rank, and records `instruction_binding: unbound-awakened` plus its source event. That physical identity is fixed even if the Bearer already knows the technique, and generation is **never** bounded by the Section 7.5 ceiling — a C-Rank Gate drops C-Rank instruction regardless of who opens it. Recipient eligibility, NPC rank capping, ascension, the ceiling, and the Bearer's consumption-time duplicate handling all resolve at consumption under Section 7.1. A drop is never rerolled or re-drawn for teaching something the Bearer already knows.

**Class-restricted skill books** exist only as **authored named items with provenance** — recorded as `class-bound:<class>`, usable by no one but the holder of their class, and entering play solely where a file authors them, exactly as the named-uniques rule (Section 11.5) requires.

## 11.4 Red-Gate and Anomaly Rank Bump

**Red gates and anomaly Gates roll loot one Rank above the assessment.** A Gate that resolved to any anomaly (Section 9.6) — including a red gate — drops crystals, cores, and boss loot as if it were **one Rank higher** than the Rank it was assessed at. This is the reward for surviving the elevated danger an anomaly represents.

## 11.5 Equipment, Ranks, and Item Lines

Equipment is mechanically complete only when its line records **name · Rank · chassis · slot · stat bonus · weapon power/protection · combat effect · provenance · condition**. Boss-imprinted and Premium equipment additionally records its Section 11.2.1 imprint/appearance or Section 12.5 fabrication series. Rank **E-Rank–S-Rank** sets the magnitude; chassis determines where that magnitude goes. An equipped item applies its line to its wielder. A stored, carried, broken, or merely owned item does not. The Bearer receives both the stat and combat lines. An ordinary hunter has no five-stat sheet (Section 13.1), so the item grants weapon power, combat effects, and protection but does not create or alter Stats for that hunter.

**Stat budgets by Rank:**

| Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---:|---:|---:|---:|---:|---:|
| Weapon stat points | 2 | 4 | 7 | 11 | 16 | 22 |
| Weapon power | 2 | 4 | 7 | 11 | 16 | 22 |
| Armor-piece stat points | 1 | 2 | 3 | 5 | 7 | 10 |
| Accessory stat points | 1 | 2 | 4 | 6 | 9 | 12 |

**Weapon chassis.** “All” assigns the full weapon stat budget to one Stat. A split assigns the stated share, rounding the primary share up and giving the remainder to the secondary Stat. Every damaging weapon also carries its Rank's weapon power from the table; a Guard Shield carries no weapon power.

| Chassis | Slot | Stat line | Combat line |
|---|---|---|---|
| **Quickknife** (dagger/short blade) | main or off hand | all Agility | Armed strike ×0.75; may be dual-wielded. |
| **Longsword** (sword/axe/mace) | main hand | all Strength | Armed strike ×0.85. |
| **Greatarm** (greatsword/greataxe/maul) | both hands | 75% Strength, 25% Vitality | Armed strike ×1.0; two-handed. |
| **Reacharm** (spear/polearm) | both hands | 60% Perception, 40% Strength | Armed strike ×0.85; +1 circumstance step to hold distance against a closing foe, within the net ±3 cap. |
| **Longshot** (bow/crossbow) | both hands | 60% Perception, 40% Agility | Ranged armed strike ×0.75; requires ammunition but carries the weapon's mana. |
| **Channeling Focus** (wand/staff/orb) | main hand | all Intelligence | Adds its weapon power as **focus power** to Bearer damage/healing skill magnitude (Sections 6.2 and 7.2); it has no mundane strike upgrade. |
| **Guard Shield** | off hand | all Vitality | Grants the armor reduction of its Rank below. |

A ranked weapon never lends its owner the weapon's Rank. For the Bearer, its power adds to effective Strength and the chassis multiplier applies under Section 6.2. For a fixed-rank hunter, power adds to that hunter's Rank baseline. For an unawakened wielder, power adds to ordinary-adult Strength 10. Accuracy, defense, Health, and resistance remain the wielder's own. All ranked weapons are mana-bearing — forged from beast cores by artificers (Section 12.8) — and therefore wound monsters under `GTF-OVR-003`.

Worked example — an E-Rank Bearer with Strength 16 and a C-Rank Quickknife:

```text
(Strength 16 + C-Rank weapon power 7) × Quickknife 0.75 = 17.25
standard success → 17 final damage before target reduction
strong success   → 35
critical success → 69
```

The weapon's Agility bonus separately affects placement through Section 4.3. It does not grant C-Rank Health, C-Rank defense, automatic accuracy, or a C-Rank license.

The same C-Rank Quickknife in a fixed E-Rank hunter's hand deals `(E-Rank baseline 10 + power 7) × 0.75 = 12.75 → 13` on a standard success before reduction. In an unawakened adult's hand it uses the same numerical ordinary-adult Strength basis, so it also deals 13 if the d100 attack lands; the weapon supplies the mana edge that can wound a monster, but the wielder still attacks, evades, and survives as an ordinary human. By contrast, lending that wielder the old C-Rank baseline would have produced about 47 damage and silently granted most of a C-Rank's offense; Profile 1.4 explicitly forbids that substitution.

**Armor pieces.** Armor occupies one of five slots: **head · torso · hands · legs · feet**. Its style assigns the entire armor-piece stat budget: **Bastion → Vitality · Titan → Strength · Gale → Agility · Watcher → Perception · Arcanist → Intelligence**. Every style protects equally at the same Rank; the choice is which capability it reinforces.

| Armor/Shield Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---:|---:|---:|---:|---:|---:|
| Physical damage reduction per equipped piece | 3% | 5% | 8% | 12% | 17% | 23% |

Each piece and shield is a separate reduction and reductions multiply under Sections 6.2 and 7.3. Armor has no blanket protection against poison, mental effects, environmental hazards, or a named effect that says it bypasses armor.

**Accessories.** The Bearer has two accessory slots. Each accessory assigns the entire accessory budget to its named stat and has no second passive: **Hunter's Band → Strength · Quickstep Charm → Agility · Heartward Sigil → Vitality · Seer's Lens → Perception · Mindspun Loop → Intelligence**. Two copies may be equipped; both bonuses apply.

**Condition.** Excellent, Good, Worn, and Damaged equipment applies its complete line. Broken or Destroyed equipment applies none. Condition changes only through established fiction and resolved damage; this profile adds no durability-point subsystem.

**Named uniques** exist only as **authored items with provenance** — a specific weapon or artifact written into a world or campaign file with a recorded origin. A boss drop never generates a named unique at random; the boss-drop table yields ranked generic gear, and a named unique enters play only where a file authors it.

## 11.6 The Named Artifacts

A handful of legendary items are known to the trade by name — relics with a history, each one-of-a-kind, each carrying a property ordinary ranked gear does not. They are the prizes a campaign plants, not random drops: a named artifact enters play only where a file authors it doing so, and there is exactly one of each. The set below is the world's standing legends; a campaign may author more with the same shape (name · Rank · type · one named effect in the vocabulary of Section 6.2 · a recorded provenance).

| Artifact | Rank | Type | Named effect (equipped) | Provenance |
|---|---|---|---|---|
| **The Damen Vigil** | B-Rank | Tower shield | +1 modifier step on any defensive action taken to shield an ally or civilian (to the net ±3 cap, Section 4.3). | Carried by the hunter who held the line at the Damen Avenue Break (Chicago, 2016) until the strike teams came; dug from the rubble, never sold. |
| **Cicero's Quiet** | C-Rank | Dagger | The first strike of a combat, made unseen, adds **+0.5** to its skill multiplier (Section 6.2). | Pulled from the quarantined Cicero Scar by a cordon scavenger; it came out colder than it went in. |
| **The Libeň Needle** | D-Rank | Caster focus | Lowers the Mana cost of the wielder's ranged and caster skills by **2** (minimum 1). | Left on the desk of the analyst's trailer at the Libeň Scar — a working tool that proved to be more. |
| **Karlov's Warrant** | B-Rank | Sword (artificer-marked) | +1 modifier step on the **first exchange** of any combat — a blade balanced past any tolerance. | Forged and marked by a master of the Karlov house; a named artificer's work trades far above anchor (Section 12.8). |
| **The Broodmother's Fang** | C-Rank | Fang-spear | On a killing blow, restores Mana equal to **one E-Rank standard-hit baseline (10)**. | Cut from a C-Rank Gate brood-queen and set into a haft; it pays the wielder a little for feeding it. |
| **Jiu Ash** | A-Rank | Greatsword | A-Rank strikes **ignore one full Rank of the target's damage reduction** (reductions apply one Rank lower, Section 6.2). | Recovered at ruinous cost during a containment operation inside the Jiu Valley Exclusion — one of the few things ever carried out of that valley alive. |

Each inherits the matching Section 11.5 chassis and its Rank-scaled stat/combat line in addition to the one named effect: Damen Vigil → Guard Shield; Cicero's Quiet → Quickknife; Libeň Needle → Channeling Focus; Karlov's Warrant → Longsword; Broodmother's Fang → Reacharm; Jiu Ash → Greatarm. A named artifact is worth far past its Rank on any market and is never generated at random — finding one is an authored event.

---

# 12. Economy

Two currencies run in parallel and **never exchange**: ordinary money (USD in Chicago, CZK/EUR in Prague) and the System's **gold**, which exists only inside the System shop. Goods cross between them solely through the shop's buy/sell spread (Section 12.5).

## 12.1 Licensed Market Prices

The regulated market buys crystals and cores at posted rates. Prices are Chicago USD; Prague pays **≈ 70% of Chicago rates**, settled in CZK/EUR.

| Good | Licensed price (Chicago USD) |
|---|---|
| **E-Rank crystal** | $150 |
| **D-Rank crystal** | $600 |
| **C-Rank crystal** | $2,500 |
| **B-Rank crystal** | $11,000 |
| **A crystal** | $50,000 |
| **S-Rank crystal** | Auction-only (no posted price) |
| **Beast core** | ≈ **2.5×** the same-Rank crystal |

At 2.5× the crystal, cores derive to ≈ $375 (E-Rank), $1,500 (D-Rank), $6,250 (C-Rank), $27,500 (B-Rank), $125,000 (A-Rank); the multiplier is authoritative and the figures follow from it.

## 12.2 Black Market

An unlicensed buyer pays **+40%** over the licensed price but dealing there is a **felony** in both jurisdictions, carrying license revocation and prosecution risk. The premium is the price of anonymity — no sale record, no Rank audit, no questions about a Gate's legality.

## 12.3 Contract Payouts and Salaries

| Work | Pay (Chicago USD) |
|---|---|
| **E-Rank Gate freelance contract** | $2,000–5,000 (split by party contract, Section 13) |
| **D-Rank Gate freelance contract** | $8,000–15,000 (split by party contract) |
| **C-Rank Gate freelance contract** | $30,000–60,000 (split by party contract) |
| **B-Rank Gate freelance contract** | $130,000–240,000 (split by party contract) |
| **A-Rank Gate freelance contract** | Negotiated at **national-asset scale** (Section 9.4) — no posted band |
| **Guild-salaried B-Rank** | ≈ **$240,000 / year** |

Prague contract and salary rates run at **≈ 70% of Chicago**, paid in CZK/EUR.

## 12.4 Cost of Living

| Item | Chicago | Prague |
|---|---|---|
| **Shared apartment** | $1,400 / month | 18,000 CZK / month |

## 12.5 The System Shop

The shop is the Bearer's alone (Section 2). It trades in **gold**, buying crystals and selling consumables, equipment, runes, and keys. It is a **System interface, not a place** — the Bearer opens it with `/system shop` from anywhere, at any time, instantly; there is no storefront to travel to and no hours. A purchase deposits straight into his dimensional inventory (Section 12.9), and a sale is drawn from it, so trading never requires him to be anywhere or carry anything. **USD and gold do not exchange** — the Bearer converts loot to gold only by selling it to the shop, and spends gold only inside it.

**Stock unlock.** Equipment and keys are stocked at every Rank **at or below the Bearer's System Rank** (Section 6.6). An E-Rank Bearer sees E-Rank stock; reaching D-Rank adds D-Rank without removing E-Rank, through S-Rank at level 50. Consumables are always stocked. The **proving key** is outside this rule and always stocked, because it carries no bought Rank to unlock — its price is read from the Bearer's Combat Tier at the moment of purchase. Skill runes appear when their native Rank is at or below the System Rank, and are stocked at every Rank from that native Rank up to the Section 7.5 ascension ceiling. Stock is fixed and unlimited; there is no refresh timer, random inventory, scarcity roll, or haggle.

The unlimited catalogue is separate from the rotating **Daily Premium** stock below.

**The shop buys crystals (gold):**

| Crystal | Shop buys for |
|---|---|
| E-Rank | 10 g |
| D-Rank | 40 g |
| C-Rank | 170 g |
| B-Rank | 750 g |
| A-Rank | 3,400 g |

**Equipment and key prices (gold):**

| Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---:|---:|---:|---:|---:|---:|
| Any weapon chassis | 100 g | 450 g | 2,000 g | 9,000 g | 40,000 g | 180,000 g |
| Any armor piece | 60 g | 270 g | 1,200 g | 5,400 g | 24,000 g | 108,000 g |
| Any accessory | 80 g | 360 g | 1,600 g | 7,200 g | 32,000 g | 144,000 g |
| Instant-dungeon key | 500 g | 2,250 g | 10,000 g | 45,000 g | 200,000 g | 900,000 g |
| **Proving key** (Section 17) | 1,000 g | 4,500 g | 20,000 g | 90,000 g | 400,000 g | 1,800,000 g |

“Any weapon chassis” means the seven Section 11.5 lines; “any armor piece” means any combination of its five slots and five styles; “any accessory” means the five named stat accessories. The buyer chooses the exact stocked chassis. Purchased keys are fixed at the Rank bought — they do not rise with the Bearer later.

**The proving key row is read differently from every other row in this table (1.92).** Its columns are **Combat Tiers, not Ranks the buyer may choose from**: the shop stocks exactly one proving key, priced at twice the ordinary key price for the Bearer's **current Combat Tier** (Section 6.7), and there is no cheaper variant to buy instead. A Bearer at Combat Tier A pays 400,000 g; the same Bearer at Combat Tier S pays 1,800,000 g for the same object, because the object is worth more. The Rank the instance actually runs at is snapshotted when the key is **used**, not when it is bought (Section 17), so a key bought at one tier and banked through a growth span opens at the higher one — the single place in this profile where a banked key hardens, authored deliberately and stated in Section 17.

**Consumables and runes (gold):**

| Item | Price |
|---|---:|
| **Lesser healing potion** | 60 g |
| **Standard healing potion** | 150 g |
| **Greater healing potion** | 750 g |
| **Lesser mana potion** | 50 g |
| **Standard mana potion** | 75 g |
| **Greater mana potion** | 480 g |
| **Antidote** | 30 g |
| **Appraisal scroll** | 60 g |
| **Stabilization seal** | 150 g |
| **Skill rune**, any Rank from the skill's native Rank to the Section 7.5 ceiling | E 1,000 g · D 4,500 g · C 20,000 g · B 90,000 g · A 400,000 g · S 1,800,000 g |
| **Elixir of a stat** (+1 base stat permanent; **max 3 lifetime per stat** for the Bearer — **uncapped** when spent on another awakened, Section 12.5.1) | 5,000 g |

### 12.5.1 The Elixir Given Away — the one thing that moves a non-Bearer's pools

**A stat elixir works on an ordinary awakened hunter, and nothing else in the world does.** This is the profile's single exception to Section 2: an awakened's capability is their fixed Rank, their pools are read from the Section 6.1 table, and neither moves for anything they do — but the System is not the world, and what the Bearer hands them is the System's. The elixir is Bearer-purchased, hand-delivered, and consumed by the recipient exactly as a rune or potion already is (Section 7.1, `EVT-000178`; Section 12.5, `EVT-000180`).

**What it grants.** **Vitality and Intelligence only.** Each point applies the Bearer's own conversion (Sections 5.1, 6.1) as a permanent addition on top of the recipient's Rank-derived pool:

```text
maximum_health = (Rank Health × individual variance) + 4 × elixir Vitality
maximum_mana   = (Rank Mana   × individual variance) + 2 × elixir Intelligence
```

**Uncapped for a non-Bearer.** Section 12.5's "max 3 lifetime per stat" is a limit on the Bearer's own progression and does not bind what he spends on someone else. The real limit is gold: 5,000 g a point, and the arithmetic below is why this is a campaign and not a purchase.

**What it does *not* grant.** No Stat sheet is created (Section 13.1 stands). **Strength, Agility, and Perception cannot be raised this way** — Section 13.1 resolves those by Rank and there is nothing for a point to attach to. Elixir Vitality and Intelligence are **pool stats only**: they never touch the Section 4.3 domain rating, so the recipient still resolves every contested action at their Rank, and they never confer levels, XP, skills, mastery, equipment Stat lines (Section 11.5), or any System perception (Section 14.4).

**The recipient feels it, and is told nothing.** There is no window, no notification, no number, and no System voice — that boundary is unmoved. But this is the recipient's own body rather than a technique arriving in it, and the change registers **immediately and unmistakably** as depth: more to spend, and further to the bottom of it. A mender, who reads capacity for a living and knows better than anyone what their own floor feels like, will know something has happened the moment it does, without being able to say what.

**Crossing the bracket.** Section 6.1.2 gives every Rank a bracket of ±10%. Elixir points are added *outside* it — variance is authored once and never recomputed (Section 6.1.2), and the elixir addition is flat on top of the varied pool. The first point that carries a recipient past their Rank's bracket ceiling makes them **a number no hunter of that Rank can be**. Nothing announces it. It is real from that instant and invisible until something measures it: a Flux Sight read at the C rung (Section 4.4), a BGM Ranking Bench instrument, or a re-assessment under Section 19.2.

**True Rank and carded Rank.** When the recipient's totals reach the **flat** Section 6.1 table values of the next Rank **on both pools at once**, their true Rank advances: Section 13.1 makes Rank the complete description of a body, and a body with B-Rank pools is a B-Rank body. From that moment they resolve at the new Rank in full — damage baseline, domain rating, party-minimum eligibility as a matter of fact rather than law. Variance is **not** recomputed at the new Rank; the authored factor stays where it was and the elixir addition stays flat on top of it.

**Their card does not move with them.** A licence records what BGM measured at Awakening (Section 2), and no instrument has looked since. Until a re-assessment happens, the recipient is legally and contractually their old Rank — Section 9.4's party minimums, contract-Rank ceilings, and sponsor eligibility all read the card, not the body. Correcting it means Section 19.2's procedure, and the world has exactly one sanctioned explanation for a card reading higher than it used to: **reawakening** (Section 19.3), a regulator ruling the original measurement wrong. That explanation is now, for the first time, available to describe something that actually happened — and it is still a lie, because nothing was mismeasured.

**The state between Ranks has no name.** A recipient above their bracket ceiling but below the next Rank's floor is not their carded Rank, not the next one, and not reawakened. The world has no box for it, no procedure for it, and no precedent. That is a feature: it is what a System doing something the world's physics forbids actually looks like from inside the world.

**The arithmetic, worked.** A C-Rank mender carrying Section 6.1.2's +10% stands at 275 Health and 137 Mana, which is the ceiling of the C bracket. **One** Intelligence elixir takes him to 139 — two points past what any C-Rank can be — for **5,000 g**. Carrying him to a true B-Rank needs (600 − 275) ÷ 4 = **82 Vitality points** and (300 − 137) ÷ 2 = **82 Intelligence points**: 164 elixirs, **820,000 g**. Against a Bearer holding 13,151 g, the first point is a real decision and the last is a life's work.

**The no-exchange rule.** There is no gold-to-USD or USD-to-gold conversion at any rate. The only bridge between the two economies is the spread between what the shop pays for a crystal and what the same crystal fetches on the licensed market — the Bearer chooses, per crystal, whether it becomes cash or gold, and cannot move value back the other way.

**Tier pricing.** Lesser and Standard restore a flat amount, not a percentage, so their value tapers as the drinker outgrows the Gate-Rank bracket the tier serves (Section 11.2); Greater restores to full, so it alone scales with the drinker's own pool.

Prices are **not** set so that cost-per-point falls with tier, and must not be "corrected" toward that — a Lesser is often the cheapest gold-per-point and a Greater is always the dearest. What a higher tier buys is **action economy**: one drink is one action, and a pool the lower tier cannot close in one drink costs the drinker the fight, not the gold. The design constant is the size of that premium. Against the Section 4.3 reference stat for a ranked hunter (`Health = 4 × Vitality`, `Mana = 2 × Intelligence`), the cost of refilling an empty pool is:

| Rank reference | Health pool | All-Lesser | All-Standard | Greater |
|---|---:|---|---|---|
| E (Vit 10) | 40 | 2 × 60 = **120 g**, 2 actions | 150 g, 1 action | 750 g, 1 action |
| D (Vit 20) | 80 | 3 × 60 = 180 g, 3 actions | **150 g**, 1 action | 750 g, 1 action |
| C (Vit 30) | 120 | 4 × 60 = **240 g**, 4 actions | 2 × 150 = 300 g, 2 actions | 750 g, 1 action |
| B (Vit 40) | 160 | 6 × 60 = 360 g, 6 actions | 2 × 150 = **300 g**, 2 actions | 750 g, 1 action |
| A (Vit 50) | 200 | 7 × 60 = **420 g**, 7 actions | 3 × 150 = 450 g, 3 actions | 750 g, 1 action |
| S (Vit 60) | 240 | 8 × 60 = 480 g, 8 actions | 3 × 150 = **450 g**, 3 actions | 750 g, 1 action |

| Rank reference | Mana pool | All-Lesser | All-Standard | Greater |
|---|---:|---|---|---|
| E (Int 10) | 20 | 1 × 50 = **50 g**, 1 action | 75 g, 1 action | 480 g, 1 action |
| D (Int 20) | 40 | 2 × 50 = 100 g, 2 actions | **75 g**, 1 action | 480 g, 1 action |
| C (Int 30) | 60 | 3 × 50 = **150 g**, 3 actions | 2 × 75 = **150 g**, 2 actions | 480 g, 1 action |
| B (Int 40) | 80 | 4 × 50 = 200 g, 4 actions | 2 × 75 = **150 g**, 2 actions | 480 g, 1 action |
| A (Int 50) | 100 | 5 × 50 = 250 g, 5 actions | 3 × 75 = **225 g**, 3 actions | 480 g, 1 action |
| S (Int 60) | 120 | 6 × 50 = 300 g, 6 actions | 3 × 75 = **225 g**, 3 actions | 480 g, 1 action |

Reading down the columns: stepping Lesser → Standard costs between **−17% and +25% gold** and always at least halves the actions; stepping Standard → Greater costs **+67% to +113% gold** to reach a one-action full restore. Those are the authored premiums. Under the superseded percentage model the same two steps cost **+80%** and **+122%** for a single action saved apiece, which is why Standard and Greater were purchases no rational buyer made — the defect this pricing corrects.

The invariant a future reprice must preserve: **no tier may be strictly dominated** — worse on gold *and* no better on actions than an all-lower-tier route to the same restoration — at any pool on the tables above, and Greater must remain the only single-action full restore.

**Consumable effects.** Greater Healing and Mana potions restore to full, so they scale with the drinker's own maximum pools and Vitality/Intelligence remain causal there; Lesser and Standard restore a flat amount regardless of the drinker's Stats. The stat elixir's effect is stated inline in the sell table above.

| Consumable | Effect |
|---|---|
| **Lesser healing potion** | Restores a flat 30 Health, capped at maximum. |
| **Standard healing potion** | Restores a flat 90 Health, capped at maximum. |
| **Greater healing potion** | Restores Health to full. |
| **Lesser mana potion** | Restores a flat 20 Mana, capped at maximum. |
| **Standard mana potion** | Restores a flat 40 Mana, capped at maximum. |
| **Greater mana potion** | Restores Mana to full. |
| **Antidote** | Clears poisons and venoms of the drinker's Rank or below. |
| **Appraisal scroll** | Consumed to reveal one unidentified item's complete Section 11.5 line, regardless of Intelligence; it does not identify hidden history or an unauthored effect. |
| **Stabilization seal** | Applied to one Critical injury to suspend its untreated death risk for 24 hours; it restores no Health, clears no severity, and does not replace professional treatment. |

**Healing and Mana potions are System-exclusive.** The six Healing and Mana potions above exist only inside the System shop. No licensed outfitter, guild armory, pharmacy, hospital, black-market broker, or any other world vendor stocks one, at any price, in any city — there is no supply channel, because nobody outside the Bearer can see the interface and no one else can withdraw from it. The Runtime may not place a Healing or Mana potion on a world shelf, in a world loot cache, or in an NPC's kit unless the Bearer himself put it there. Once withdrawn it becomes an ordinary transferable object and may be handed to anyone, but it always traces back to him — which is exactly why it is an exposure thread (Section 19). This exclusivity is authored for the Healing and Mana potions specifically; the antidote, appraisal scroll, and stabilization seal are System-sourced goods with no licensed supply channel of their own, but the world has its own antivenoms, appraisers, and trauma medicine and may go on having them.

**Not the same goods as world restorative alchemy.** The world's own restorative-alchemy market is real, separate, and untouched by this rule: brewed from beast cores (`240_RESOURCES.md`), sold licensed and black, its high-Rank product is what can arrest the gray sleep (Bible Section 5; the off-shop note below). It works the way world medicine works — on the **severity and condition axis, over elapsed time and care** (Section 6.4) — and carries none of the magnitudes authored above. **Nothing sold anywhere in the world restores Health or Mana as an immediate quantity;** that is the System's alone. When an NPC buys, carries, or is treated with a restorative, it is always this market. NPCs have no concept of a System potion and cannot ask for one; a character naming one is either the Bearer or someone he told.

**Skill runes.** A purchased rune teaches the selected skill and is consumed on use. Catalogue runes record `instruction_binding: bearer-only`; they may be carried by another person but cannot teach anyone except the Bearer.

The catalogue stocks a rune for a skill at every Rank from that skill's **native Rank** (Section 7.2) up to the **Section 7.5 ascension ceiling** — the Bearer's System Rank + 1 — for skills he knows and skills he does not. A rune for a skill he already knows is stocked only at Ranks **above** its current Rank; the shop does not sell instruction that cannot benefit him. Consuming one ascends the skill under Section 7.5, at that route's cost of a full mastery reset to Novice. Mastery itself is never bought here at any price — gold buys width, never hands.

Rune prices use the same-Rank anchors of the Daily Premium schedule below — **E 1,000 g, D 4,500 g, C 20,000 g, B 90,000 g, A 400,000 g, S 1,800,000 g** — at face value, without the Premium surcharge. The C-through-S anchors are live catalogue prices for runes within the ceiling, not pricing references only. They are deliberately steep: gold may skip a mastery track, but a C-Rank rune costs twenty E-Rank ones, so buying a Rank is a genuine economic decision rather than the default path.

**Resale.** The shop repurchases an intact equipment item from its own catalogue for **25% of the table price, rounded down**, regardless of where it came from. It repurchases an unused shop consumable, rune, or key for **50% of its listed price, rounded down**. Named artifacts, commissioned gear, broken gear, mundane possessions, cores, and story objects have no automatic shop price; the shop refuses them unless a later authored line says otherwise. Resale withdraws the item permanently and credits gold in the same transaction.

### Daily Premium Stock — System-Exclusive Rotation

At **06:00 local time every morning**, the shop replaces its Daily Premium tab with exactly **six offers: one Weapon, one Armor, one Accessory, one Consumable, one Rune, and one Key**. These are premium System models: they cannot drop from a Gate, be commissioned from an artificer, or appear as stock in any licensed or black-market store. The System shop is their only source.

**Rotation state and timing.**

- At 06:00 the Runtime makes the **twelve real draws** below — five model-bag draws, one rune roll, one fabrication-series roll, and five independent Rank rolls. It records the cycle date, fabrication series, all six complete offers, their prices, six purchased/unpurchased flags, each bag's remaining entries, and the previous draw for each bag-governed category as canonical Bearer state. A Runtime never selects the offers itself. No rune reroll occurs at rotation because instructional identity is fixed at generation (Section 7.1).
- The stored remaining entries and previous draw are the sole operational source for the next model draws. Expired rotations in chronicles, changelogs, and historical checkpoints are provenance only and are never replayed during an ordinary rotation. If this compact state is missing, apply the required Profile 1.15 → 1.16 migration above once and persist its result before play continues.
- Each offer has **quantity 1**. Buying it marks that category purchased and removes the row until the next rotation. Unbought offers expire at the next 06:00; they are not carried forward or discounted.
- A later level-up does not re-Rank the current cycle. If the System first attaches after 06:00, it generates the current cycle immediately using the Bearer's then-current System Rank as each Rank roll's floor; it does not reconstruct earlier cycles.
- Rotation occurs even while the Bearer sleeps or occupies a sealed instance. The System fires the Tier-1 window `◈  D A I L Y   P R E M I U M   S T O C K   R O T A T E D`, carrying one row: `Offers          6 available`.
- Once purchased, a premium item is ordinary transferable physical property under the withdrawn-goods rule below, but no world store stocks it and it has no anchored mundane-market price. An unused premium item may be sold back only to the System shop for **25% of its premium purchase price, rounded down**.

**Model bags — draw without replacement.** Weapon, Armor, Accessory, Consumable, and Key each maintain a separate bag containing every model in their tables below; Armor's bag contains the 25 exact slot/style pairs. At rotation, make one real uniform draw from each category's remaining entries and remove the drawn entry. When a bag is empty, refill it with the full model set. On the first draw after refill, temporarily exclude that category's immediately previous model; draw from the rest, then return the excluded model to the remaining bag. Thus every model appears once per bag before ordinary repetition, and no refill boundary repeats yesterday's exact model. Rank is not part of bag identity and continues to roll independently.

**Fabrication series — roll d8 once per rotation.** The one series applies visually to all six offers generated in that cycle, including consumable vessels, rune media, and key geometry. It changes no effect, Rank, price, quantity, resale value, or compatibility; withdrawn items retain their series appearance permanently.

| d8 | Series | Visual language |
|---:|---|---|
| 1 | **Obsidian** | matte black, violet mana lines, sharp facets |
| 2 | **Ivory** | pale ceramic, gold seams, smooth geometry |
| 3 | **Cobalt** | deep-blue alloy, silver tracery, angular construction |
| 4 | **Crimson** | dark-red enamel, black fittings, aggressive silhouettes |
| 5 | **Verdant** | green-bronze surfaces, amber light, organic curves |
| 6 | **Argent** | brushed silver, blue-white light, minimal ornament |
| 7 | **Umbral** | smoked glass, muted metal, drifting internal shadow |
| 8 | **Prismatic** | color-shifting surfaces and iridescent mana channels |

For each Rank-bearing offer — Weapon, Armor, Accessory, Rune, and Key — make an independent **d100 Rank roll** against the Bearer's System Rank at rotation:

| d100 | Offer Rank |
|---:|---|
| 01–50 | Bearer's System Rank |
| 51–80 | +1 Rank |
| 81–93 | +2 Ranks |
| 94–98 | +3 Ranks |
| 99 | +4 Ranks |
| 100 | +5 Ranks |

Cap every result at **S**. The rolled offer Rank determines that offer's Stats, power, protection, effect, and price; it does not change the Bearer's System Rank. Consumables are unranked and receive no Rank roll.

**Premium surcharge.** A Rank-bearing Premium offer costs **125% of its ordinary same-Rank category price anchor, rounded upward to the next whole gold**. Weapon, Armor, Accessory, and Key use the corresponding Section 12.5 catalogue row at the rolled offer Rank. Premium Runes use the same-Rank rune anchor stated below. The surcharge pays for the exclusive model or loot modifier, transferable Premium instruction, quantity-one scarcity, daily opportunity, and possible access above the Bearer's unlocked catalogue Ranks; it never doubles or multiplies the price merely for appearing in the rotation. Premium Consumables are authored fixed-price models, not derived from any ordinary anchor, and several deliberately undercut the ordinary goods whose effects they combine — a Restoration Draught at 900 g does in one action what 750 g of Greater healing and 480 g of Greater mana do in two. That is the point: a Premium Consumable is quantity-one, expires at the next 06:00 rotation, and may not return for weeks. Its constraint is scarcity, not price, and it is meant to feel like a windfall when it appears. Do not reprice these upward to "protect" the ordinary catalogue.

**Premium Weapon — draw from the seven-model Weapon bag.** Price: **125%** of the offer-Rank weapon price under the Premium surcharge rule.

| Bag entry | Offer | Premium line in addition to its normal Section 11.5 line |
|---|---|---|
| 1 | **Ghost Quickknife** | +2 further Agility; +1 step on the first attack made unseen in a combat. |
| 2 | **Execution Longsword** | +2 further Strength; armed strike multiplier +0.10. |
| 3 | **Colossus Greatarm** | +2 further Strength; armed strike multiplier +0.15. |
| 4 | **Horizon Reacharm** | +1 further Perception and +1 further Strength; its hold-distance step also applies to protecting one adjacent ally. |
| 5 | **Farline Longshot** | +1 further Perception and +1 further Agility; ignore one range-derived circumstance penalty step. |
| 6 | **Spellthread Focus** | +2 further Intelligence; reduce active-skill Mana costs by 1, minimum 1. |
| 7 | **Aegis Guard Shield** | +2 further Vitality; its own physical reduction is 5 percentage points higher. |

“Multiplier +0.10/+0.15” adds to the chassis multiplier before the result multiplier; it does not change the d100.

**Premium Armor — draw from the 25-pair Armor bag.** The pair order is the Section 11.2 slot-major cross-product: head/torso/hands/legs/feet, each paired in order with Bastion/Titan/Gale/Watcher/Arcanist. Price: **125%** of the offer-Rank armor-piece price under the Premium surcharge rule. The result is an **Adaptive** version of that piece: it grants **+2 further points to its style stat** and its own physical reduction is **3 percentage points higher**.

**Premium Accessory — draw from the five-model Accessory bag** in Section 11.2's accessory order. Price: **125%** of the offer-Rank accessory price under the Premium surcharge rule. The result is an **Ascendant** version granting **+3 further points** to its named stat.

**Premium Consumable — draw from the six-model Consumable bag.**

| Bag entry | Offer | Price | Effect |
|---|---|---:|---|
| 1 | **Restoration Draught** | 900 g | Restores Health and Mana to full; clears no injury severity. |
| 2 | **Sovereign Panacea** | 600 g | Clears one poison, venom, or disease regardless of Rank; does not reverse an authored permanent condition. |
| 3 | **Mender's Seal** | 1,200 g | Clears one Minor injury or reduces one Moderate injury to Minor; restores no Health. |
| 4 | **Ironblood Phial** | 750 g | Grants 30% physical damage reduction for one scene. |
| 5 | **Quicksilver Phial** | 750 g | Grants +1 modifier step on Agility-governed actions for one scene, within the net ±3 cap. |
| 6 | **Clarity Phial** | 750 g | Grants +1 modifier step on Intelligence- or Perception-governed appraisal and detection for one scene, within the net ±3 cap. |

**Premium Rune — roll d10** on Section 11.3's skill-book table. The rune teaches the rolled technique at the current offer Rank, never below the skill's native E-Rank/D-Rank, and records `instruction_binding: unbound-awakened`. Its identity is fixed at rotation regardless of the Bearer's known skills. An eligible NPC may consume that original rune under Section 7.1. If the Bearer later goes to consume it and already knows the technique at or above the offer Rank, Section 7.1's intact-or-mastery choice applies at that moment — the rotation itself never re-draws the model.

The same-Rank rune price anchors are E=1,000 g, D=4,500 g, C=20,000 g, B=90,000 g, A=400,000 g, and S=1,800,000 g. Under Profile 1.26 every one of these is a live ordinary catalogue price for a rune within the Section 7.5 ceiling; the Premium tab's advantage over the catalogue is therefore its exclusive `unbound-awakened` binding and its quantity-one scarcity, not access to Ranks the catalogue refuses to stock. A Premium Rank roll landing above the ceiling now buys instruction the Bearer cannot yet consume — a bankable asset he grows into (Section 7.1), not an immediate teaching. Apply the Premium surcharge to those anchors:

| Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---:|---:|---:|---:|---:|---:|
| Premium Rune | 1,250 g | 5,625 g | 25,000 g | 112,500 g | 500,000 g | 2,250,000 g |

**Premium Key — draw from the six-model Key bag.** Price: **125%** of the offer-Rank instant-dungeon key price under the Premium surcharge rule. The key otherwise opens a standard Section 17 instance and carries one exclusive loot modifier:

| Bag entry | Key model | Premium modifier |
|---|---|---|
| 1 | **Bounty Key** | The boss makes two independent boss-drop rolls; both drops settle. |
| 2 | **Crystal Key** | The instance's mined deposit roll is treated as 18 before the Rank multiplier. |
| 3 | **Core Key** | The boss drops one additional same-Rank core. |
| 4 | **Armory Key** | The boss drops one guaranteed equipment result in addition to its normal boss-drop roll; roll the equipment chassis normally. |
| 5 | **Runic Key** | The boss drops one guaranteed rune result in addition to its normal boss-drop roll; roll the taught skill normally. |
| 6 | **Alchemist Key** | The boss drops one guaranteed potion cache in addition to its normal boss-drop roll; tier it by Section 11.2. |

**Off-shop note — the gray sleep.** The wider world's restorative-alchemy market is separate from this Bearer-only shop (`240_RESOURCES.md`), but its one authored price anchors to the same scale: **arresting** chronic mana saturation — *the gray sleep* (Bible Section 5) — runs about a **greater healing potion's** worth of high-Rank restorative a month (≈750 g-equivalent shop-side, per the corrected Section 12.5 price; on the licensed medical market an **A crystal-scale sum** across a year — tens of thousands of USD, Section 12.1), while a **full reversal is an elixir-Rank intervention** priced accordingly, which is why only guilds and governments pay for a cure.

**Withdrawn goods are ordinary objects.** Once a consumable or item leaves the shop into the world it is an **ordinary physical object** — transferable to anyone and traceable to anyone who holds it. Ordinary goods are usable by anyone: a System-shop healing potion works in an ally's hand exactly as in the Bearer's. Instructional items are the narrow exception: their immutable Section 7.1 binding may prevent the holder from consuming them, while leaving them physically transferable. Any withdrawn good turning up in a pawnshop, an evidence locker, or a rival's kit is a physical thing with no licensed provenance and no market record — an **exposure thread** (Section 19) leading back toward a Bearer the world cannot otherwise see.

## 12.6 Starting Funds by Background

A campaign sets the Bearer's opening money by background. Prague equivalents are the USD figure **×22** in CZK.

| Background | Chicago (USD) | Prague (CZK, ×22) |
|---|---|---|
| **Working poor** | $800 | 17,600 CZK |
| **Stable** | $4,000 | 88,000 CZK |
| **Guild-family** | $15,000 | 330,000 CZK |

## 12.7 Care Prices — Menders and Hospitals

Restorative care is priced off the same scale as the rest of the economy (licensed prices Section 12.1, cost of living Section 12.4):

- **A mender-for-hire session** — a private healing-touch mender engaged for a clear or an aftercare visit — runs about the **price of a same-Rank beast core** (Section 12.1): a C-Rank mender's session prices near a C-Rank core, which is why fielding one is a serious cost and why menders are rare enough to bid over (Bible Section 3).
- **A hospital week** — a week of professional inpatient care at a licensed facility — runs about a **month's local rent** (the shared-apartment figure, Section 12.4): ≈ **$1,400** in Chicago, ≈ **18,000 CZK** in Prague.

**Mender care is professional care.** A mender's healing-touch treatment counts as **professional (hospital-equivalent) care for the injury clock of Section 6.3**, halving an injury's recovery time at every tier exactly as hospital treatment does. This is separate from the **party-mender's one-tier post-fight conversion** (Section 13.5), which a mender grants their party automatically; a hired mender treating a wound outside a party clear applies the Section 6.3 halving instead. The two effects do not stack on the same injury beyond what each section states.

## 12.8 Commissioned Gear and the Artificers

Ranked gear is not mined out of Gates whole — it is **forged from what Gates yield**, and the forging is done by **artificers**: awakened whose signature ability (Section 13.6) works mana into matter, rare on the order of menders and paid on the same logic (Bible Sections 3–4). Licensed artificers are the enchanting industry's hands; the great ones are the trade's quiet celebrities, their waitlists a status symbol, and an artificer's mark on a blade is worth more than the steel.

**Commissioning is how a hunter turns his clears into his arsenal:**

- The commissioner **supplies the core** — the core's Rank sets the ceiling of the piece's Rank (Section 11.5's banding governs the result) — plus any beast materials (hide, fang, scale) the design calls for.
- The **forging fee** runs about the **market price of a same-Rank core** (Section 12.1): commissioning a C-Rank blade means a C-Rank core supplied plus ≈ $6,250 in fee. Turnaround is days at E-Rank–C-Rank.
- **B-Rank and above is guild- and state-contract work** — waitlisted, logged, and subject to the export controls of Bible Section 4; a freelancer commissioning at B+ attracts exactly the attention Section 19 describes.
- A commissioned piece is ordinary ranked gear under Section 11.5; **named work by a known artificer trades above every anchor** on the negotiated market, like all gear resale.

There is **no player crafting subsystem**: the Bearer commissions or buys like every other hunter — the forge is someone else's signature.

**What that does and does not forbid (1.86).** It forbids **origination**: the Bearer never creates an item, and never puts a mana line into matter that carries none. Every item he will ever own is still bought, commissioned, or looted — the shop (Section 12.5), this section, a Gate. **It does not forbid improving a piece he already owns.** Reading an existing working, opening one without wrecking the piece, seating material into it, lifting a working out of it, and carrying it toward its authored ceiling are a technique the Bearer can earn under Section 7.1 and hold as **Seamwork** (Section 7.3) — bounded by that piece's ceiling, by material spent at this section's own anchor, and by his own Seamwork Rank. He remains no artificer: he takes no commissions, holds none of the trade's standing, and **cannot originate a piece**, which is the half that requires a signature.

Through 1.85 this sentence was read as barring improvement as well as origination, and a Runtime-authored audit closed a formation candidate on that reading **without an owner ruling** (`F-039`). The distinction is now stated rather than inferred: **the signature originates; the hands may still work.**

### 12.8.1 Licensed Resale of Ranked Gear

The licensed negotiated market values an ordinary finished ranked item at roughly its commissioning cost: **one same-Rank core plus a forging fee equal to the market price of a same-Rank core** (Section 12.8). Because a core is worth approximately **2.5×** the same-Rank crystal (Section 12.1), the authoritative settlement anchor is:

`ranked gear licensed anchor = 5 × the same-Rank crystal price`

| Item Rank | Chicago licensed settlement | Prague licensed settlement |
|---|---:|---:|
| **E-Rank** | ≈ **$750** | ≈ **11,550 CZK** |
| **D-Rank** | ≈ **$3,000** | ≈ **46,200 CZK** |
| **C-Rank** | ≈ **$12,500** | ≈ **192,500 CZK** |
| **B-Rank** | ≈ **$55,000** | ≈ **847,000 CZK** |
| **A-Rank** | ≈ **$250,000** | ≈ **3,850,000 CZK** |
| **S-Rank** | **Auction-only** | **Auction-only** |

The Prague figures apply the existing **70% regional market factor** (Sections 12.1 and 12.3) and the profile's **×22 USD/CZK convention** (Section 12.6). The table is the default total transaction value when no authored premium or exclusion below applies. The d100 never haggles around a missing range: a Runtime uses the anchor rather than inventing a discount, markup, or bid/ask spread (Sections 20.2–20.3).

- **One anchor for every ordinary chassis.** A weapon, one armor piece, and one accessory of the same Rank use the same licensed settlement anchor. The System shop's separate gold prices and chassis ratios (Section 12.5) do not price the mundane market and establish no gold-to-money exchange.
- **Functional condition.** Excellent, Good, Worn, and Damaged gear uses the complete Section 11.5 item line and therefore the same anchor. Broken or Destroyed gear has no functional ranked-gear settlement price; any salvage value requires later authoring and is never improvised or rolled.
- **Provenance is required.** The anchor applies to ordinary gear with licensed provenance — including a declared Gate drop or commissioned piece. Equipment originating in the System shop has no licensed provenance, receives no USD/CZK/EUR price under this subsection, and cannot use Section 12.2's `+40%` rule because there is no licensed price to modify. Such an item remains transferable physical property under Section 12.5, but this profile authors no mundane-currency sale for it; buying with gold and reselling for ordinary money is not an exchange path.
- **Named artificer work.** A known artificer's marked work trades above the generic same-Rank anchor, as Section 12.8 establishes, but has no universal multiplier. The exact offer must be authored for that transaction and is never rolled.
- **Named artifacts.** A Section 11.6 artifact is individually negotiated or auctioned above the generic same-Rank anchor. Its exact value must be authored for the artifact or transaction and is never generated from this table.

The black-market premium in Section 12.2 composes normally with an eligible licensed-provenance item's anchor. It does not create a price for excluded System-origin equipment, broken gear, or a named work whose exact value has not been authored.

## 12.9 The Dimensional Inventory

The Bearer's inventory is not a backpack — it is a **pocket dimension**, a private space only he can reach, and it is his alone (no other hunter on Earth has one; Section 14.1). Every item he owns lives there unless he has chosen to hold or wear it, and the difference between "stored" and "carried" is his to set at any instant.

**Equipment slots are canonical System state.** The Bearer has exactly nine: **main hand · off hand · head · torso · hands · legs · feet · accessory 1 · accessory 2**. A two-handed chassis occupies main and off hand together. One item cannot fill two unrelated slots, and a slot holds at most one item. Only slotted equipment applies its Section 11.5 line; “in hand” and “worn” are the fiction-facing forms of equipped.

- **Weightless and unencumbering.** Stored items impose no weight, bulk, or carrying limit. The Bearer never chooses what to leave behind for lack of hands; a full clear's loot, a spare weapon, a case of potions all sit in the pocket dimension at once, and he walks out unburdened.
- **Store and withdraw anywhere, instantly, as a free action.** He may send an item to the inventory or call one **to his own hand** from anywhere — a street, a Gate interior, mid-sentence, mid-fight — with a thought. Without a named skill, withdrawal has no other destination and imparts no remote motion: an item cannot be summoned beside, behind, above, or inside a target, and cannot be launched directly from the pocket dimension. Drawing a blade from nothing to meet an attack is a legitimate action the die still resolves for its outcome, but the *hand-delivery itself* costs no action and no Mana. Dimensional Projection (Section 7.2) is the authored earned technique that can extend this property to bounded remote deployment and launch. This is a real tactical edge: he is never disarmed, never out of potions he owns, never caught with the wrong tool.
- **The two directions are not symmetric, and 1.59 authors the half that was never stated.** Withdrawal is bounded above — *to his own hand*, with remote destinations explicitly denied. **Storage carried no stated bound at all**, and a rule that exists only by omission is the Section 20.2 defect: `EVT-000326` swept three crates and a workbench into the pocket dimension on one roll, which no hand-delivery reading supports, while Section 7.2 asserted the inventory was *hand-delivery only* in both directions on the strength of a sentence this section never wrote. **Storage reaches what he perceives; withdrawal reaches his hand.** He may send to the inventory any inanimate object he can perceive and could lawfully pick up — one that **no person is holding, wearing, or carrying**, and that nothing is actively contesting. There is no distance limit beyond perception and no requirement that it pass through his hand. He cannot take an object off a living person, cannot reach past a barrier he cannot perceive through, and a contested attempt is an uncertain action the die resolves like any other. Nothing here lets him disarm anyone.
- **Remote storage is free outside an exchange and costs the exchange's one inventory change inside one.** Picking a room clean, sweeping a dock, or drawing a folder off a car boot is ordinary storage and costs nothing. Inside a resolved exchange, storing an object **not already in his hand** is that exchange's single inventory change under *Equip and swap* below — so recovering a thrown or projected weapon mid-fight competes with a weapon swap rather than being free. Hand-delivery in either direction stays free and unlimited, exactly as it has always been; only the remote reach is rationed. **This is what makes a launched weapon recoverable without making it costless**, and it is the cost Dimensional Projection's *Recall* rung (Section 7.3) exists to remove.
- **Equip and swap.** Outside an exchange, any number of slots may be rearranged instantly. During an exchange, the Bearer may change **one item** as a free System operation; putting away one weapon and calling another into the same slot is one change. A two-handed item changes both hand slots as one item. Changing armor under immediate attack does not erase an attack already resolved against the prior loadout. The equipment state used for a roll and its damage is the state established before that roll.
- **Custody — owned, and not in the pocket dimension.** The sentence opening this section is exhaustive by construction: *every item he owns lives there unless he has chosen to hold or wear it*. That admits two dispositions and the world routinely produces a third — an object the Bearer **still owns** that is **physically in a named party's hands**, left with an artificer to work on, lodged as a condition, lent, or deposited. Until 1.88 such an item had no legal position, so the only way to keep a ledger consistent was to **delete it**, and a Bearer's own record went silent about things he had not stopped owning.

  **Custody is possession, never title.** Ownership does not move, no sale or transfer occurs, and the holder acquires no claim by holding. The item stays on the Bearer's ledger for as long as the custody stands and **renders in its own `/system gear` group** (Section 15.3.2) rather than disappearing from the panel.

  **A custody record names three things and is invalid without them**: **who** holds it, **since when**, and **what ends it** — a return condition, a completion, or a stated open end. *"Left with someone"* is not a custody; it is an item the ledger has lost.

  **It is out of reach, and that is the whole cost.** A custodied item is **not stored**: it cannot be withdrawn to hand, cannot be launched, applies no Section 11.5 line, and is **not a legal target for Section 12.9 remote storage** while the custody stands — even though it may be sitting untouched on a bench and satisfying that clause's bare wording. **He consented to it being there.** Taking it back is an act in the fiction with whatever that costs — turning up, asking, negotiating, or stealing — and never a free thought. A custody a Bearer can silently reverse is not a custody, and an artificer who can be robbed by a man thinking about it has no reason to accept work.

  **It ends on its stated condition, on the holder returning it, or on the Bearer recovering it in play** — and on any of those the item returns to ordinary stored or worn state with nothing else changed. **Destruction, consumption, or loss while in custody is resolved in the fiction on the holder's terms**, because that risk is exactly what handing an object to somebody else buys and costs.

- **Private and secure.** What is in the pocket dimension cannot be seen, searched, stolen, or confiscated — it is not on his person to find. A licensed inspection, a mugging, a pat-down at a cordon reaches nothing. This is a standing advantage and a standing exposure risk (Section 19): an item summoned from empty air in front of witnesses is as much a giveaway as a status window, because no ordinary hunter can do it.
- **What it holds.** **Inanimate physical objects** — gear, weapons, armor, consumables, crystals, cores, runes, books, keys, ordinary possessions. It does **not** hold living things (no creature, no person, no plant kept alive), and it is not a bank: **USD/CZK is mundane wallet-and-account money, never a System good** (Section 15, the `/system gear` panel, where cash renders beside gold and never totals with it). System **gold** is likewise not "in" the inventory — it is the shop's internal currency (Section 12.5), shown as a balance, spent only in-window.
- **Capacity.** No practical limit constrains a campaign — the pocket dimension holds what the Bearer puts in it. (There is no encumbrance subsystem to track; "he stored it" is the whole rule.)

The inventory is read live and shown by the `/system` window (Section 15); loot enters it on pickup, shop purchases deposit into it, and shop sales withdraw from it. The Bearer interacts with the world's economy exactly as Sections 11–12 describe — he simply never has to carry the goods to do it.

## 12.10 Fusion — Two Finished Pieces, One Chassis

**The fourth trade.** Identification reads a thing. Commissioning makes one from raw material (Section 12.8). Teaching is a third thing and is billed as one. **Fusion is the fourth, and the rarest** — it is the only artificer work whose ordinary failure destroys the material it was handed. Most licensed artificers have never performed one and will say so; an artificer who quotes a fusion confidently without having done one is worth less trust than one who does not.

**Fusion moves an effect. It never moves a magnitude.** That is the whole of this section's balance and it is load-bearing rather than decorative: a rule letting two pieces pool their protection, power, or stat points into one slot would retire the Rank ladder without a Rank being climbed. Fusion buys a **slot**, and the slot is the entire prize.

**Eligibility.** All of the following are checked before any cost is paid:

1. Both pieces occupy the **same equipment slot class** — two accessories, two armor pieces of the same slot, or two weapons of the same chassis (Section 11.5).
2. Both are **functional**: Excellent, Good, Worn, or Damaged. Broken and Destroyed cannot be fused.
3. Neither is a **named artifact** (Section 11.6), a **class-bound** item, or **instruction** of any binding (Section 7.1).
4. Neither is **equipped**; fusion takes both out of play for its duration.
5. The two pieces stand **within one Rank of each other**. A gap of two Ranks or more cannot be bridged.
6. **Neither piece has been fused before.** A fused piece is never again eligible as frame or donor.

**A piece at its Rank ceiling is a legal frame.** Fusion does not travel the Rank axis, so a Flux Sight reading of a reached ceiling (Section 4.4) does not bind it — the two questions are unrelated, and a piece that can never be improved can still be the one that survives.

**The frame and the donor.** The commissioner nominates one piece the **frame** and one the **donor** before work begins. **The nomination is irreversible.**

- The **frame** survives. The result carries the frame's Rank, chassis, slot, stat line, weapon power or protection, and combat line **unchanged**.
- The **donor** is **consumed whole, at every outcome, including every failure.**

**What the result gains.** On a successful fusion the result carries, in addition to the frame's complete line, **one named effect of the donor's**, chosen by the commissioner at nomination.

It gains **no stat points, no weapon power, and no physical damage reduction.** A donor whose whole value is a stat line has nothing to give and cannot be a donor; a donor with no named effect cannot be one either. Where the carried effect is one the frame already holds, the two run as **independent instances** under Section 11.5's duplicate-accessory rule and compose multiplicatively under Section 7.3, so no stack ever reaches immunity.

**Cost.**

| | |
|---|---|
| **Material** | the donor, consumed; plus **one beast core at the result's Rank, or four at the Rank below** |
| **Fee** | the Section 12.8 commissioning anchor — about the **market price of a same-Rank core** (Section 12.1). A named artificer's work trades above every anchor and the exact offer is authored for that transaction, never rolled. |
| **Bench time** | **one day** at C-Rank and below, **two** at B-Rank, **three** at A-Rank, **five** at S-Rank. Fusion is never same-day work. |

**Resolution.** One d100 by the artificer, read against the engine's standard result bands. Steps come from established circumstances only (Section 4.3), never from balancing:

- **+1** — the two pieces are identical models at identical Rank; the seams already agree.
- **+1** — the commissioner assists, holding **Seamwork** (Section 7.3) at C-Rank or above so the working can actually be opened under him. The step reads that skill rather than a general impression of competence, and it never stacks with a second description of the same assistance (Section 4.4).
- **−1** — the artificer has never completed a fusion.
- **−1** — either piece is unprovenanced or was never fully read.
- **−1 per Rank** — the artificer's established working Rank stands below the result's.

| Effective | Band | Outcome |
|---|---|---|
| **01–05** | catastrophic | **Both pieces destroyed.** Core spent, fee owed. |
| **06–20** | major failure | Donor destroyed; the frame **drops one condition grade** — a frame already at Damaged becomes **Broken**. Core spent. |
| **21–40** | failure | Donor destroyed. Frame returned **intact and unchanged**. Core spent. |
| **41–60** | partial | Fusion holds, the carried effect **diminished**: once per *scene* where it read once per exchange, or **half** its stated magnitude where it states one. |
| **61–80** | success | The carried effect operates at **full stated strength**. |
| **81–95** | strong | As success, and the result's condition rises **one grade**, to a maximum of Excellent. |
| **96–99** | exceptional | As strong, and **the core is not consumed** — it comes off the bench unspent. |
| **100** | legendary | As exceptional, and the result carries **every** named effect the donor held, not only the nominated one. |

**The critical tails stay live.** No modifier removes the 01–05, which is why a careful artificer states the risk aloud before taking the commission.

**Provenance.** A System-shop piece has no licensed provenance (Section 12.8.1), and handing one to a world artificer to be unmade is a Section 19 exposure thread like any other — the artificer holds a piece with no market record, in pieces, on their own bench.

**Rendering.** A fused piece renders its own line under `/system gear` with the carried effect on a continuation row, tagged `fused`. It is one item occupying one slot; no panel's geometry changes.

---

# 13. Parties and Other Hunters

Most Gates are cleared by parties, and most hunters in the world are ordinary licensed professionals — not Bearers. This section fixes how those hunters resolve mechanically and the standard terms under which a party runs a Gate.

## 13.1 NPC Hunters Resolve by Rank

Every NPC hunter is a fixed-rank engine character (Section 2). A hunter's **Rank** is its complete mechanical description: a licensed B-Rank acts on the B-Rank for Health, Mana, and damage, and nothing further is authored. No NPC hunter carries a level, a Stat sheet, or an XP total. From Profile 1.32 it carries a **Rank Mana** pool (Sections 5.1, 6.1) — still not a curve, and still nothing authored per hunter: a fixed number read from its Rank, exactly as its Health is.

When neither side is the Bearer, compare their Ranks for the capability contribution: **+1 step per Rank the actor stands above the resistance, −1 per Rank below**, capped inside the engine's net ±3. When the Bearer acts or resists, use Section 4.3's relevant effective Stat against the other party's Rank-derived domain rating instead; never apply both systems to one action.

**What a recurring named NPC's ledger entry records (Profile 1.41).** Section 5.1's rule stands unchanged — *no creature is authored by the baseline*, and no NPC hunter gets a stat block, an ability list, or a cost sheet. What a named NPC's entry may carry is the **derived** form of rules already stated elsewhere, written down once so that a Runtime reads a settled number instead of re-deriving it mid-scene and so a Flux Sight read (Section 4.4, C rung) can be answered from the ledger. Recording these authors nothing:

- **`rank`** — the fixed Rank that is the entity's whole mechanical description (this section).
- **`pool_variance`** — the authored ±10% factor of Section 6.1.2, or `none`. Permanent, never rerolled.
- **`pools`** — maximum Health and Mana: the Section 6.1 table value × the variance factor, floored, with the arithmetic shown. May carry the entity's own Section 5.2 tier costs and Section 5.3 threshold, all floored from the same maximum.
- **`signature_ability`** — the one-sentence descriptive fact Section 13.6 already requires of every named NPC hunter, plus which of Section 13.5's three authored effects it triggers, if any.
- **`learned_techniques`** — any rune- or book-taught technique the entity holds, at its effective technique Rank under Section 7.1, with the authored technique effect and Section 13.6's once-per-dangerous-scene limit. A learned technique carries no mastery track, no use counter, and no progression; where the technique's Bearer-side entry states a mastery ladder, the NPC holds the **base authored effect at its Rank** and nothing above it.
- **`equipment`** — owned Ranked gear and its reduction only. Section 11.5 gives a non-Bearer no Stat sheet, so no equipment Stat line ever applies.

An entry that omits any of these is not defective; the rules supply the value. An entry that *contradicts* them is, and the profile governs.

## 13.2 Standard Party Contract Terms

A freelance party runs on a written contract. The standard terms, absent a negotiated exception, are:

- **Split:** the party leader takes a **10% leader's share** off the top; the **remainder is split equally** among all members (leader included in the equal split of the remaining 90%).
- **Loot declared at exit:** all crystals, cores, and drops are **declared at the Gate exit** and pooled for the split. Undeclared loot taken inside is theft under the contract.
- **Liability waivers:** members sign a **liability waiver** — a Gate is lethal work, and the contract disclaims the party's and the poster's liability for injury or death inside.
- **Death of a member:** a dead member's share of the pooled loot passes to their **named beneficiary** — naming one is part of signing the contract, so no share is ever left unassigned. The dead hunter's own effects and license are handled by the beneficiary and the authorities, not folded into the party pool.
- **Death of the leader:** if the leader dies mid-clear, the **senior surviving license** — the highest-ranked survivor, longest-licensed breaking a tie — assumes the **leader's role and the 10% leader's share** for the remainder of the clear, so the party keeps a decision-maker and the split still resolves cleanly at exit.

### Support and harvest contracts

The split above governs a **peer combat crew**. A clear that fields a separate **support element** (miners, harvesters, porters — any rank, Section 9.4) pays them on a different, standard basis, because they take no combat risk on the line and are not partners in the clear:

- **The harvest share is 20% of the total declared pool.** The support crew collectively receives **20% of the value of the entire declared clear** — every mined and beast-drop crystal and every core, valued at licensed rates (Section 12.1). It is taken **off the top**; the remaining **80%** is the combat pool, divided among the strike element by the standard terms above (or, when a contractor posted the clear, by the contractor's terms after its cut).
- **Split among harvesters is output-weighted, not flat-equal.** Each support worker's cut of the 20% is **proportional to the crystal *they personally mined*** (declared at exit, Section 11.1). A harvester who cut 7 of the crew's 19 mined crystals takes 7/19 of the harvest share. This is the standard; a flat-equal harvest split is a negotiated exception, stated in the contract.
- **Support workers draw no cut of the cores or beast-drops in kind.** Their entire compensation is the harvest share (the 20%, a cash valuation); the physical cores, beast-drop crystals, and any boss drop belong to the combat pool. A harvester is paid *for the mining*, valued against the whole clear, and takes none of the trophies home.
- **Everything else in Section 13.2 applies** — loot declared at exit, liability waivers signed, a dead support worker's harvest share to a named beneficiary.

**Worked example (Cicero Scar, C-Rank — Gatefall: Pendragon).** A five-hunter support crew declares 19 mined C-Rank crystals at exit; the total clear (mined + beast-drop crystals + cores) values at **≈ $77,500** on the licensed market (Section 12.1). The harvest share is **20% = $15,500**, split by output. Alexander mined **7 of the 19** crystals, so his cut is `7/19 × $15,500 ≈ ` **$5,700**. The other 80% (≈ $62,000, plus the physical cores) is the combat pool, divided among the strike element and the posting contractor by their terms. Every figure resolves from Section 12.1 prices and this rule alone.

## 13.3 Legal Minimums

Party size is not only a tactical choice; regulation sets a **legal minimum** by Gate Rank (Section 9.4): none for E-Rank–D-Rank, four licensed for C-Rank, eight for B-Rank, sixteen plus an A-Rank hunter for A-Rank, and a national-asset operation for S-Rank. Entering below the minimum is an offense in both Chicago (BGM) and Prague (CGA) jurisdictions, independent of whether the clear succeeds.

## 13.4 The Witness Rule

The foundation of every party dispute is one fact: **inside an uncleared Gate there are no cameras and no instruments — only testimony.**

A sealed Gate interior admits no recording and no remote monitoring: mana flux blinds instruments, and nothing transmits out of a live instance. What happened inside is established solely by the **testimony** of those who walked out. This is the authored foundation on which betrayal, false report, and disputed-clear plots stand — the profile fixes the fact and adds no further subsystem. Who lived, who died, what dropped, and who struck whom inside an uncleared Gate is, mechanically and legally, whatever the survivors say it was until contradicted by evidence found outside.

## 13.5 Support Types and Party Roles

Party role composition is **descriptive, not a subsystem.** Signature abilities (Section 13.6) are as varied as the people who wake with them, so the trade files hunters by *what an ability does in a fight* using a loose, open vocabulary — **strikers** (melee damage), **casters / mages** (ranged mana — bolts, bursts, elements, area denial), **archers** (a signature that guides a shot), **wardens / tanks** (barrier and frontline), **menders** (healing-touch), **sensors** (detection and appraisal), **summoners / beast-tamers**, illusionists, and any number of others. **This is common shorthand, not a closed classification.** A hunter whose signature fits no board label is ordinary, not an error; most powers blur two or three of these at once, and new ones are named as they appear. Whatever the label, an NPC hunter is resolved the same way — **by Rank** (Section 13.1, Section 2), with no stat sheet, level, or XP total, its Health and Mana both read from its Rank (Section 6.1); the label is flavor and reach (Section 13.6), never a mechanic.

Because the labels are open, the **mechanics key to function, not to the word.** Only **three** effects are authored, and they attach to *what a signature does*, whatever the trade calls its owner:

- **The "mender" effects apply to any signature that restores Health by touch** — a healer, a life-drawing summoner, a laying-on-of-hands, anything whose function is closing wounds in the field. Such a hunter is a "mender" for these effects regardless of label.
- **The "warden" effect applies to any signature that raises a held barrier or physically holds a line** for the party — a wall, a shield-field, an immovable frontline. Such a hunter is a "warden" for that effect regardless of label.

The three authored effects, at exactly these magnitudes:

- **A mender's field-touch** restores Health equal to **one standard-hit baseline of the mender's Rank** (¼ of the mender's Rank health, Sections 6.1–6.2): a D-Rank mender's touch restores 25, a C-Rank mender's 62. A mender can channel **three field-touches per Gate clear**; a touch restores Health only — it does not change an injury's tier or its recovery clock (Sections 6.3, 12.7 govern those). A higher-Rank mender is simply a stronger healer; that is the whole skill model, per Section 13.1.
- **A party with a mender** additionally converts **one post-fight injury tier down, per member, per clear**, for injuries at the **mender's Rank or below**: a Minor injury disappears, a Moderate becomes a Minor, a Severe becomes a Moderate, a Critical becomes a Severe (Section 6.3). It is one tier, once per member, per Gate cleared.
- **A party with a warden** grants **+1 modifier step on the party's defensive actions taken in formation** (Section 4.3), composing into the net ±3 cap like any other step.

Healing-touch and barrier signatures are rare (Bible Section 3), which is exactly why a party that fields one is meaningfully safer and a party without one pays for the gap in Section 6.3 injuries. Nothing further is authored: **every other signature — striker, caster, archer, summoner, sensor, and all the rest — adds texture and reach, not a mechanic.** A caster's bolt, an archer's guided shot, and a swordsman's cut are all a standard hit at the hunter's Rank (Section 6.2); a summoner's called beast fights at the summoner's Rank; a sensor reads what the fiction says it reads. The signature decides the *method*; the Rank decides the *magnitude*. And **the Bearer in a party benefits from a mender or a warden exactly as any other member does** — the three effects are properties of the party, not of who is in it.

## 13.6 Signature Abilities

Most awakened manifest a **signature ability** at awakening (Bible Sections 2–3): one personal, permanent expression of their mana — a firelance, a stone hide, a ten-meter blink, a healing touch, a field-sense. For an NPC hunter the signature is a **descriptive fact, not a subsystem**: it is named in one sentence in the character's ledger entry, it determines the *method and reach* of what they do — a C-Rank caster's firelance is a C-Rank standard hit delivered at forty meters; a B-Rank warden's force-wall is Section 13.5's formation step made visible — and it never adds a magnitude beyond the character's Rank and the three Section 13.5 effects. **Every named NPC hunter of D-Rank or above is given a signature ability in their ledger entry when they are recorded** (Profile 1.42) — a crew of hunters should read like a crew of powers, not a crew of weapons.

**The D-Rank threshold, and what it does *not* say.** An E-Rank's gift is not absent; it is **too slight to name, file, or build a reputation on** — the reason the trade's boards record E-Ranks by working type and licence number rather than by power, and the reason most E-Ranks make their living as miners and harvesters (Section 9.4) rather than as anybody's firelance. A named E-Rank NPC therefore carries **no authored signature**, and an entry that leaves the field empty at E-Rank is correct rather than incomplete. This is a rule about what is worth authoring, not a claim that E-Rank awakened are hollow: Section 4.1's "most awakened manifest a signature" stands, and an E-Rank's may be named in play if the fiction ever needs it — at which point it is authored like any other, with the same no-magnitude limit.

It also leaves the Bearer's own case intact and, if anything, sharper. His card was **blank** — not slight, not unremarkable, but nothing at all, which is a different reading from the one an ordinary weak E-Rank gets and is precisely why it was notorious.

Signatures are innate and singular: one per awakening, fixed for life, its expression growing only as its owner's measured rank allows. Runes and skill books (Section 11) add *learned* techniques on top — rare enough that a hunter with two tricks is notable and a hunter with three is a story. The Bearer is the sole exception to all of it: he manifested nothing at awakening — the notorious blank card of the weakest E-Rank — and everything he gains, the System governs (Section 7). In a world where every hunter is born as exactly one power, the man who can *accumulate* them is a walking impossibility, and hiding that is the whole game (Section 19).

An NPC learned technique resolves at its effective technique Rank from Section 7.1, never above the NPC's fixed Rank. It does not create Stats, XP, a Mana ledger, Bearer-style mastery, or use counters. An active learned technique may be used **once per dangerous scene** unless that authored technique explicitly supplies a narrower limit; a passive learned technique applies continuously. Attack and healing magnitude use the effective technique Rank; modifier steps, reductions, duration, and other utility use the authored technique effect. Learned **Mend** grants its heal but not the full innate-mender package of three field touches and one post-fight injury-tier reduction (Section 13.5). Learned **Stone Skin** or **Bulwark** does not make the holder a party warden; only an explicitly authored held formation barrier supplies Section 13.5's warden benefit.

---

# 14. The System's Behavioral Contract

The System is the Bearer's interface to his own growth and the world's danger. This section fixes what it is, what it will and will not say, and the exact shape of what it says — so a Runtime speaks with the System's voice from canonical state alone, never inventing a line.

## 14.1 The System Is Not a Persistent Entity

The System has continuity (one Bearer at a time), initiative (it issues the daily quest, opens penalty zones, offers the class quest), and a direction (it grows its Bearer). Those look entity-shaped. It is **not** a Persistent Entity and must not be modeled as one.

- Its **active state is Bearer state** — including level progression, equipment slots, gold, and the current Daily Premium cycle — held in the Bearer's `canonical_state` on the campaign character ledger, nowhere else.
- Its **world-line continuity is a rule of Gatefall** (Section 2): exactly one living Bearer per world-line, no successor while he lives, and **death is final** (Section 6.5) — the dead Bearer's System state transfers to no one. It has no aliases, lifecycle block, inventory, relationships, or separately addressable identity.
- Its **purpose is directional, not personal**: produce a stronger Bearer. It does not love, hate, bargain for its own survival, or value the present host above the world's danger to him.
- Its **outputs are world reactions.** They act on or address the Bearer; they never author his voluntary choices.

Structurally the question is closed: the Persistent Entity Type set is closed (`011` Section 4.2) and contains nothing the System fits, and Rules Section 14.3 forbids a World Rule Profile from touching Persistent Object structure. Gatefall could not make the System an entity even on its own authority. The testable property follows:

> **Given the same canonical Bearer state, the System renders the same thing.**

It has no freeform off-ledger reasoning. Its outputs come only from declared triggers, tracked state, and the rules in this profile.

## 14.2 Truthfulness — It Never Lies, But It May Withhold

**The System never asserts a falsehood, and never asserts a world-fact it does not know.** Truthfulness and omniscience are different properties, and the System is truthful *and* non-omniscient because its assertive domain is bounded:

- **About the Bearer it is authoritative and correct.** It is him, quantified — his level, XP, stats, pools, skills, and quests are not in doubt.
- **About the world it may point, never describe.** "An unregistered presence is near" is a pointer; "the C-Rank beside you is a disguised killer" is a description it never makes. Pointing leaks no secret; describing would bypass discovery.

**Silence is not a lie.** Withholding, cryptic phrasing, and `[HIDDEN] ???` are honest — they assert that a thing exists without asserting what it is. The System is **not an oracle**: it cannot be asked what the world is hiding, and it does not answer.

## 14.3 Trigger Tiers — What It Says Unprompted, and What Only on Request

The System never decides what is true. For a Tier-2 trigger, bounded discretion governs presentation phrasing, not timing: once every authored precondition becomes true at a declared audit boundary, settlement occurs before the first qualifying yield. The same opportunity identity is not settled again while its existing quest or candidate state remains pending, active, or terminal.

The following manifest is an operational dispatch index into this profile. It names candidate state deltas, authoritative eligibility headings, opportunity identity, repeat suppression, and settlement type. It does not restate eligibility meaning, rewards, formulas, or canonical state.

```yaml
trigger_manifest_version: "1.0"
trigger_domains:
  gatefall.quest.urgent:
    candidate_deltas:
      - scene.opened
      - location.changed
      - nearby_threat.changed
      - actionable_route.changed
    eligibility_heading: "8.4.2 Urgent Quests"
    timing: first_qualifying_yield
    identity:
      - crisis_event
      - objective_key
    blocked_statuses:
      - pending
      - accepted
      - completed
      - failed
      - declined
      - expired
    capacity_notice_repeat: first_blocked_audit_then_capacity_change
    settlement: offer
  gatefall.quest.hidden:
    candidate_deltas:
      - scene.opened
      - location.changed
      - clue.established
      - concealed_object_proximity.changed
    eligibility_heading: "8.4.3 Hidden Quests"
    timing: first_qualifying_yield
    identity:
      - concealed_object_or_objective_key
    blocked_statuses:
      - attached
      - completed
      - failed
      - abandoned
      - expired
    capacity_notice_repeat: first_blocked_audit_then_capacity_change
    settlement: automatic_attachment
  gatefall.skill_formation:
    candidate_deltas:
      - dangerous_scene.closed
      - promotion_barrier
    eligibility_heading: "7.1 Acquisition"
    timing: declared_boundary
    identity:
      - subject
      - candidate_signature
      - stable_scene_key
    blocked_statuses:
      - ratified
      - rejected
    settlement: progression_audit
    ratification:
      evidence_threshold: 3
      pre_authored_result_keys:
        - dimensional_weapon_control
      settlement_event_kinds:
        - dangerous-scene-settlement
        - progression-batch-settlement
  gatefall.board.deadline:
    candidate_deltas:
      - clock.advanced
      - supply.advanced
      - commitment.due
      - outreach.initiated
    eligibility_heading: "9.10 The Tracked Board"
    timing: declared_boundary
    identity:
      - board_key
    blocked_statuses:
      - cleared
      - broken
      - withdrawn
    settlement: world_state_settlement
```

**`gatefall.board.deadline` is not a System trigger, and the tiers below do not reach it.** It is a `world_state_settlement` domain under `012_ENGINE_RUNTIME.md` Section 2.5 (Decision 084): it settles the Section 9.10 board on the campaign clock and tells the Bearer nothing. Section 14.4's boundary is exactly why. The System knows Bearer state, quest state, its own stock, and a Gate's disposition **once resolved** — it does not know what a posting on a public board is doing, and a break that fires across the city is a world event the Bearer learns about the way anyone does, if at all. A posting settling to `cleared`, `broken`, or `withdrawn` produces no notification, no panel line, and no `progression_audits` entry; it changes the board, and the world carries the consequence. It rides this manifest because the manifest is the profile's one dispatch index, not because the System is involved.

Its deltas name the moments the board can have fallen behind: the clock advanced, a supply source was advanced (Rules Section 3.4.1), a commitment came due (Data Model Section 7.4), or the Bearer put a question to the trade. That last one settles the board **before** the answer and never generates in response to it — the asking is an occasion to settle, never a cause of what is found.

**Participation coverage (Decision 085).** Gatefall opts into the Data Model Section 2.4 `participation_audits` block. Coverage is **prospective from the baseline below**: no Event allocated at or before it carries an obligation, and no historical Event is rewritten. Within coverage, every Character named in an Event's own `participants` needs an entry — `record-updated` naming the object the promotion moved, or an explicit `no-change`.

The kinds listed are the fiction-bearing ones, where an NPC actually acted and their record could therefore have moved. Administrative kinds — `promotion`, `profile-adoption`, `rules-migration`, `ruling`, and the settlement kinds above — are deliberately outside coverage: they record bookkeeping about the world rather than something an NPC did in it, and auditing them would buy nothing but noise.

```yaml
participation_coverage_version: "1.0"
participation_coverage:
  baseline_as_of: EVT-000268
  event_kinds:
    - social
    - scene
    - combat
    - relationship
    - downtime
    - disclosure
    - discovery
    - exploration
    - work
    - harvest-job
    - shop
    - loot
```

**Skill-credit coverage (Decision 090).** A resolved dangerous scene credits the Bearer's skills or explicitly credits none. Gatefall declares the coverage set below; within it, an Event naming the Bearer in its own `participants` must carry **either at least one `skills.*` entry in `counter_deltas` for him, or an explicit negative assertion** — a `progression_audits` entry with `domain: gatefall.skill_credit` and `result: none`, which is Decision 080's existing shape used for its existing meaning and requires no schema change. Coverage is **prospective from the baseline below**; no historical Event is rewritten.

```yaml
skill_credit_coverage_version: "1.0"
skill_credit_coverage:
  baseline_as_of: EVT-000391
  event_kinds:
    - combat
    - dangerous-scene-settlement
    - progression-batch-settlement
```

**The coverage set is the danger-bearing kinds, and which kind an Event carries is therefore a rule rather than a preference.** An Event that records a resolved dangerous scene — any exchange resolved on the d100 against a live threat, any Gate or instant-dungeon clear — carries `combat`, `dangerous-scene-settlement`, or `progression-batch-settlement`. **`kind: scene` is for fiction that resolved no dangerous encounter**, and is not available to a clear.

`EVT-000327` and `EVT-000332` are the recorded instance of this going wrong, and they are why the rule is written down: two complete solo instant-dungeon clears, populations of twelve apiece, one narrated *"solo clear, no damage taken"*, both filed as `kind: scene`. That single misfiling put them outside Decision 080's `progression_audits` coverage **and** outside every skill-counter obligation at once — one wrong classification disabling two independent gates, and both Events then carried `counter_deltas: []` through a green checkpoint.

**What this cannot do, stated rather than implied.** The gate reads the classification, so a dangerous scene misfiled as `scene` escapes it exactly as those two did. Two cheaper detectors were measured against the live record before this shape was chosen, and both were rejected on the measurement rather than on taste: keying coverage on **`kind: combat` alone** — F-012's own proposal — catches **neither** `EVT-000327` nor `EVT-000332`, since both are `scene`; and scanning descriptions for a **resolved-clear signature** fires on 18 post-baseline Events of which most are administrative records merely *mentioning* a past clear, the same noise ratio that rejected Decision 085's derived check. Prose is not a substrate a gate can stand on. The residual exposure is real, it is one line wide, and it is named here so the next mover reads a known limit rather than rediscovering it.

- **Tier 1 — Mandatory (unprompted; a pure function of state the System already holds).** Fires the instant the condition holds, with zero discretion:
  - Mana, Health, or XP changes → the matching compact line (Section 14.5);
  - an XP threshold is crossed → first settle every Section 3.2 reward immediately, then show the `LEVEL UP` block (worked example in Section 3.7); never render an acceptance prompt;
  - the daily quest is issued, completed, or failed → its block (Section 8.1, Section 14.5);
  - an accepted Urgent quest or attached Hidden quest completes, fails, expires, or reveals → its stored quest-state block (Section 8.4);
  - 06:00 local time arrives → the Daily Premium stock rotates and its compact line fires (Section 12.5);
  - the daily window lapses incomplete → the penalty warning, then the transfer notice (Section 14.5);
  - a level-up settles level 10 or any multiple of ten above it → the `TITLE ASSESSMENT` block, immediately after the level-up block (Section 16.1);
  - a pool crosses a declared danger threshold (e.g., 0 Mana, Section 5.3) → a warning;
  - a creature of resolved Rank (Section 14.4) enters the Bearer's perception → its **designation color** renders inline, red and pulsing for a creature two or more Ranks above him — the System's only unprompted tactical warning (Section 14.6);
  - **a subject covered by a reached Flux Sight rung enters the Bearer's perception** (Section 4.4) → the **Flux Sight read** fires on sight, no roll and no Mana, carrying every value that rung authors: a Gate's true Rank at E; a monster's Rank, Health and Mana at D; a hunter's or other awakened's at C; an unidentified item's full effect at B. **The read and the designation color render as one line** (Section 14.5), the color being derived from the very Rank the read states.
- **Tier 2 — Mandatory at the first qualifying yield (bounded presentation discretion; a declared precondition must hold).** A Hidden pointer when every Section 8.4.3 precondition is recorded; an Urgent offer when every Section 8.4.2 precondition holds; a danger warning while the condition holds. The Runtime chooses phrasing, not whether to fire or how long to delay after the applicable boundary.

  **The B-rung item appraisal moved to Tier 1 in 1.61** and is no longer listed here. It was the only Flux Sight rung any tier named, and naming one rung under *bounded discretion* while the rest went unnamed is what made the whole passive read as conditional. Every rung now fires on the same terms, which is what "reads on sight" has always meant.
- **Tier 3 — Prohibited.** The System may never fire to supply an uncertain outcome, to describe a world-fact (Section 14.2), to author the Bearer's decision, or **with no declared precondition at all**.

**On request** is separate: the `/system` panels (Section 15) render on the Bearer's command at any time. They are read-only views, not announcements, and they never resolve an action.

## 14.4 The Information Boundary

The System knows, exactly: **Bearer state** (Sections 3–7, 12.5), **quest state** (including concealed fields the character-facing Hidden panel withholds under Section 8.4.3), **its current shop stock**, and **Gate state once resolved** (a Gate's true Rank after Section 9.5 settles it, its population, its break timer). It does **not** know NPC minds, hidden identities, the true Rank of an unconfirmed Gate before entry, or anything a die has not yet resolved.

It is **perceptible only to its Bearer** — always, without exception. It cannot be displayed, shared, demonstrated, or proven; to an onlooker, a Bearer reading a notification is a man who stopped walking and looked at nothing. **System-issued quests are Bearer-only and therefore unknown to the world** — no NPC, institution, or public holds a Knowledge State about one. The quest is secret; its footprint is not. If the daily quest puts the Bearer on a rooftop at dawn, the world sees a man on a rooftop at dawn.

### 14.4.1 The Bearer-Only Register (closed list)

The paragraphs above state the boundary from the System's side — what the System knows, and that only its Bearer perceives it. This is the same boundary stated from the **narration** side, as a closed list, because that is the form the resident NPC Channel Check consumes. **No NPC holds any item below under any circumstance, short of the Bearer stating it aloud in the fiction.**

| # | Bearer-only quantity | Sections |
|---|---|---|
| 1 | **Level**, and any level-derived figure | 12.5 |
| 2 | **XP**, current or total, and award sources | 12.5 |
| 3 | **System Rank**, and whether it differs from the carded Rank | 3, 19 |
| 4 | **Skills** — that one exists, its name, its Rank, its effect, its Mana cost | 7, 13.6 |
| 5 | **Mastery** — tier, progress, ascension eligibility, breakthrough offers | 7.4, 7.5 |
| 6 | **Quest state** — that a quest exists, its terms, timer, or reward | 8.4 |
| 7 | **Notifications and panels** — anything the System rendered | 14.5, 15 |
| 8 | **Pending rewards, points, and grants** not yet spent | 12.5 |
| 9 | **Exact pool values** — Health, Mana, or a target's, as numbers | 6.1, 5.2, 20.5 |
| 10 | **That he has a System at all** | 14.1 |

**Why a list and not the prose above.** The prose is correct and was in force for every leak in the `F-003` → `F-021` family; two of them asserted an item on this list anyway. The difference is what the check has to do. Deciding whether *this* NPC has a channel to *that* fact is a judgment made at the moment the Runtime is under pressure to make a line sound informed. Deciding whether a quantity sits on a ten-row list is a lookup, and **it carries no per-NPC reasoning because the answer never varies by NPC** — which is why it belongs in a step *before* the four-way channel test rather than inside it.

**This does not compete with Decision 091, and it is not a fourth prohibition.** Decision 091 rejected *"keep strengthening the channel check"* as the answer to this flag family, and it was right to: the recurrence never fell because those NPCs were nobody, and Want/Fear/Secret/Belief is what makes them somebody. That decision also states that **the channel test is unchanged and is not replaced** — it governs knowledge while 091 governs personhood. This register is a defect repair *inside* the retained test: it removes a judgment the test never needed to make, rather than adding a rule to it.

**Section 20.5 is extended in scope, not in strength.** 20.5 forbids a character quoting HP, damage, a die result, or a Rank. This applies the same prohibition to the **quantity itself**, whether or not a number is spoken: *"you levelled"* is barred exactly as *"you're at 9 of 40"* is, and it is not a softer version of *"you're moving better than last week."* The first is register state; the second is visible conduct and remains correct play — the footprint rule of 14.4 is untouched and is the permitted branch.

**A belief about a register item is still a belief.** Under Decision 091 an NPC may hold and voice a *false* conviction about the Bearer — that he is stronger than his card, that something is wrong with him. That is characterisation and is not barred here. What is barred is the NPC holding the **quantity** as knowledge. "You're carrying something you don't talk about" is a belief; "you're level 25" is a register item, and no confidence rating makes it knowable.

**A closed channel on a register item never opens except by disclosure.** A Closed Channels row for a register item carries `Opens on:` **Nothing** unless the Bearer tells that NPC in words, and a row written otherwise is wrong.

## 14.5 The Inline Notification Contract (exact)

Everything the System says inline during prose shares **one render with the panels of Section 15** and takes **one of two forms**. This is the A10 notification contract, identical to Section 8.2 — the two must never diverge.

**The System has one visual identity, and through 1.62 it had two.** A summoned panel was a framed window — `╔══ ◈  S Y S T E M ══`, interior column 6, bracketed Ranks, a fixed label vocabulary. An inline notification was a plain-text line wearing a `[SYSTEM]` prefix, sharing none of it. Nothing in the fiction justifies the split: it is the same System, addressing the same Bearer, through the same interface, and it looked like two different things depending only on whether he had asked. **1.63 removes the `[SYSTEM]` prefix entirely and renders every System utterance in the Section 15.1 frame.**

**The two forms, and the line between them is what the System is doing:**

- **The window** — what the System **presents**: a read, an event, an offer, an assessment, a panel. Framed, always, per Section 14.5.3.
- **The ledger line** — what the System **counts** while an action resolves: a pool or XP moving, on the Bearer or on a target he acted upon. Unframed but indented into the window's interior column, per Section 14.5.2.

A window is an occasion and is allowed to cost three rows. A ledger line fires several times an exchange, and framing each one would put forty rules through a single fight — the fiction pushed apart by its own bookkeeping. **The frame marks what the System chose to say; the indent marks what it is merely keeping.**

### 14.5.1 The grammar

Every inline line is built from the same parts, in this order, separated by ` · `:

| Part | Form | Notes |
|---|---|---|
| Subject | name, or `<n> × <name>` for a group | omitted on the Bearer's own lines — he is the default subject |
| Rank | `[E-Rank]` … `[S-Rank]` | **always bracketed and suffixed; a bare letter is never rendered** (Section 15.1) |
| Delta | `+n` / `−n` | a true minus sign `−`, not a hyphen |
| Standing | `before → current/maximum` | for XP, `current/next threshold` (Section 3.1) |
| Source | `(reason)` in parentheses, last | why the number moved |

**Pool labels are `HP` and `MP`, everywhere and always** — inline, in panels, and in prose that quotes a pool. `XP` likewise. A label is never spelled one way on one surface and another way on another (Section 15.1's fixed-vocabulary rule). This replaces the mixed `HP:` / `Mana:` forms used through 1.59.

### 14.5.2 Form one — the ledger line

A pool or XP moving during resolution renders **unframed, at interior column 6** — the same column a window's content sits on, so the numbers read as the System's even with no rule above them:

```text
     MP −6 · 98 → 92/98
     HP −38 · 200 → 162/200
     XP +50 · 40 → 90/300  (elite ×2)
```

**The ledger line carries a subject when the subject is not the Bearer.** His own pools take no name — he is the default subject (Section 14.5.1) — while a target's pools, re-rendered under Section 14.5.5, name whose they are:

```text
     Crypt Ghoul · HP −323 · 250 → 0/250
```

**The indent is load-bearing and is not decoration.** It is what makes a ledger line legible as System output at a glance without a frame, and it is why the frame can be reserved for occasions. A ledger line rendered flush against the prose margin is misrendered.

**The XP line names its source, and this is not decoration.** Section 3.3 makes every award a fixed multiple of a Rank value, so a line reading `+50 (elite ×2)` states the award *and* the arithmetic that produced it, and a reader can check it against the table without reconstructing the fight. A running total that names no source is unauditable the moment anyone doubts it — recorded as `F-017`, whose third item is an entire instant dungeon's XP going unrendered and the total then resuming from a figure that matched no derivable sum.

Render each changed quantity **once per resolved action**; if one action resolves several monsters, aggregate that action's change and notify once (Section 3.6).

### 14.5.3 Form two — the window

Anything the System **presents** renders as a framed window: the Flux Sight read, level-up, mastery, quests, rotation, title assessment, class panels, warnings (Sections 3.2, 3.9, 7.4, 8.1, 8.4, 12.5, 16.1, 18.4–18.8). **The frame is Section 15.1's, unchanged and identical** — same glyphs, same nominal 78-cell rules, same interior column 6, same status gutter, same bracketed Ranks, same fixed label vocabulary. A summoned panel and a fired notification are the same window; only the name in the top rule differs.

```text
╔══ ◈  <E V E N T   N A M E> ═════════════════════════════════════════════════
     <content rows, at interior column 6>
╚═════════════════════════════════════════════════════════════════════════════
```

**The top rule carries the event name, letter-spaced, in place of `S Y S T E M`.** A summoned panel names the surface the Bearer asked for; a fired window names the occasion that fired it. Both open on `╔══ ◈ `, both close on `╚══`, and neither is closed on the right.

**Content rows follow Section 15.1 exactly**, which means the body needs no separate rule here — it is the panel body rule, applied to a smaller window:

- Where entries share a shape, they render as **columns**, values landing on fixed columns and numerics aligned on their digits. A read's subjects are entries of one shape, so a read is a column layout.
- Where a field set is **named and varying**, each field renders on its own row with its label in the leftmost column and its value on the value column — the quest form. **A label is never punctuated with a colon inside a window**; the column does the work the colon used to do, exactly as `Level`, `Card Rank` and `Unspent Points` already do in Section 15.2.
- Prose never shares a row with tabular values; it goes on **indented continuation rows** at interior column 10.
- **An absent value renders `—`**, never an omitted row.

```text
╔══ ◈  L E V E L   U P ═══════════════════════════════════════════════════════
     Level 15     all Stats +1     Ability Points +5     HP/MP restored
╚═════════════════════════════════════════════════════════════════════════════

╔══ ◈  U R G E N T   Q U E S T   O F F E R ═══════════════════════════════════
     Cordon Breach
     Objective       <one concrete intervention with counters if needed>
     Reward          <XP> XP
     Deadline        <known timestamp or causal end condition>
     Failure         <the established condition that makes rescue impossible>
     Action          Accept / Decline
╚═════════════════════════════════════════════════════════════════════════════
```

**A window with a subject puts it on the first content row**, above the fields, rather than in the top rule — the top rule names *what happened*, the first row names *to whom*. Where a message has no subject at all the first row is simply the first field.

**Why the `[SYSTEM]` prefix is gone.** It existed to mark a line as the System's when the line had no other way to say so. A framed window says so with its frame, and a ledger line says so with its indent, so the prefix marks nothing that the render does not already carry — and through 1.62 it was doing active harm, because a prefix is cheap enough to attach to any shape at all, which is exactly how four incompatible message shapes accumulated under one label.

### 14.5.4 The Flux Sight read (exact)

A Flux Sight read (Section 4.4) is Tier 1, fires on sight with no roll and no Mana, and **carries the designation color on the subject's own row** — the color is derived from the Rank the read states (Section 14.6), so rendering them separately says one thing twice.

**A read is one window however many subjects it covers.** Everything perceived in the same instant shares a frame, its subjects rendered as columns under Section 14.5.3 — one rule for a room, not one rule per creature.

```text
╔══ ◈  F L U X   S I G H T ═══════════════════════════════════════════════════
     <subject>            [<Rank>-Rank] <color>     HP <cur>/<max>    MP <cur>/<max>
╚═════════════════════════════════════════════════════════════════════════════
```

Worked, at System Rank C:

```text
╔══ ◈  F L U X   S I G H T ═══════════════════════════════════════════════════
     Crypt Warden         [C-Rank] yellow     HP 1000/1000    MP 240/240
     10 × Crypt Ghoul     [E-Rank] gray       HP 40/40        MP 20/20      each
     Marisela Kwan        [B-Rank] orange     HP 600/600      MP 300/300
     Gate, Lakefront Corridor    [D-Rank]     confirmed by capability
╚═════════════════════════════════════════════════════════════════════════════
```

**Per subject class:**

| Subject | Rung | Renders |
|---|---|---|
| **Gate** | E (at or below System Rank), D (one above) | true Rank and `confirmed by capability`. A Gate has no pools and renders no `HP`/`MP`, and **no color** — a Gate is not a creature (Section 14.6) |
| **Monster** | D | Rank, color, HP, MP |
| **Hunter or other awakened** | C | Rank, color, HP, MP |
| **Unidentified item** | B | its full effect; no pools, no color |

**Grouping.** Identical commons render as one group row with `<n> × <name>` and `each` after the pools. **Anything individually consequential takes its own row** — every elite, every boss, every named hunter, and any common whose pools have diverged from its group. A group row is a compression of identical subjects, never a summary of different ones.

**A populated room renders one room row, then individuals on engagement.** Where the Bearer perceives many awakened at once — a guild hall, a staging floor, a bar — the read does not emit one row per person. It emits a single row giving the room's shape, counts by Rank with each Rank's color, and then a **full individual read on anyone he engages, is approached by, singles out, or fights**:

```text
╔══ ◈  F L U X   S I G H T ═══════════════════════════════════════════════════
     20 awakened present     [B-Rank] ×1 orange   [C-Rank] ×6 yellow   [D-Rank] ×13 white
╚═════════════════════════════════════════════════════════════════════════════
```

This is the grouping rule applied to people rather than to monsters: **compress the undifferentiated, name what matters.** The room line carries no pools, because a count of strangers has no single pool to state; a pool arrives with the individual read. The Bearer's knowledge is unchanged either way — the passive reads all of them, and the rendering is what is bounded.

**Partial coverage renders what is covered, and says so.** Where the Bearer's Flux Sight Rank reaches a subject's Rank but not its class, or the System holds no resolved Rank at all, the line carries what is known and nothing more — an unconfirmed Gate's population is uncolored and unread until first entry resolves it (Sections 9.5, 14.6), and the System asserts no value it has not been given (Section 14.2). A read is never padded with a guess to fill the template.

### 14.5.5 Re-rendering during a fight

**Full read on first perception of a subject in a scene** (for an awakened he has met before, Section 14.5.6 governs instead). Thereafter that subject's pools re-render **only in an exchange the Bearer's own resolved action changed them**, as a **ledger line** (Section 14.5.2) carrying the subject — the same rule his own numbers already follow, pointed outward:

```text
     Crypt Warden · HP −258 · 1000 → 742/1000
```

**The window fires once; the fight is ledger lines.** A read is an occasion — the moment the System tells him what he is looking at — and it is framed. What follows is arithmetic on a subject already introduced, so it takes the indent and no rule. An exchange that changes nothing about a subject renders nothing about it. The **window** repeats only if the subject's Rank is re-resolved or the Bearer's System Rank changes mid-scene and recolors it (Section 14.6).

**Why the pools re-render at all, when the color does not.** A designation color is fixed for the scene, so restating it is noise; a pool is the number the fight is actually about, and leaving it to be carried in conversational memory across sixty exchanges is precisely the drift `F-017` records. Rendering the change at the moment it happens is what makes a wrong figure visible while it is still cheap to correct.

### 14.5.6 A subject he already knows

**The per-scene cadence above is for a subject the Bearer is meeting.** For an awakened he has already read, the rule is **first meeting, then on change**:

- **The first time he ever perceives someone**, the full read fires, wherever that happens — a Gate mouth, a guild hall, a kitchen.
- **Afterwards it renders only when a value has materially moved** since his last read of that person: Health or Mana away from where he last saw it, a Rank that has changed, a condition the pools carry. An unchanged subject renders nothing, in any number of scenes.

```text
— an ordinary morning, nothing has moved —
(nothing rendered)

"Morning."

— he comes in favouring his left side —
╔══ ◈  F L U X   S I G H T ═══════════════════════════════════════════════════
     Owen Callahan        [C-Rank] yellow     HP 198/275      MP 137/137
╚═════════════════════════════════════════════════════════════════════════════
```

**The passive is not narrowed; the notification is.** Flux Sight remains always in effect and the Bearer always knows — Section 4.4 is untouched. What this bounds is when the System *says so*, and it is the same principle already governing the designation color (*"not repeated each exchange"*) and a target's pools in Section 14.5.5 (*rendered in the exchange that changed them*), now carried to people he lives among.

**It is also the more useful rule, not merely the quieter one.** Under a fire-every-scene cadence a partner's stat block opens every domestic scene, restating a number that has not moved in days — so the line carries no information and the reader learns to skip it, which is exactly when a real change slips past. Under this rule **a rendered line always carries news**, and an injured friend walking through the door is the case it fires on.

Ruled 2026-08-05 alongside the room line above, both raised by a player asking what the C rung does to an ordinary conversation. The `F-017` cadence — full read at first perception in a scene, then on change — was extended from Section 14.6's color rule without accounting for a familiar NPC standing in the Bearer's own kitchen.

## 14.6 Threat-Color Legibility (Designation Colors)

The System colors every creature the Bearer perceives. A **designation color** compares the creature's true Rank with the Bearer's **System Rank** (Section 6.6), and it is the single tactical read the System volunteers unprompted. It is a progression warning, not a substitute for the Bearer's actual Stats or a promised combat outcome.

The creature's Rank relative to the Bearer's System Rank sets the color:

| Creature's Rank vs. the Bearer's System Rank | Designation color |
|---|---|
| Two or more bands **beneath** | **gray** |
| One band **beneath** | **white** |
| **Same** band | **yellow** |
| One band **above** | **orange** |
| Two or more bands **above** | **red** — *pulses* |

- **Red pulses; everything else is steady.** A **red** designation — a creature two or more Ranks above the Bearer — is the System's **only unprompted tactical warning** (Section 14.3, Tier 1): it pulses to mark a threat that can kill him outright. Gray, white, yellow, and orange render steady and volunteer nothing beyond the color itself.
- **Derived from true Rank; never wrong, never guessed.** The color follows the creature's **true Rank**, resolved per Section 9.5 and known to the System per the information boundary (Section 14.4). The System never mis-colors a creature even when its posted Rank is a mis-Rank — the colors are how the Bearer *experiences* the true-Rank resolution Section 9.5 performs on entry. Equally, the System colors nothing whose true Rank it does not yet hold: an unconfirmed Gate's population is **uncolored until first entry resolves it** (Section 9.5), because the System asserts no Rank it has not been given (Section 14.2). Coloring is a rendering of resolved knowledge, never a preview of it.
- **Bearer-only, always — an edge and an exposure.** Like every System output the coloring is perceptible to the Bearer alone (Section 14.4). Ordinary hunters see nothing; to a party, the Bearer is a man who glanced at a beast and knew, a beat early, exactly how much it outclassed him. That is a quiet informational edge — and a standing exposure risk (Section 19): a Bearer who backs off a beast his card says he should crush, or holds his ground against one his card says should rout him, is visibly acting on knowledge the world cannot account for.
- **Against System Rank, so the palette shifts with progression.** The comparison is not the Bearer's carded rank and does not calculate his chance to win. A specialized or poorly allocated build may overperform or underperform its color; Section 4.3 and the direct Stats settle the real contest.

**In prose play.** A creature's designation color is stated **inline on first perception** of that creature in a scene and is not repeated each exchange unless the Bearer's System Rank changes mid-scene and recolors it. It has no `/system` panel of its own.

**Where a Flux Sight read covers the same creature, the color rides that read's line and is not rendered separately** (Sections 4.4, 14.5.4). Both fire at the same instant, on the same subject, at first perception, both without a roll, and the color is computed from the very Rank the read states — so two lines would report one perception twice. Where Flux Sight does **not** cover the creature but its true Rank is resolved, the color still fires alone on its own Tier-1 terms, exactly as authored above: the color is the floor, and the read is the floor plus what the rung adds.

**A Gate takes no color.** The palette compares a *creature's* Rank with the Bearer's, and a Gate is a place. A Gate's Flux Sight line carries its true Rank and nothing else (Section 14.5.4); its population is colored individually on first perception, once entry has resolved what that population is (Section 9.5).

## 14.7 The Onset Sequence

The System's **first contact** with a new Bearer is a fixed message sequence — the same four beats every time, rendered in the bracketed A10 style (Section 14.5, Section 15). This section authors only the **System's messages**; the in-world incident that precedes attachment is a campaign concern (Section 2) and is not authored here.

**Onset timing (owner ruling, 2026-07-24).** The incident is a campaign concern; its **pacing is not**. The System attaches within the campaign's opening arc and **no later than the resolution of the protagonist's first genuine fight** — the first scene in which he faces lethal, uncertain combat. The precipitating incident must still arise causally from the fiction in play — a brush with death is the classic crucible; what this ruling bounds is *when*, not *why*. A campaign that resolves its first real fight with the protagonist still bare of the System is out of law. This binds every Gatefall campaign, including any in progress at the time of the ruling.

1. **Attachment notice** — the initializing handshake and host designation, fired the instant the System attaches.
2. **Status-window grant** — the Console (Section 15.2) is granted and rendered once, opening at level 1 with the creation-array Stats and the Health/Mana maxima derived from its Vitality and Intelligence.
3. **First Daily Premium cycle** — initialize Section 12.5's five model bags, make its twelve real draws, and fire the rotation line; this is the current 06:00-to-06:00 cycle, not an extra cycle. Rune duplicate handling occurs only if the Bearer later consumes the fixed offer (Section 7.1).
4. **First daily quest** — the standing daily quest (Section 8.1) issues at the **next 06:00 local** after attachment. It expires at the immediately following local midnight; later quests repeat on the same 06:00-to-00:00 calendar-day schedule.

The worked onset block:

```text
╔══ ◈  I N I T I A L I Z I N G ═══════════════════════════════════════════════
     Host designation      accepted — you are the Bearer
     Status window         granted, access via /system
╚═════════════════════════════════════════════════════════════════════════════

╔══ ◈  S T A T U S ═══════════════════════════════════════════════════════════
     <NAME>
     Level           1                   Class          —
     XP              0/100               Title          —
╟──  VITALS  ────────────────────────────────────────────────────────────────╢
     HP    <4×Vitality> / <same>
     MP    <2×Intelligence> / <same>
     Unspent Points  0
╟──  STATS  ─────────────────────────────────────────────────────────────────╢
     Strength <n> · Agility <n> · Vitality <n> · Perception <n> · Intelligence <n>
╚═════════════════════════════════════════════════════════════════════════════

╔══ ◈  D A I L Y   P R E M I U M   S T O C K   R O T A T E D ═════════════════
     Offers          6 available
╚═════════════════════════════════════════════════════════════════════════════

— at the next 06:00 local —

╔══ ◈  Q U E S T   I S S U E D ═══════════════════════════════════════════════
     Daily Training
     Objective       100 push-ups 0/100 · 100 sit-ups 0/100 · 100 squats 0/100
                     10 km run 0/10
     Reward          Ability Points <+n> · Status Recovery · Daily Random Box
     Deadline        00:00 local tonight
     Warning         incomplete at midnight transfers you to a penalty zone
╚═════════════════════════════════════════════════════════════════════════════
```

Every value is read from creation state (Sections 3–6): level 1, XP 0/100, `Health = 4 × effective Vitality`, and `Mana = 2 × effective Intelligence`. After this sequence the Bearer is an ordinary played character carrying the System, and all further output follows Section 14.3.

---

# 15. The `/system` Command

Gatefall declares **`/system`** as its diegetic command. Its panels are **read-only views of canonical Bearer state** (Section 14.1): nothing is editable through them, every value is read or derived from canonical state and never invented at render (Decision 051), and the same state renders the same panel from any Runtime. Inline compact notifications (Section 14.5) remain the in-play surface between panel calls.

**The command has three tiers, and no other.**

- Bare **`/system`** renders the **Console** (Section 15.2) — one screen carrying everything that moves turn to turn, plus a counted index of everything that does not.
- **`/system <panel>`** renders one panel in full (Section 15.3): `skills`, `gear`, `quests`, `titles`, `shop`, `log`, and the class panel once one exists. `/system equipment` and `/system inventory` are **retained aliases of `/system gear`** and render exactly that panel.
- **`/system all`** renders every panel in sequence (Section 15.4) — the whole of the Bearer at once, for a Bearer who wants it.

A tier never shows less truth than another: the Console defers detail to a panel and says where it went, and nothing reachable under Profile 1.45 became unreachable. **A panel is not a summary of canonical state — it is a view of it.** Where a panel's row would require a value canonical state does not hold, the row renders `—` and nothing is inferred to fill it.

**One example Bearer runs through every panel.** Call him **Ren** — an illustration only, not a canon character — shown at two depths so the grammar is exercised both sparse and dense. **Ren at level 3:** an E-Rank Bearer with no class, creation array Strength 9 · Agility 11 · Vitality 10 · Perception 10 · Intelligence 10, two level-ups bringing base Stats to 11 · 13 · 12 · 12 · 12, an equipped E-Rank Quickknife granting Agility +2 and weapon power 2, XP 150/300, Health 39/48, Mana 18/24, 10 unspent points, and one completed daily whose three rewards are pending separately. **Ren at level 13:** D-Rank, still classless, base Stats 30 · 40 · 34 · 33 · 33, worn gear contributing Strength +1 · Agility +5 · Vitality +2, so effective Vitality 36 and effective Intelligence 33 give Health 144 and Mana 66 under Sections 6.1 and 5.1.

## 15.1 Render Grammar

Every panel is a **framed System window rendered in a monospaced code block**. The templates in Sections 15.2–15.4 are normative: a Runtime fills the `<…>` slots from canonical state and changes nothing else. This section governs the frame those templates are rendered into, and it governs every panel identically.

**It also governs every window the System fires unprompted** (Section 14.5.3). From 1.63 a summoned panel and a fired notification are the same render — same glyphs, same rules, same interior column, same gutter, same label vocabulary — differing only in the name carried in the top rule and in how much there is to say. A window the Bearer asked for and a window that arrived on its own should be recognisably one interface, because in the fiction they are one System.

**The frame is horizontal rules only, and carries no vertical edges.** A panel opens on a top rule, closes on a bottom rule, and divides on inner section rules; **no row carries a `║` at either margin.** The rules keep their left corner glyph and run rightward in `═` or `─`: the title sits in the top rule as `╔══ ◈  S Y S T E M  ·  <PANEL> ══`, a section rule carries its name at the left and may carry one count or status after its run, and the panel closes on `╚══`. An interior row is its content alone, and a blank interior row is an empty line.

**Templates win on geometry. Canonical state wins on values, always — and 1.73 is where that was separated (`F-030`).**

The rule below resolves a template-versus-prose conflict in the templates' favour, on the reasoning that *the templates are what a Runtime actually copies, so the templates win*. **That is correct for frame geometry and actively harmful for values**, and the profile did not distinguish the two until a daily-quest window rendered `Ability Points +3` at a Bearer holding **Ascetic**, whose entire authored effect is *grants +4 points instead of +3*. The Runtime copied the template and believed it had complied, because Section 8.1's Reward row carried a bare `+3` — **a default dressed as layout**, with no `<…>` to mark it as state-derived. Nothing could have caught it: no counter disagreed, because no counter was consulted.

```text
     GEOMETRY   rules, corners, spacing, where a section closes
                -> the template is normative and wins outright

     VALUES     any number, name, Rank, count, cost or figure
                -> canonical state wins outright, and a template that
                   states one as a literal is a DEFECT, not a default
```

**Every state-derived value in every template carries angle brackets, without exception.** A bare literal in a value position is a profile defect to be repaired the moment it is found, and a Runtime encountering one **reads canonical state and renders that**, rather than copying the literal. *"Fill the slots and change nothing else"* has never licensed rendering a number the Bearer's own state contradicts.

**Only an inner section rule is closed on the right, and it closes on `╢`.** The top and bottom rules run open. This is a correction rather than a change: through 1.62 this paragraph said *no* rule was closed on the right while every normative template in Sections 15.2–15.4 closed its section rules on `╢`, so the stated rule and the templates it governs disagreed on every panel in the profile. **The templates are what a Runtime actually copies, so the templates win** — and the asymmetry earns its keep, because a closed rule reads as a divider *between* two things while an open rule reads as an edge *of* something, which is exactly the difference between a section break and the start or end of a window.

```text
╟──  ACTIVE  ─────────────────────────────────────────────────────  9 known  ╢
```

**Why the edges are gone.** They cost more than they bought. A right edge only holds if every row is padded to an exact width, so a Runtime that miscounts one glyph — and these panels are full of them, `★`, `█`, `◈`, `×`, bracketed Ranks — renders a wall that visibly fails to close, turning a cosmetic slip into something that reads as a broken window. The left edge then repeats that risk on every row for nothing, since the rules already mark where a panel starts and ends. What the frame is actually for is telling the Bearer where a panel begins, where it ends, and where its sections divide, and the horizontal rules do all three on their own.

**Every rule is 78 cells, in the template and in the render alike, and a template is copied verbatim.** A top rule, a bottom rule and every inner section rule in a window are the same length as each other, so a panel's edges and its dividers align on both margins. There are three forms and no others:

- **Top rule** — `╔══ ◈ ` then the letter-spaced name, then ` ══` and a `═` run to cell 78. Open on the right.
- **Bottom rule** — `╚` then a `═` run to cell 78. Open on the right.
- **Section rule** — `╟──  ` then the name, then `  ` and a `─` run, closed on `╢` at cell 78. Where the rule carries a count or status it renders `  <status>  ╢` flush against the closing glyph, the `─` run shortening to absorb it.

**This replaced an abbreviation, and the abbreviation is what the rule is against.** Through 1.83 every template wrote its rules as `╔══ ◈  S Y S T E M ══…`, `╟──  VITALS  ──…──╢` and `╚══…`, on the reasoning that a rule's *run* carries no information and writing it out costs bytes on every budget that loads the section. The saving was real and the cost was worse: **a template that does not show its own geometry cannot be copied, only interpreted**, and 136 of this profile's 165 rules were interpreted rather than copied. Two that had been written out — `ACTIVE` in this section's own example and `EARNED` in Section 16.2 — drifted to 77 cells by trailing their run past the status text, and neither the gates nor a reader caught it, because there was nothing to compare them against. **A geometry rule stated in prose beside templates that do not obey it is a rule with no reader.**

**The `…` is not a glyph this profile uses.** It appears in no rule, in no row, and in no template. A run that needs completing is written completed.

**Rows are laid out on columns, not padded to a width.** The Runtime aligns each group's columns as the templates below set them and **never pads a row rightward**, because there is no right margin to pad to; a short row simply ends. It **never truncates**: a value too long for its row wraps onto an indented continuation row beneath its own label, at the label's indentation. The rules themselves run to a nominal 78 cells so that panels stack evenly, and a rule is the only thing in a panel with a fixed length.

**Spacing is structural, not decorative, and is required.** A window that omits it is misrendered:

- one blank row directly below the top rule and directly above the bottom rule;
- one blank row above and below every inner section rule;
- one blank row between a column header and its first data row;
- one blank row between consecutive entries that carry continuation rows;
- **no** blank row between consecutive single-row entries in the same group.

**The gutter.** A row's first five cells are a status gutter. An ordinary row begins at column 6. A marked row places its glyph at column 3. Columns are counted from the start of the row itself, there being no edge character to count from. There are exactly two glyphs, and a row carries at most one:

- **`!`** — actionable now: an unclaimed reward, an unspent point, a live deadline, a quest the Bearer can still complete today.
- **`Δ`** — changed since the campaign's most recent promoted checkpoint. The comparison is against stored checkpoint state, so the mark is derived and canonical, never remembered.

**Columns.** Where a group's entries share a shape, the group renders as a table: a header row naming each column, then one row per entry with values landing on fixed columns. Numeric columns align on their digits. Prose never shares a row with tabular values — an entry's effect, limits, and condition go on **indented continuation rows** beneath it, at interior column 10.

**Rank always renders bracketed and suffixed** — `[E-Rank]`, `[D-Rank]`, `[C-Rank]`, `[B-Rank]`, `[A-Rank]`, `[S-Rank]` — in every panel, every column, and every continuation row, including a Stat Passive's next rung and a Card or System Rank on the Console. **A bare letter is never rendered.** The bracketed form is the same one item lines and skill lines already use throughout this profile, so a Rank reads identically wherever it appears.

**Bars.** `HP`, `MP`, and `XP` render as 20-cell meters, `█` filled proportional to `current/max` and `░` empty, with the numbers beside them. XP measures against its next-level threshold (Section 3.1).

**Fixed label vocabulary.** `HP`, `MP`, `XP`, `Card Rank`, `System Rank`, `Physical Reduction`, `Unspent Points`, `Stat Contribution`, `Non-Daily Slots`, `Acc.1`, `Acc.2`, `Main`, `Off`. A label is never shortened differently in another panel — **or on another surface**: the three pool labels read identically in a panel, in an inline notification (Section 14.5), and in prose that quotes a pool.

**A skill's Mana cost is never abbreviated** (owner ruling, 2026-07-30, Section 20.3). The skills table carries a column headed `MANA` with the cost beneath it; the word appears in full, and `M<n>` remains forbidden. A costless ordinary skill renders under `PASSIVE`, where the column does not exist.

**Scope of that ruling, stated in 1.61 rather than left to inference.** It governs the **skill-cost column** — the surface it was made about, and the surface its own next sentence names. It does not govern the **pool labels**, which are `HP`, `MP` and `XP` on every surface, as the bar rule directly above has always rendered them. The ruling's target was `M<n>`, a compression that made a cost unreadable beside a skill name; nothing about it was aimed at the pools. Through 1.59 the inline contract read `HP:` and `Mana:` in the same three-line block — one word spelled out between two abbreviations — and that mixture is what the scoping resolves. A cost is written `Mana 8`; a pool is written `MP 92/98`.

**An empty group still renders**, with its header and `none` on the following row. A fresh Bearer's window has the same shape as a level-50 Bearer's — sections do not appear and disappear, so the Bearer always sees the whole of himself.

**Every value is read live from canonical state** (Section 14.1): quests from the quest log, skills from Section 7.2 ledger entries, titles from Section 16, worn slots and stored holdings from Section 12.9, gold from the shop balance, cash and pending payouts from the campaign's ownership ledger. Effective Stats, physical reduction, and every damage preview are **derived at render** from those reads. Nothing is invented, and nothing is carried forward from a previous render.

**Disposed holdings never render.** A stored line whose quantity is zero, or whose canonical entry records it as sold, consumed, given away, or lost, is ledger history and is absent from every panel.

**Damage previews use Section 6.2, never stored prose.** Every equipped damaging weapon and every known offensive active skill renders `DMG <n> standard · before reduction`, derived with the standard `×1` result and zero target reduction. Multi-hit skills render each separately resolved hit in order; when either hand can open, both legal orders render. Non-damaging skills and stored weapons receive no preview.

**The numbers are the diegetic exception of Section 20.5** — the System speaks in figures to its Bearer by design, and only he sees these windows.

## 15.2 `/system` — the Console

Bare **`/system`** renders the Console: identity, vitals, stats, unclaimed rewards, active quests, a counted index of every other panel, and funds. It is the default because it is what a Bearer checks between exchanges.

```text
╔══ ◈  S Y S T E M ═══════════════════════════════════════════════════════════

     <NAME>

     Level           <L>                 Class          <class or —>
     Card Rank       [<Rank>]            Titles         <equipped or —>
     System Rank     [<Rank>]            Condition      <injury or none>

╟──  VITALS  ────────────────────────────────────────────────────────────────╢

     HP    <20-cell bar>     <current> / <maximum>

     MP    <20-cell bar>     <current> / <maximum>      <recovery mode>

     XP    <20-cell bar>     <current> / <next>         <n> to Level <L+1>

╟──  STATS  ─────────────────────────────────────────────────────────────────╢

                          BASE      GEAR      TOTAL

     Strength            <base>     <+gear>    <effective>
     Agility             <base>     <+gear>    <effective>
     Vitality            <base>     <+gear>    <effective>
     Perception          <base>     <+gear>    <effective>
     Intelligence        <base>     <+gear>    <effective>

     Physical Reduction                        <derived>
     Unspent Points                            <n>

╟──  PENDING  ──────────────────────────────────────────────  <n> unclaimed  ╢

  !  <reward name>          <amount>    × <count>

╟──  QUESTS  ──────────────────────────────────  slots  <used> / <capacity>  ╢

  !  [ <TYPE> ]     <quest name>                     <status or streak>
                    <objective progress>
                    <local or causal deadline>

╟──  ELSEWHERE  ─────────────────────────────────────────────────────────────╢

     Skills          <n> active  <n> passive  <n> stat      /system skills
     Gear            <n> worn · <n> stored                  /system gear
     Titles          <n> earned · <k>/<s> equipped          /system titles
     Daily Premium   <n> / 6 · rotates <deadline>           /system shop

╟──  FUNDS  ─────────────────────────────────────────────────────────────────╢

     Gold            <n> g
     Cash            $ <n>          last known
     Pending         $ <n>          <n> payouts

╚═════════════════════════════════════════════════════════════════════════════
```

Ren at level 3, mid-run, carrying one completed daily's separate rewards:

```text
╔══ ◈  S Y S T E M ═══════════════════════════════════════════════════════════

     REN

     Level           3                   Class          —
     Card Rank       [E-Rank]            Titles         Loner
     System Rank     [E-Rank]            Condition      No injury

╟──  VITALS  ────────────────────────────────────────────────────────────────╢

     HP    ████████████████░░░░      39 / 48

     MP    ███████████████░░░░░      18 / 24        resting

     XP    ██████████░░░░░░░░░░     150 / 300       150 to Level 4

╟──  STATS  ─────────────────────────────────────────────────────────────────╢

                          BASE      GEAR      TOTAL

     Strength              11        +0         11
     Agility               13        +2         15
     Vitality              12        +0         12
     Perception            12        +0         12
     Intelligence          12        +0         12

     Physical Reduction                         0%
     Unspent Points                             10

╟──  PENDING  ────────────────────────────────────────────────  3 unclaimed  ╢

  !  Ability Points        +3    × 1
  !  Status Recovery             × 1
  !  Daily Random Box            × 1

╟──  QUESTS  ────────────────────────────────────────────────  slots  1 / 1  ╢

  !  [ DAILY ]      Training                          streak  4
                    Push-ups 40/100 · Sit-ups 100/100
                    Squats 20/100 · Run 6/10 km
                    Deadline 00:00 local

  !  [ URGENT ]     Cull the Red Line Nest            3 / 4 · +40 XP
                    Deadline: crisis ends

╟──  ELSEWHERE  ─────────────────────────────────────────────────────────────╢

     Skills          3 active  1 passive  0 stat            /system skills
     Gear            1 worn · 5 stored                      /system gear
     Titles          2 earned · 1/1 equipped                /system titles
     Daily Premium   6 / 6 · rotates in 14h12m              /system shop

╟──  FUNDS  ─────────────────────────────────────────────────────────────────╢

     Gold            340 g
     Cash            $ 4,000.00     last known
     Pending         $ 0.00         no payouts

╚═════════════════════════════════════════════════════════════════════════════
```

- **`PENDING` lists each unclaimed reward separately** — Ability Points, Status Recovery, and Daily Random Box each on their own row with their own count (Section 3.9) — and the whole section renders `none` when empty. Level-ups never appear; they settle immediately.
- **`QUESTS` carries capacity in its rule** (`slots <used> / <capacity>`) and then the active quests in the Section 8.4.4 order: Daily, Urgent by deadline, Hidden by attachment time, Class. Objectives and deadlines render on continuation rows. An unrevealed Hidden quest renders only `[ HIDDEN ]     ???`.
- **`ELSEWHERE` is an index, not a summary.** Each row states a count and names the panel holding the detail. It never carries a value that appears nowhere else.
- **`FUNDS` shows gold and cash on separate rows and never totals them.** They do not exchange (Section 12.5), and the layout says so by offering no conversion. Gold is canonical System state; **cash is labeled `last known`** because the System holds no bank account — it renders what the Bearer knows of his own balance, read from the campaign ownership ledger. `Pending` sums filed-but-unreceived payouts and is never counted as cash on hand.

## 15.3 Focused Panels

Each panel below renders in its own framed window under Section 15.1's grammar. Three are **interactive**: `/system gear` (equipping, unequipping, withdrawing), `/system shop` (buying and selling), and `/system titles` (equipping). Acting through a panel re-renders the affected totals immediately.

### 15.3.1 `/system skills`

Skills render in **three groups, and never any other**. The `SKILLS · ACTIVE` group contains every skill whose ledger entry carries a Mana cost. The `SKILLS · PASSIVE` group contains every skill whose cost is `passive` and is not a Section 4.4 threshold passive. `STAT PASSIVE` contains every Section 4.4 threshold passive, which has its own row shape and therefore its own group rather than a second grammar inside `PASSIVE`. Preserve character-ledger order inside each group; never duplicate a skill, never move one between groups, and never classify from its name or prose effect. Each group renders even when empty, with `none` beneath its header.

```text
╔══ ◈  S Y S T E M  ·  S K I L L S ═══════════════════════════════════════════

╟──  ACTIVE  ───────────────────────────────────────────────────  <n> known  ╢

     SKILL                 RANK       MASTERY            MANA    NEXT

     <name>                [<Rank>]   <★ string> <level> <n>     <n> / 3
         <effect>
         DMG <n> standard · before reduction

╟──  PASSIVE  ──────────────────────────────────────────────────  <n> known  ╢

     SKILL                 RANK       MASTERY                    NEXT

     <name>                [<Rank>]   <★ string> <level>         <n> / 3
         <effect>

╟──  STAT PASSIVE  ──────────────────────────────────────────────  <n> held  ╢

     SKILL               RANK       DRIVER         USES    NEXT RUNG

     <name>              [<Rank>]   <STAT> <n>     <n>     [<Rank>] at <n>
         <effect>

╚═════════════════════════════════════════════════════════════════════════════
```

Mastery renders as the five-cell star string of Section 7.4 followed by its level name. `NEXT` is qualifying-scene progress toward the next mastery level, `<n> / 3`. Cumulative successful-use counts are canonical but do not render here; they are reached through `/system skills <name>`. A Stat Passive has no stars and no mastery progress: it renders its driving Stat, that Stat's current value, its use count, and the next rung's threshold. Where Section 4.4's authoring clamp holds the next rung, that cell reads `[<Rank>] held: rung unauthored` instead of a threshold, so a rung the Bearer has reached in Stat points but cannot receive is visible rather than looking merely unearned.

Ren at level 13:

```text
╔══ ◈  S Y S T E M  ·  S K I L L S ═══════════════════════════════════════════

╟──  ACTIVE  ─────────────────────────────────────────────────────  4 known  ╢

     SKILL                 RANK       MASTERY            MANA    NEXT

     Mana Bolt             [E-Rank]   ★★★★☆  Expert      4       2 / 3
         Ranged mana strike at ×1.45 of the E-Rank baseline
         DMG 15 standard · before reduction

     Mend                  [E-Rank]   ★★☆☆☆  Practiced   5       1 / 3
         Restores Health at ×1.15 of the E-Rank baseline

     Sprint                [E-Rank]   ★★☆☆☆  Practiced   3       2 / 3
         +1 step on movement and pursuit · covers two exchanges

     Flash Step            [D-Rank]   ★★★☆☆  Adept       6       0 / 3
         Close or break line of sight · +1 step for three exchanges

╟──  PASSIVE  ────────────────────────────────────────────────────  1 known  ╢

     SKILL                 RANK       MASTERY                    NEXT

     Dagger Mastery        [E-Rank]   ★★★★☆  Expert              1 / 3
         Adds +0.25 to a Quickknife chassis · ×0.75 → ×1.00

╟──  STAT PASSIVE  ────────────────────────────────────────────────  2 held  ╢

     SKILL               RANK       DRIVER         USES    NEXT RUNG

     Flux Sight          [D-Rank]   PER  33        2       [C-Rank] at 44
         Reads a perceived monster — Rank, Health, Mana

     Pre-empt            [D-Rank]   AGI  40        1       [C-Rank] at 44
         Acts normally in a surprise exchange on an ambush warning

╚═════════════════════════════════════════════════════════════════════════════
```

### 15.3.2 `/system gear`

**One panel holds the worn loadout and the dimensional inventory**, because Section 12.9 governs them as one surface: what is worn and what is stored differ only in whether the line is applied (Section 11.5). Splitting them across two commands made the ordinary act — comparing a stored piece against the worn one and swapping — span two windows. `/system equipment` and `/system inventory` remain valid and render this panel.

`WORN` divides into weapons, armor, and accessories so each group's columns describe what that group actually has: weapons carry power and a chassis multiplier, armor carries reduction, accessories carry neither. `WORN · TOTALS` sits at the seam, stating the derived stat contribution and total physical reduction — so the worn pieces, what they produce, and the stored pieces that could replace them all fall in one read.

`STORED` groups holdings by kind — **Gear · Consumables · Keys · Materials · Special** — each rule carrying its live line count. A group with no live holdings renders `none`. Quantities collapse: one line per item with `× <n>`, never one line per copy.

**The five kinds are defined, and a holding sits in exactly one.** Naming the groups without saying what belongs in them left the classification to be improvised at the render, which is the Section 20.2 defect: a stated number — each rule's live line count — resting on an unstated rule. **Test the kinds in this order and take the first that matches.**

| # | Kind | Holds |
|---|---|---|
| 1 | **Keys** | Instant-dungeon keys (Section 17), at any Rank and from any source. |
| 2 | **Consumables** | Anything spent on use and gone: potions, seals, antidotes, elixirs (Sections 12.5, 12.7). |
| 3 | **Special** | Anything whose worth is not mechanical — evidence, documents, quest-bearing objects, named artifacts (Section 11.6) — **and any item whose function, Rank, or provenance is unresolved.** An unidentified thing is Special until identification moves it. |
| 4 | **Gear** | Anything carrying a Section 11.5 item line — weapon, armor, or accessory — while stored rather than worn, plus instruments and tools used repeatedly rather than spent. |
| 5 | **Materials** | Mana crystals and beast cores (Section 11.1), salvage, and unworked stock: held to be sold, traded, or made into something else rather than used as it is. |

The order does real work at every boundary it crosses. A key is a consumable by nature and is still a **Key**, because Section 17 makes it its own economy. An unidentified core is **Special**, not Materials, because its Rank is exactly what is not yet known — and it moves to Materials on the identification that resolves it, which is a state change with an Event behind it rather than a re-reading of the same facts. A stored weapon is **Gear** and its crystals are **Materials**, though both came out of the same Gate.

**`IN CUSTODY` is a sixth group and is not a sixth kind.** The five kinds above classify *what a holding is*; custody records *where it is and who has it* (Section 12.9). A custodied item keeps whatever kind it had — a core in an artificer's hands is still Materials — and renders in this group **instead of** its kind group, never in both, so no holding appears twice and every kind rule's count stays honest. Its own rule carries the live line count like any other, and an empty group renders `none`. **The group exists because deleting the line was the alternative:** a Bearer whose panel omits what he still owns is reading a record that has quietly stopped being his.

**The stored side is structured to match.** `system_state.inventory` holds one list per kind — `keys`, `consumables`, `special`, `gear`, `materials` — so a panel renders five groups from five lists and each rule's count is that list's length. Nothing about the grouping is inferred at render time, no holding can appear twice, and no holding can appear in a kind this table does not name.

```text
╔══ ◈  S Y S T E M  ·  G E A R ═══════════════════════════════════════════════

╟──  WORN · WEAPONS  ────────────────────────────────────────────────────────╢

     SLOT     ITEM                      RANK       BONUS       POWER

     Main     <item or —>               [<Rank>]   <STAT> <n>  <n>
         <chassis multiplier, mastery applied>
         <combat effect>
         DMG <n> standard · before reduction

     Off      <item or —>               [<Rank>]   <STAT> <n>  <n>

╟──  WORN · ARMOR  ──────────────────────────────────────────────────────────╢

     SLOT     ITEM                      RANK       BONUS       REDUCE

     Head     <item or —>               [<Rank>]   <STAT> <n>  <n>%
     Torso    <item or —>               [<Rank>]   <STAT> <n>  <n>%
     Hands    <item or —>               [<Rank>]   <STAT> <n>  <n>%
     Legs     <item or —>               [<Rank>]   <STAT> <n>  <n>%
     Feet     <item or —>               [<Rank>]   <STAT> <n>  <n>%

╟──  WORN · ACCESSORIES  ────────────────────────────────────────────────────╢

     Acc.1    <item or —>               [<Rank>]   <STAT> <n>
     Acc.2    <item or —>               [<Rank>]   <STAT> <n>

╟──  WORN · TOTALS  ─────────────────────────────────────────────────────────╢

     Stat Contribution      STR <n>   AGI <n>   VIT <n>
                            PER <n>   INT <n>

     Physical Reduction     <derived>   multiplicative, <n> pieces

╟──  STORED · GEAR  ──────────────────────────────────────────────────  <n>  ╢

     <item>                        [<Rank>]   <STAT> <n>  <n>%

╟──  STORED · CONSUMABLES  ───────────────────────────────────────────  <n>  ╢

     <item>                        × <n>   <effect>

╟──  STORED · KEYS  ──────────────────────────────────────────────────  <n>  ╢

     <item>                        × <n>   [<Rank>] · <modifier>

╟──  STORED · MATERIALS  ─────────────────────────────────────────────  <n>  ╢

     <item>                        × <n>   [<Rank>]

╟──  STORED · SPECIAL  ───────────────────────────────────────────────  <n>  ╢

     <item>                        × <n>   [<Rank>] · <binding tag>
         <effect, limits, and condition>

╟──  IN CUSTODY  ─────────────────────────────────────────────────────  <n>  ╢

     <item>                        × <n>   [<Rank>] · <kind>
         Held by <holder> since <date>
         Returns on <condition>

╟──  FUNDS  ─────────────────────────────────────────────────────────────────╢

     Gold                          <n> g                      /system shop
     Cash                     $ <n>           last known

     Pending                  $ <n>           <n> payouts
         <source>              $ <n>           filed <date>

╚═════════════════════════════════════════════════════════════════════════════
```

Ren at level 13:

```text
╔══ ◈  S Y S T E M  ·  G E A R ═══════════════════════════════════════════════

╟──  WORN · WEAPONS  ────────────────────────────────────────────────────────╢

     SLOT     ITEM                      RANK       BONUS       POWER

     Main     Quickknife                [D-Rank]   AGI  +4     4
         Chassis ×0.75 · +0.25 Dagger Mastery = ×1.00
         DMG 35 standard · before reduction

     Off      —

╟──  WORN · ARMOR  ──────────────────────────────────────────────────────────╢

     SLOT     ITEM                      RANK       BONUS       REDUCE

     Head     Gale Coif                 [E-Rank]   AGI  +1     3%
     Torso    Bastion Torso             [E-Rank]   VIT  +1     3%
     Hands    —
     Legs     Bastion Legs              [E-Rank]   VIT  +1     3%
     Feet     —

╟──  WORN · ACCESSORIES  ────────────────────────────────────────────────────╢

     Acc.1    Hunter's Band             [E-Rank]   STR  +1
     Acc.2    —

╟──  WORN · TOTALS  ─────────────────────────────────────────────────────────╢

     Stat Contribution      STR +1    AGI +5    VIT +2
                            PER +0    INT +0

     Physical Reduction     9%        multiplicative, three pieces

╟──  STORED · GEAR  ────────────────────────────────────────────────────  1  ╢

     Guard Shield                  [E-Rank]   VIT  +1     3%

╟──  STORED · CONSUMABLES  ─────────────────────────────────────────────  3  ╢

     Lesser Healing Potion         × 3
     Antidote                      × 2
     Stabilization Seal            × 1     holds one Critical

╟──  STORED · KEYS  ────────────────────────────────────────────────────  1  ╢

     Instant-Dungeon Key           × 1     [E-Rank] · standard instance

╟──  STORED · MATERIALS  ───────────────────────────────────────────────  2  ╢

     Mana Crystal                  × 8     [E-Rank]
     Beast Core                    × 2     [E-Rank]

╟──  STORED · SPECIAL  ─────────────────────────────────────────────────  1  ╢

     Rune teaching Stone Skin      × 1     [D-Rank] · UNBOUND
         NPC-ELIGIBLE · teaches Stone Skin [D-Rank] Novice · unused

╟──  IN CUSTODY  ───────────────────────────────────────────────────────  0  ╢

     none

╟──  FUNDS  ─────────────────────────────────────────────────────────────────╢

     Gold                            340 g                    /system shop
     Cash                     $  4,000.00     last known

     Pending                  $  1,762.50     1 payout
         Cicero Gate split    $  1,762.50     filed 08-03

╚═════════════════════════════════════════════════════════════════════════════
```

- **Identity and mechanics stay separated.** Slot, item name, Rank, and the tabular values occupy the entry row; bonuses that do not fit a column, combat effects, limits, and condition occupy continuation rows. This leaves room for prefixes, suffixes, fabrication series, and durability without widening the frame.
- **Instructional items render their eligibility from canonical binding.** `UNBOUND · NPC-ELIGIBLE` for `unbound-awakened` instruction, `BEARER-BOUND` for `bearer-only`, and `CLASS-BOUND · <class>` for a class-bound item. The complete canonical line retains `teaches`, `teaching_rank`, binding, provenance source kind and event, and unused status; `/system gear <item>` renders it in full. When transferred to an NPC, the complete line moves to that NPC's holdings with binding unaltered. On consumption, the item leaves live holdings and the recipient's learned or upgraded technique is recorded with its settlement event.
- **`FUNDS` repeats the Console's block** rather than deferring to the shop, because a purchase decision is made here. Pending payouts itemize by source and filing date.

### 15.3.3 `/system quests`

```text
╔══ ◈  S Y S T E M  ·  Q U E S T S ═══════════════════════════════════════════

╟──  CAPACITY  ──────────────────────────────────────────────────────────────╢

     Non-Daily Slots        <used> / <capacity>
     From System Rank       [<Rank>]

╟──  ACTIVE  ─────────────────────────────────────────────────────────  <n>  ╢

  !  [ DAILY ]      <quest name>                      streak  <n>
                    <objective progress>
                    Deadline <local time>

     [ URGENT ]     <quest name>                      <n> / <n> · +<n> XP
                    <objective progress>
                    Deadline <local or causal>

     [ HIDDEN ]     ???

╚═════════════════════════════════════════════════════════════════════════════
```

Capacity renders first (Section 8.4.4). Urgent rows always show objective progress, fixed XP, and deadline. An unrevealed Hidden row shows only `???`, and its reward and deadline remain `???` even though canonical state holds them (Section 8.4.3). Completed, failed, expired, declined, and abandoned quests leave this panel immediately and remain reachable only through `/system log`.

### 15.3.4 `/system titles`

```text
╔══ ◈  S Y S T E M  ·  T I T L E S ═══════════════════════════════════════════

╟──  EQUIPPED  ───────────────────────────────────────────  <k> / <s> slots  ╢

     ★  <title>
         <passive>
     ★  <title>
         <passive>
        <empty slot>

╟──  EARNED  ─────────────────────────────────────────────────────────  <n>  ╢

     <title>
         <passive, dormant>

╟──  ASSESSMENT  ────────────────────────────────────────────────────────────╢

     Last  level <L>  ·  <n> granted        Next  level <L+10>
     Held  <k> / <m>  ·  slots <k> / <s>

╚═════════════════════════════════════════════════════════════════════════════
```

**`EQUIPPED` renders one row per slot, filled or not** — a Bearer holds `<s>` slots, one per assessment passed to a maximum of five (Section 16), and an unfilled one renders `<empty slot>` rather than vanishing, so the loadout's shape is always visible. Each equipped title carries `★` and its passive is active; every earned title outside a slot renders under `EARNED` with its passive marked dormant. Equipping, unequipping, and swapping happen here, are free and instant, and take no action in a fight.

The `ASSESSMENT` section reads `system_state.titles` (Section 16.1): the level of the most recent Title Assessment and how many titles it granted, the level of the next, how many of the catalog's entries are held, and how many slots are filled. **It names no unearned title** — `<m>` is the catalog's size and nothing else about the unheld entries renders here or anywhere (Section 16.1). Before a Bearer's first assessment the `Last` field renders `—`, `Next` renders `level 10`, and `EQUIPPED` renders no slot rows at all, because he holds none. **The +2 stat points a title granted on earning render nowhere in this panel** — they left it for the unspent pool the moment they were awarded (Section 4.2) and are not a property of the title afterward.

### 15.3.5 `/system shop`

```text
╔══ ◈  S Y S T E M  ·  S H O P ═══════════════════════════════════════════════

╟──  BALANCE  ───────────────────────────────────────────────────────────────╢

     Gold                          <n> g

╟──  DAILY PREMIUM  ───────────────────────────────────────  <n> / 6 bought  ╢

     Rotates <deadline> · <fabrication series>

     TAB            ITEM                  RANK       EFFECT      PRICE

     Weapon         <item>                [<Rank>]   <line>      <n> g
     Armor          <item>                [<Rank>]   <line>      <n> g
     Accessory      <item>                [<Rank>]   <line>      <n> g
     Consumable     <item>                —          <line>      <n> g
     Rune           <item>                [<Rank>]   <binding>   <n> g
     Key            <item>                [<Rank>]   <line>      <n> g

╟──  BUY  ───────────────────────────────────────────  unlocked to [<Rank>]  ╢

     Weapons · Armor · Accessories · Consumables · Runes · Keys

     <tab>          <item>                [<Rank>]   <line>      <n> g

╟──  SELL  ──────────────────────────────────────────────────────────────────╢

     <item>                        × <n>   [<Rank>] · <n> g each

╚═════════════════════════════════════════════════════════════════════════════
```

The shop's contents, prices, stock unlock, and rotation are governed entirely by Section 12.5; this template governs only how they render. `DAILY PREMIUM` renders its cycle deadline, its fabrication series, and its six quantity-one offers with their purchased state. `BUY` renders the unlimited catalogue at every Rank the Bearer has unlocked. `SELL` renders crystals and eligible stored holdings at their resale rates. Buying and selling happen in-window and are never put to the player as an out-of-character question. The no-exchange rule holds: loot becomes gold only by selling it here, and gold never becomes USD.

### 15.3.6 `/system log`

```text
╔══ ◈  S Y S T E M  ·  L O G ═════════════════════════════════════════════════

╟──  RECENT  ────────────────────────────────────────────────  <n> messages  ╢

     <game date and time>
         <the authored message, replayed verbatim>

╟──  CLOSED QUESTS  ──────────────────────────────────────────────────  <n>  ╢

     [ <TYPE> ]     <quest name>                      <outcome>

╚═════════════════════════════════════════════════════════════════════════════
```

The log replays authored System messages verbatim — it never re-composes or summarizes one — and lists quests that have left the active panel, with their outcomes. It is a **bounded window on the recent record**, not a campaign history: it reads the campaign's current-state ledger and the quest records, never the full chronicle. A message older than that window is chronicle material and is reached there, not through this panel.

### 15.3.7 `/system <panel> <item>`

Naming an entry inside a panel renders its **complete canonical line**: every stored field, including provenance, binding, acquisition event, and counters the panel's columns omit. This is where detail the upper tiers shed is recovered, and it is why the Console may defer without anything being lost.

## 15.4 `/system all`

**`/system all`** renders the Console followed by every focused panel in order — skills, gear, quests, titles, shop, log, and the class panel where one exists — each in its own frame, in one reply. It is the whole of the Bearer at once: the exhaustive read for a checkpoint, an audit, or a Bearer who simply wants everything in front of him. It composes the panels of Sections 15.2 and 15.3 unchanged and authors no layout of its own.

## 15.5 Class Panels Attach Post-Class-Quest

Before the class quest (Section 18) the Console's `Class` line reads `—`, no class panel exists, and `/system all` renders none. On completing the class quest and choosing a class, a **class panel** attaches and a focused command comes with it — `/system shadows`, `/system arsenal`, `/system fragments`, `/system echoes`, or `/system rifts`. The Console's `ELSEWHERE` index gains a row for it. A Bearer has at most one class, so at most one class panel; each is authored with its class in Section 18 and renders under Section 15.1's grammar like every other.

---

# 16. Titles

A **title** is a named commendation the System grants for a feat the Bearer's own record proves he performed. Each carries two things: **allocatable stat points, granted permanently the moment the title is earned** — +2, +5, or +10 by its grade (Section 16.2) — and **one passive, active only while the title is equipped**. Titles are permanent once earned; equipping is free, immediate, reversible, and done through `/system titles` (Section 15.3.4).

**The Bearer holds one equipped slot per assessment he has passed, to a maximum of five** (Section 16.1) — one at level 10, two at 20, three at 30, four at 40, five at 50 and thereafter. A title in a slot has its passive active; every earned title outside one is dormant. Slots are derived from `titles.last_assessment`, never stored separately, and a slot may be left empty.

## 16.1 The Title Assessment

**No title is granted at the moment of its feat.** The System commends a career rather than an afternoon, and it reads that career on a fixed schedule: the level-up that settles **level 10**, and every level-up that settles a level that is a **multiple of ten** thereafter — 20, 30, 40, 50, 60, and onward, since Section 3.1 sets no level cap. Levels 1–9 carry no assessment at all: the first stretch is a Bearer learning the ladder, and the System says nothing about a career too short to have one.

**The schedule is the Rank ladder.** Levels 10, 20, 30, 40, and 50 are exactly Section 6.6's rungs into D, C, B, A, and S — every rung above the E-Rank a Bearer starts at. An assessment is what a re-Ranking costs the System's attention: at each rung it re-reads the whole record and settles what the Bearer has become. Past level 50 the ladder is spent and the decade is not; assessments continue at 60, 70, and beyond.

**It settles inside the level-up exchange.** Section 3.2's settlement invariant governs it exactly as it governs the four-step award: an assessment caused by crossing a threshold applies in that same exchange, after step 4 and before play continues. It is never deferred, banked, offered, or declined, and there is no pending-assessment state. Where one XP award crosses several decade thresholds at once, each decade runs its own assessment in level order, and a title granted by the earlier one is already held at the later one.

**It reads the whole record, not the interval.** The assessment tests every catalog entry (Section 16.2) against the Bearer's entire recorded career **since onset** (Section 14.7) — never merely since the previous assessment. A feat performed at level 3 is credited at the level-20 assessment exactly as one performed at level 19, and a feat already credited is not credited twice. Deeds resolved in the onset scene itself count, the System having been attached before that scene settled. Deeds predating attachment do not count and are not reconstructed: the System knows Bearer state (Section 14.4), and it held none before onset.

**Every criterion the record satisfies grants its title, in the same assessment.** There is no cap on how many titles one assessment grants and no priority among them — a first assessment reaching back across ten hard levels may grant several at once, and a later one covering a quiet decade may grant none. A title already held is never re-granted, and no title is ever revoked, downgraded, or lost.

**Each title granted adds stat points to the unspent pool, immediately and permanently — +2 Common, +5 Rare, +10 Singular** (Section 16.2). This is the "title reward that states a specific point bonus" Sections 3.2 and 4.2 name as a stat-point source. The points are the Bearer's the instant the title is earned and are **never conditional on equipping it** — a dormant title's passive sleeps, but the growth it paid for does not. They allocate under Section 4.2 like every other point, at any time. **The assessment itself also opens a slot** where the Bearer holds fewer than five.

**Between assessments the System is silent about titles.** A Bearer who completes a title's feat at level 12 receives no notification, no progress line, and no partial credit; the deed sits in the record until the level-20 assessment counts it. **An unearned criterion is never published** (Section 14.2's withholding): an assessment names what it granted and how many catalog entries remain unheld, never what they are and never how near he came to one. The catalog is world law a Runtime reads — it is not a checklist the System hands its Bearer.

**The assessment block** is a Tier-1 message (Section 14.3), fired once per assessment, immediately after the level-up block that caused it:

```text
╔══ ◈  T I T L E   A S S E S S M E N T ═══════════════════════════════════════
     Level <L>
╟──  EARNED  ─────────────────────────────────────────────────  <n> granted  ╢
  !  <title>          [<grade>]                    Stat points +<2 / 5 / 10>
          <the feat, as the record proves it>
          <passive>

  !  <title>          [<grade>]                    Stat points +<2 / 5 / 10>
          <the feat, as the record proves it>
          <passive>
╟──  STANDING  ──────────────────────────────────────────────────────────────╢
     Stat points     +<total>       Unspent <before> → <after>
     Title slots     <k> / <s>      Titles held <h> / <m>
     Next assessment level <L+10>
╚═════════════════════════════════════════════════════════════════════════════
```

An assessment that grants nothing renders the same window with `none` on the `EARNED` rule's count and a single `No title earned` row where the granted entries would stand, omits the stat-point row, and keeps the `STANDING` section. **The System never suppresses an assessment** — the Bearer always learns one ran, even when it commended nothing.

**Stored state.** The Bearer's ledger holds a `system_state.titles` block: `earned`, one entry per held title naming the title, the assessment level that granted it, and the Event whose resolution satisfied the criterion; and `last_assessment` / `next_assessment`, the level of the most recent assessment and the level of the next. The **equipped** titles remain `system_state.title` — the field the Console and every panel already read (Sections 15.2, 15.3.4) — now holding a **list** of equipped title names, `null` or empty for none. Its length may never exceed the derived slot count, and no title appears in it twice. Earned titles and their granted points are canonical Bearer state under GTF-OVR-001 and restore with a checkpoint like every other stored value.

## 16.2 The Catalog

Each criterion is a statement **about the record**, decidable at an assessment without a ruling: a Runtime tests it against resolved Events, never against an impression of how the campaign has gone. Where a criterion counts, it counts across the whole career since onset.

**A title is a name for the man, not a description of the afternoon.** Every entry below names *what the Bearer is* to anything that has read his record — Loner, Centurion, Kingmaker — because that is what a commendation is. The System does not narrate the feat in the title; it says what the feat made him.

**Three grades, and the grade sets the point grant.** The grade is a statement about how hard the criterion is to reach, nothing else — it changes no passive's wording and gives no title priority at an assessment.

| Grade | Titles | Points on earning | Character of the passive |
|---|---|---|---|
| **Common** | 12 | **+2** | one modifier step, or one small resource effect |
| **Rare** | 6 | **+5** | a step that applies broadly, a damage or pool multiplier, or a real informational edge |
| **Singular** | 3 | **+10** | a capability the profile grants nowhere else. Most Bearers die never holding one. |

### Common titles

| Title | Earned when the record holds… | Passive (while equipped) |
|---|---|---|
| **Loner** | at least one Gate cleared alone — its boss killed with no other hunter inside. Section 17's instant dungeons and Section 8.3's penalty zones count: both are real clears. | **+1 modifier step on all actions while no allied hunter is with him, without regard to whether the ground is a Gate** (Version 1.91). The earning criterion is unchanged — a Gate cleared alone still proves the title — but the effect no longer switches off outside one: an *allied hunter* is another awakened working with him, not any nearby civilian. Widened on an owner ruling raised mid-session against `ENT-000217`, an anomaly that is expressly not a Gate; a title proving solitude inside a Gate has no textual reason to go inert the instant the ground under it stops qualifying as one. |
| **Red Survivor** | a red gate (sealed anomaly, Section 9.6) entered, cleared, and walked out of | the first injury you would take in any sealed instance each scene is reduced by one severity tier (Section 6.3) |
| **Untouchable** | at least one Gate cleared in which the Bearer took no damage at all | +1 modifier step on evasion in the first exchange of every combat |
| **Centurion** | 100 kills credited to the Bearer, live-contribution credit under Section 3.8 included | +1 Mana recovered per common beast killed |
| **Break-Breaker** | a dungeon break (Section 9.8) stopped before it cleared the cordon, the Bearer part of stopping it | +1 modifier step on all actions defending a fixed position or civilians |
| **Underdog** | a creature killed while it stood **two or more Ranks above** the Bearer's System Rank — a red designation (Section 14.6) — at the moment of the kill | +1 modifier step on the Bearer's first action against each orange- or red-designated creature in a combat |
| **Diehard** | Health reduced to 0 in a resolved exchange the Bearer survived (Section 6.5) | +1 modifier step on all actions while Health stands at or below one quarter of its maximum |
| **Kingmaker** | a boss killed by another hunter's hand on a weakness or opening the Bearer resolved and relayed, the clear credited to him under Section 3.8 | the first action an allied hunter takes against a target whose weakness the Bearer has relayed this scene takes +1 modifier step |
| **Prospector** | 500 crystals extracted from mineable deposits (Section 11.1) by the Bearer's own hand | every deposit the Bearer extracts personally yields 2 additional crystals |
| **Penitent** | a penalty zone (Section 8.3) cleared — its boss killed before the four hours ran out | +1 modifier step on all actions inside a sealed instance the Bearer did not open |
| **Ascetic** | 20 daily quests (Section 8.1) completed, consecutive or not | each daily-quest Ability Points reward grants +4 points instead of +3 |
| **Giantslayer** | a boss of a Rank **above** the Bearer's System Rank killed by his own hand, alone, with no other hunter inside | +1 modifier step on all actions against a boss |

### Rare titles

| Title | Earned when the record holds… | Passive (while equipped) |
|---|---|---|
| **Cartographer** | at least one Gate of **every archetype** on the Section 10 d8 cleared and credited — all eight interiors walked out of | a Gate's archetype is known to the Bearer the moment he enters, without a read, a survey, or a confirmation; and +1 modifier step on every action that exploits or evades the archetype's twist |
| **Deathless** | **twenty consecutive Gate clears** in which he took no classified injury (Section 6.3) **and** his Health never fell below one quarter of its maximum. A single breach restarts the count at zero. | the first injury he would take in **any** scene is reduced by one severity tier (Section 6.3) — everywhere, not only inside a sealed instance |
| **Executioner** | **50 kills** of creatures standing **above** his System Rank at the moment of the kill | a critical hit against a creature at or above his System Rank deals **×1.25** damage (Section 6.2, applied with the other multipliers) |
| **Warden** | **ten** Gate clears in which no hunter who entered alongside him took a classified injury | +1 modifier step on all of the Bearer's defensive actions, and every allied hunter sharing the Gate takes +1 modifier step on their first defensive action each scene |
| **Vanguard** | **ten Gates entered alone and first**, ahead of the party he arrived with, each of them cleared | +2 modifier steps on the Bearer's first action in any combat he opened |
| **Wellspring** | more than **twice his maximum Mana** spent inside a single sealed instance he then cleared | maximum Mana is raised by **10%**, and out-of-combat Mana recovery runs at **double rate** (Section 5.2) |

### Singular titles

| Title | Earned when the record holds… | Passive (while equipped) |
|---|---|---|
| **Godslayer** | an **S-Rank boss** dead, its kill or its clear credited to the Bearer (Section 3.3, Section 3.8) | every creature the Bearer perceives renders its **exact remaining Health** alongside its designation colour (Section 14.6) |
| **Unbroken** | **100 consecutive daily quests** completed with no failure and no reset (Section 8.1) | the daily quest's three rewards are granted **twice** on every day it is completed |
| **The Unmeasured** | a carded Rank standing **three or more Ranks below** his System Rank at the moment an assessment runs, never re-assessed (Section 19) | Flux Sight reads one Rank above its Section 4.4 ceiling, and any action taken to conceal his true capability (Section 19.1) takes **+2 modifier steps** |

## 16.3 Passives, Points, and Slots

**Points on earning follow the grade: +2 Common, +5 Rare, +10 Singular.** Nothing else about a title varies with its grade — no priority at an assessment, no ordering in a panel, no restriction on which slot it may sit in. The points are unconditional, permanent, and independent of equipping (Section 16.1).

**Only an equipped title's passive applies.** Every passive is stated in modifier-step, multiplier, resource, or stated-capability terms (Sections 4.3, 5, 6.2), so a Runtime applies it without a ruling. A title's modifier step composes into the net ±3 cap (Section 4.3) like any other, and any reduction it grants composes multiplicatively (Section 7.3). Where two equipped titles both apply to one action they **both count toward that cap and neither is doubled**; where they apply to different things they simply both apply. **Kingmaker** and **Warden** are the passives whose effects land on someone else's roll: they apply to the allied hunter's action, are capped on that hunter's side by the same ±3, and are inert while nobody shares the fight. **Wellspring** is the one passive that moves a maximum: while equipped, maximum Mana is derived at ×1.10 and the pool is clamped, never truncated, when it is unequipped — an over-full pool falls to the new maximum and nothing else changes.

**Slots are the loadout, and they never reach the whole catalog.** One slot per assessment passed, capped at five (Section 16.1), against a catalog of twenty-one — so a Bearer at the top of the Rank ladder still runs fewer than half of what he has earned, and equipping stays a decision rather than a formality. Changing a loadout is free and instant, takes no action in a fight, and may be done any time `/system titles` can be opened. A newly equipped passive applies from the next resolved action; it never retroactively changes an exchange already rolled.

---

# 17. Instant Dungeons

An **instant-dungeon key** — a boss drop (Section 11.2, roll 81–90) or a shop purchase (Section 12.5) — opens a private instance on demand: combat and loot without a contract.

**Instant dungeons are the exception to Section 10's alien-interior law:** a System-made instance looks *made* — cut-stone geometry too regular to be natural, uniform sourceless light, corridors that answer to purpose rather than to any world's weather. Where a Gate's interior is a slice of the beasts' world, an instant dungeon is the System's architecture, and a Bearer learns to know the difference at a glance.

- **Rank.** A key's Rank comes from its source, and there are exactly four: a **boss drop** carries the Rank of the Gate that dropped it (Section 11.2); a **shop purchase** carries the explicit Rank bought off the Section 12.5 catalogue, at that Rank's price; a **Daily Premium Key** carries the Rank its own d100 Rank roll produced at rotation (Section 12.5); and a **proving key** carries the Bearer's Combat Tier snapshotted at the moment it is used, under the subsection below. The instance runs at the key's recorded Rank and **never re-Ranks later** — a key keeps the Rank it was created at, so growth after acquisition does not raise it and a stockpiled key is never retroactively hardened. A key's Rank is therefore never read from the Bearer's own standing at the moment of use, and an instant dungeon is not sized to him: he chooses his own difficulty here by choosing which key to spend, which is the whole of this section's risk economy.
- **Opening.** Using a key opens a sealed instance for the Bearer (he may bring a party, but the key is his). It runs **two hours from the moment the key is used**, and the key is spent whether or not anything inside dies.
- **Closing — two conditions, and only these.** The instance ends at the **two-hour mark**, or **when the Bearer chooses to leave**. Nothing else closes it, and in particular **the boss kill does not.** A boss's death settles its core, its boss-drop d100, its kill XP, and the Gate-clear milestone (Section 3.4) at the moment it dies, and the interior then holds for whatever remains of the two hours — the Bearer works a cleared instance instead of being ejected from it, on the same principle as a public Gate's post-kill clear window (Section 9.7). A voluntary exit is available at any time, boss alive or dead, exactly as an awakened may walk out of a standing Gate through its mouth; he steps out and the instance ends behind him. **The two hours are absolute:** a boss killed with five minutes left leaves five minutes, not a fresh window. Clearing early is what buys looting time, and that is the whole of the pressure this section carries. Closing is final either way — the key is spent, the instance cannot be re-entered, and anything left inside is gone with it. Closing **returns everyone inside to the world**; a System instance keyed to the Bearer expels its occupants at its limit rather than stranding them, as the Section 8.3 penalty zone does at four hours. It never kills for overstaying, and Section 9.7's lost-inside rule is a public-Gate rule that does not reach here.
- **Population.** Populated by the standard Gate formula (Section 9.7) at the key's Rank G — `3d6` common beasts, `1d2` elites (×2 Rank Health), `1` boss (×4 Rank Health) — and it rolls an archetype on the d8 (Section 10) like any Gate. The roll happens **once, at opening**. Nothing respawns and nothing is added later, so the time remaining after a boss kill is time to mine, loot, and walk — never time to farm.
- **Loot.** Drops per Section 11: one crystal per beast, a core from each elite and the boss, and the boss-drop d100. Every instant dungeon also carries Section 11.1's mineable deposit at the key's Rank: roll **`3d6 × (Rank multiplier)` crystals** when the instance opens, except that a Crystal Key treats the `3d6` result as 18 (Section 12.5). Extraction consumes time and must occur before the instance closes — at the two-hour mark or on the Bearer's own exit, never on the boss kill; every unextracted deposit crystal disappears with it. A solo Bearer owns every crystal he extracts under Section 11.1, and no public-Gate declaration applies under the unregulated-space rule below. It is a **real clear** — kill XP (Section 3.3) and the Gate-clear milestone (Section 3.4) settle on the boss kill exactly as in a public Gate.
- **No timer, no break.** An instant dungeon runs no break countdown (Section 9.3): it is a closed instance keyed to the Bearer, not a breach into the world. An unopened key is inert and never breaks.
- **No BGM/CGA jurisdiction — legally unregulated space, and this profile says so.** An instant dungeon is not a licensed Gate: it posts no contract, requires no minimum party (Section 9.4), files no loot declaration (Section 13.2), and is invisible to the authorities, because only the Bearer's key opens it and only the Bearer perceives the System (Section 14.4). It is the one clearance the world cannot see, tax, or regulate — which is exactly its value and exactly its risk: a Bearer who dies in an instant dungeon (Section 6.5) dies unwitnessed, with no strike team that can be called.

## The Proving Key — the one key a Bearer cannot outgrow (1.92)

Every other key in this section is **fixed at creation**, and that is deliberate: *"a stockpiled key is never retroactively hardened."* The consequence, unnoticed until `F-046`, is that a Bearer who out-levels his own stockpile holds a **mechanically guaranteed-safe** combat option that is always available and always convenient — the most-used danger source in the campaign, incapable of danger. He can pick badly, which Section 6.7 permits; what he could not do was pick well.

A **proving key** is the one key whose Rank is read from him:

- **Rank.** The instance runs at the Bearer's **Combat Tier** (Section 6.7), computed once at the **instant the key is used** and recorded on the instance. Section 6.7's snapshot rule governs in full: the tier is taken at that instant and the instance **never re-Ranks** afterward, so he cannot gear down inside it any more than he can gear up. **This is the section's one named exception to fixed-Rank creation**, and it is narrow — the Rank is fixed the moment the key is spent, exactly like every other key; it is fixed *later*, not never.
- **Everything else is a standard instant dungeon.** Two hours, sealed to him, Section 9.7 population at the recorded Rank, a d8 archetype, Section 11 loot, Section 11.1's mined deposit, no break timer, no jurisdiction, and Section 6.5's finality. Kill XP and the Section 3.4 milestone settle at the recorded Rank, so a tier standing above System Rank pays the Section 3.3 underdog multiplier — which is what that bonus is authored to price.
- **It rolls no anomaly**, and no key does. Section 9.6 is reached through Section 9.5's assessment roll, and a System instance has no assessment to be wrong about. **A proving key is not a surprise; it is an honest number.** That distinction is the whole of what it sells.
- **Acquisition is the System shop only** (Section 12.5), at twice the ordinary key price for the tier it will run at. It is not a boss drop, not a Daily Premium model, and there is no other source.
- **Nothing about it is imposed.** He buys it, he opens it, and he may walk out of it at any moment exactly as he may walk out of any instant dungeon. Section 6.7's rule that the System owes an honest fight only where it picked the fight is untouched: here the Bearer picked it, and paid for it.

**Why the price is what it is.** A fixed-Rank key is a depreciating asset — it buys a fight that gets easier every level, which is why an A-Rank key is worth 200,000 g to an A-Rank Bearer and worth nothing to an S. A proving key never depreciates. The doubling prices permanence, and it is deliberately steep enough that opening one is a decision rather than a habit: **the Bearer who wants a hard fight for free can always go and find one in the world (Section 9.11), and the one who wants it on demand, alone, in two hours, at an hour of his choosing, pays for the convenience.**

---

# 18. The Class Quest and Hidden Classes

A **class** is the Bearer's unique power path — unique on Earth, held by no one else. It is earned once, through a trial, and it reshapes how he fights for the rest of the campaign.

## 18.1 Trigger

When the Bearer reaches **level 25**, the level-up that crosses into 25 also issues the **Class Quest** (a Tier-1 event, Section 14.3). It is offered once. It does not expire, but no second class is ever offered — a Bearer holds exactly one class for the campaign.

## 18.2 The Trial

The class quest is a **sealed instance, fully lethal, with no retreat**: the Bearer enters alone and cannot leave until he clears it or dies. It is **not a menu**. The System tracks **how he fights** across five signals:

| Signal | What it measures |
|---|---|
| **Kill efficiency** | damage and kills per exchange and per Mana spent — economy of force |
| **Battlefield control** | managing many foes at once — grouping them, denying ground, holding the shape of the fight |
| **Weapon breadth** | variety of methods and weapons used to good effect, not one tactic replayed |
| **Endurance** | surviving sustained pressure at low resources — outlasting rather than out-bursting |
| **Positioning** | evasion and control of space — where he stands, what he avoids, how he moves |

### 18.2.1 A Trial Is Not a Dungeon

**A Gate is a place; the trial is an examination**, and the difference is authored rather than atmospheric. A rolled Gate population lets a careful Bearer meet it one enemy at a time, and one enemy at a time exposes exactly one of the five signals. Four of the five have no instrument in a fight shaped like a dungeon: **Endurance** cannot appear where resources never bottom, **Battlefield Control** cannot appear against foes that queue, **Weapon Breadth** cannot appear where nothing resists the first answer, and **Positioning** cannot appear on ground that never matters. A trial the Bearer walks through does not merely feel anticlimactic — it **measures nothing**, and Section 18.3 then offers a class on the strength of a single visible signal, which is indistinguishable from offering one at random.

The trial is therefore **five authored phases and a final foe**, each phase built so that one signal *can* be demonstrated in it.

**A phase does not require its signal, and the trial has no right answers.** Each phase creates the conditions under which its signal becomes available; the Bearer solves it however he likes and the System scores **what he actually did**, not whether he found an intended solution. Brute-forcing the swarm is a legitimate answer and it scores Kill Efficiency rather than Battlefield Control. This is what keeps Section 18.2's *"it is not a menu"* true at the level of the fight as well as the offer.

### 18.2.2 Trial Rank, Terrain, and the Resource Rule

**Rank.** Every phase and the final foe stand at the Bearer's **Combat Tier** (Section 6.7), snapshotted at the instant he **enters** rather than when the quest was offered — except Phase 1's swarm, which stands one Rank below it (see there). Section 18.1 lets the offer stand open indefinitely, so a Bearer may gear, allocate and ascend for as long as he likes before walking in; sizing the trial at *offer* would let him out-grow the only content authored to test him simply by waiting. Sizing at **entry** means preparation raises the trial with him — it never punishes him for getting stronger, and never rewards him for stalling.

**Terrain.** The trial rolls one archetype on the Section 10 d8 at opening, exactly as a Gate does. It supplies the interior's character throughout and is what Phase 4's failing ground is *made of* — ice that splits, stone that drops, water that rises, growth that closes.

**The resource rule — one budget, no refill.** Nothing restores the Bearer inside the trial. **No potion functions, no Status Recovery may be claimed, no pending reward may be opened, and no elapsed-time Health or Mana recovery accrues** (Sections 5.2 and 6.1.1 are suspended for the duration). His own skills work normally — Mend still heals and still costs Mana, so healing is a **transfer** within one budget rather than an escape from it, which is precisely the decision Endurance exists to measure. He enters at whatever pools he brought and spends down from there.

**Continuity.** Phases run **without a gap**. There is no rest, no lull, and no resupply between them; the next phase opens on the exchange after the last foe of the previous one falls. Nothing respawns and nothing is added to a phase after it opens.

### 18.2.3 The Five Phases

Let **G** be the Combat Tier and **G−1** the Rank below it.

**Phase 1 — The Converging.** `4d6` commons at **Rank G−1**, arriving in `1d3 + 1` separate groups from different bearings across consecutive exchanges. They **overlap rather than queue**: a later group arrives while the earlier is still standing, and nothing waits its turn. The swarm is a Rank below the trial deliberately — Battlefield Control is a problem of *number*, not of durability, and commons tough enough to require full attention each would collapse the phase back into a sequence of duels. *The signal shows in grouping, funnelling, denying ground, or holding a shape against arrivals from more than one bearing.*

**Phase 2 — The Grind.** `1d2 + 1` elites at **Rank G** (×2 Rank Health). They trade rather than burst: ordinary attacks, no opening, no weakness offered, and enough Health that the exchange count is the point. Under the resource rule this is where the budget bites. *The signal shows in what he spends and when — holding output in reserve, accepting damage he could have prevented, finishing on a pool he chose not to refill.*

**Phase 3 — The Refusal.** One elite at **Rank G** carrying a **resistance keyed to him**: at this phase's opening, read the trial's own damage record and identify the single method — a named skill, a weapon, or unarmed — that has dealt the most damage so far. That method's multiplier is **halved** against this foe for the whole phase. The resistance is **not announced**; he meets it when his best answer lands for half. *The signal shows in how quickly he abandons a method that has stopped working and what he reaches for instead.*

**Phase 4 — The Ground.** One elite at **Rank G** that contests space — ranged, area-denying, or repositioning — on **failing ground**: at the end of each exchange, the space the Bearer occupied during it becomes hazardous in the archetype's own idiom and remains so. Beginning an exchange in hazardous ground costs `Rank_Health(G) ÷ 4` damage before reduction. Moving is free and always available. *The signal shows in whether he is choosing where he stands or merely reacting to where he was.*

**Phase 5 — The Clock.** `2d6` commons at **Rank G** under a hard limit of **six exchanges**. The final foe is already waking beyond them, and every exchange used **beyond** the sixth grants it **+1 modifier step on its own rolls against the Bearer** in the fight to come — bounded by the engine's ordinary net ±3 cap (Section 4.3), so three exchanges of overrun is the whole of the penalty and a disastrous phase cannot compound into an unwinnable one. Clearing inside the limit adds nothing. *The signal shows in economy of force — damage and kills per exchange and per Mana, with a cost attached to inefficiency that he can see coming and choose to pay.*

**The final foe.** One boss at **Rank G** (×4 Rank Health), carrying whatever Phase 5's overrun handed it. It is the whole examination at once: it does not resist a method, it does not stand on safe ground, and it does not wait.

## 18.3 The Offer

On survival, the System tallies the five signals and offers the classes matching the demonstrated style. The two highest-scoring signals surface their classes, and **at least two classes are always offered** — a tie or a broad performance widens the offer, and a lopsided one never narrows it below two. The signal-to-class map:

- **Kill efficiency → Devourer**
- **Battlefield control → Shadowbinder**
- **Weapon breadth → Soulforged Armory**
- **Endurance → Echo Knight**
- **Positioning → Riftwalker**

The Bearer chooses one. The choice is permanent; it attaches the class's `/system` panel (Section 15.5) and sets the Console's `Class` line. Each class has a later **evolution quest** — an authored class-quest at **level 50** — that deepens it along its own line.

**Shared target-Rank cost ladder.** Several classes spend Mana by a target's Rank on one ladder — **E 5 · D 10 · C 20 · B 40 · A 80**. This is a **cost** the Bearer pays, scaled by whom he targets; it is not a pool and is unrelated to the **Rank Mana** an entity of that Rank carries (Section 6.1). Because maximum Mana derives from Intelligence (§5.1), class allocation now directly determines how often these effects can be used. A low-Intelligence build may qualify for a class yet lack the pool for its highest-Rank target until it invests.

### 18.3.1 What Every Class Owes — the Three Tracks

A class is the Bearer's power path for twenty-five levels, and each of the five below carries the **same three tracks**. The shape is stated once here rather than re-argued in each section, and a class missing one of them is unfinished rather than merely different.

| Track | What it is | Why it must exist |
|---|---|---|
| **Acquisition** | a collection that grows, under a cap that **binds** | without it the class is complete on the day it is taken |
| **Magnitude** | what is held getting stronger, by Rank or by authored rung | without it the collection stops mattering as content out-scales it |
| **Evolution** | one authored unlock at level 50 | the far horizon, already carried by all five |

**A cap that cannot bind is not a cap.** An acquisition cap must be reachable *and* restrictive — a limit of five against a catalog of five rations nothing, and a limit of five on things only one of which can be used at a time rations nothing either. Where the cap and the reachable set collide, the class has an acquisition track on paper and none in play.

**Each class's acquisition cap scales on one Stat, and no two classes share one.** Allocation is the Bearer's only permanent, freely-chosen growth (Section 4.2), so binding each class to a different Stat makes the class choice and the allocation choice speak to each other rather than run in parallel. It also means no build is equally good at all five.

| Class | Stat | Acquisition cap |
|---|---|---|
| **Shadowbinder** | Intelligence | elites `INT ÷ 5` · horde `INT × 20` |
| **Devourer** | Vitality | fragments `VIT ÷ 20` |
| **Soulforged Armory** | Strength | bound weapons `STR ÷ 15` |
| **Echo Knight** | Perception | echo slots `PER ÷ 20` |
| **Riftwalker** | Agility | rift anchors `AGI ÷ 20` |

All five read **effective** Stats (Section 4.1), floor division, minimum 1. A cap that falls when equipment changes does not destroy what is held above it: excess is **held but inert** until the cap rises again, on the Section 4.1 missing-amount principle.

**Every class fights.** Gatefall is lethal, death is final (Section 6.5), and a class is held for the rest of the campaign. A class whose grants do not reach a fight is not a flavour choice but a **trap**, indistinguishable from the inert arsenal slots this section exists to forbid — and the Bearer discovers it too late to choose again. Utility, knowledge and access are legitimate and welcome, but never *instead*: each class below carries combat capability drawn from **its own premise**, never bolted on beside it.

**A grant that returns nothing the Bearer already lacks is not a grant (1.74, `F-033` question 2).** The rule above governs *caps*; this governs the grants themselves, and it exists because the same defect has now been found twice in this section and both times by a player standing at a permanent offer. **Before a class is offered, every grant it names is checked against what a Bearer at that acquisition level plausibly already holds.** A grant duplicating existing capability is repaired or replaced before the offer renders — not deleted, because a class advertising three grants and delivering two is the same defect wearing a smaller hat.

**This is the class-grant analogue of Section 7.2's ascension-eligibility rule** — *where a target Rank authors no grant for a skill, Section 7.5 withholds the offer rather than making it* — and it matters more here than there, because **an ascension can be earned again and a class cannot be re-chosen.** Section 18.5's standing edge (1.67) and Section 18.8's standing anchor sense (1.73) are the two repairs this rule generalises from; a 1.74 sweep of all eight classes found no third.

### 18.3.2 Scoring the Five Signals

Each signal scores as an integer count of authored qualifying events. **A point is awarded only where the Runtime can name the exchange it occurred in**; a point that cannot cite its exchange was not earned. Signals accrue **anywhere in the trial**, not only in the phase built for them — Section 18.2.1's phases make a signal available, they do not own it.

**Each criterion scores at most once per phase.** This is the whole of the normalization and it is load-bearing: a Bearer who one-shots fourteen commons in Phase 1 scores Kill Efficiency **once**, not fourteen times. What the tally measures is a signal demonstrated **across** the trial, not farmed inside the phase built for it — and without this rule a strong Bearer's efficiency count buries every other signal before Phase 2 opens.

| Signal | Scores +1 for each, once per phase |
|---|---|
| **Kill efficiency** | a foe killed in a single resolution · an exchange in which two or more foes die · a foe killed spending no Mana · Phase 5 cleared inside its limit |
| **Battlefield control** | one resolution damaging or impeding two or more foes · an exchange closed engaged with three or more foes taking no damage · an arriving group met at ground already taken and held · a foe's approach denied or redirected onto his line |
| **Weapon breadth** | each distinct method landing a killing blow, once per method · the Phase 3 resistance answered with a different method inside two exchanges of meeting it · a non-damaging method creating a resolved advantage |
| **Endurance** | an exchange begun below half Health · an exchange begun below half Mana · a phase completed without healing · the final foe engaged below half of either pool |
| **Positioning** | an attack avoided by declared movement rather than absorbed · an exchange in Phase 4 taking no hazard damage · a foe engaged from a position it cannot answer from · distance closed or opened to force a foe outside its effective range |

**Ties.** The two highest scores surface their classes; **a tie at second place surfaces every signal tied there.** That is Section 18.3's "a tie or a broad performance widens the offer" made countable, and it is the only widening mechanism the tally needs.

**The tally is rendered with the offer.** All five scores appear, not only the two that surfaced. The trial is an examination and an examination shows its marking; a Bearer told only the result cannot tell a reading of him from the only reading available.

### 18.3.3 Hidden Classes and the Anomalous Offer

The five classes above are the **Assay's own catalogue** — five shapes of champion, five ways of being a better weapon for what is coming. The trial is the specialization gate, and the signal map is the list it selects from.

A **hidden class** is what the candidate becomes when he does something the instrumentation had no category for. It is not on the map, no signal produces it, and no tally can score it. It is reached by **conduct**, not by degree — one authored condition per hidden class, each of them a thing the trial can observe and the rubric above cannot measure.

**Rules of the hidden tier:**

1. **At most one hidden class is revealed per trial.** Where more than one condition fired, the **earliest** in the trial takes it.
2. **A hidden class is added to the offer, never replacing a signal class.** Section 18.3's floor of two still holds; the anomalous offer is a third option.
3. **The condition is never published, hinted, or rendered before it fires**, and no quest, panel, or notification anywhere in this profile references the hidden tier's existence in advance.
4. **A hidden class is rendered as anomalous.** It surfaces in its own frame beside the ordinary offer, carrying no signal attribution, under a head the System does not otherwise use. The Bearer is shown that his offer exceeded the catalogue — he is not shown why.
5. **Acquisition caps on a Stat pair**, not a single Stat. The five singles are spoken for, and standing outside that clean scheme is the point: a hidden class is not one of the five things the process was built to make.

```text
╔══ ◈  C L A S S   O F F E R ═════════════════════════════════════════════════
     Signals         <kill eff> · <control> · <breadth> · <endurance> · <positioning>
╟──  O F F E R E D  ─────────────────────────────────────────────────────────╢
     <class>         <signal that surfaced it>
     <class>         <signal that surfaced it>
╚═════════════════════════════════════════════════════════════════════════════

╔══ ✧  U N C A T A L O G U E D ═══════════════════════════════════════════════
     This offer exceeds the catalogue. No signal produced it.
╟────────────────────────────────────────────────────────────────────────────╢
     <class>         —
╚═════════════════════════════════════════════════════════════════════════════
```

**Why the System says even that much.** It does not explain itself and it is not the Bearer's friend, but it is **instrumentation**, and an instrument that returns a reading outside its own scale reports the exception rather than silently clamping it. The `✧` head and the flat sentence are the whole of the disclosure: an anomaly logged, not a secret shared. Nothing tells him what he did.

## 18.4 Shadowbinder — offered for battlefield control

On defeating a foe, the Bearer may raise its shadow. Shadows come in **two classes**, and this is what lets a Shadowbinder end as a general, not a squad leader:

- **Elite shadows** are **named, individually tracked, and level up** — the lieutenants. Extraction is an **Intelligence-governed d100 attempt** costing Rank-ladder Mana (E 5 … A 80). Compare effective Intelligence against the corpse Rank's Section 4.3 domain rating; do not add a Rank-gap modifier. On success the foe rises as an elite retaining its Rank — Rank Health (Section 6.1), fixed-Rank damage (Section 6.2), and a name. **Elite cap = Intelligence ÷ 5** (Int 20 → 4 elites, Int 40 → 8). An elite advances after landing the killing blow in 10 distinct clears, capped at the Bearer's System Rank.
- **The horde** is the **massed, un-named rank-and-file** — not tracked one by one, carried as a **count and Rank** (e.g., "180 [E-Rank] · 44 [D-Rank]"). Ordinary defeated common beasts are **swept into the horde in bulk** at a flat **2 Mana each, no per-corpse roll** — the Bearer scoops the fallen as he passes. **Horde cap = Intelligence × 20** (Int 30 → 600), and the Legion evolution lifts it to **no practical cap — an army of thousands.**

**Commanding the horde (closed-form, never per-shadow):** committed to a fight, the horde resolves as **one action per exchange**. It **automatically overruns** trash threats at or below the horde's dominant Rank (they are swarmed under, no roll), and against elites and bosses it grants the Bearer's side **+1 modifier step per 100 shadows committed, to the net ±3 cap** (Section 4.3) — the weight of numbers. A hard fight inflicts **attrition**: on a poor exchange, or against a boss, the horde loses a die-scaled fraction of the committed shadows, replenished by extracting the newly slain. Storing/re-summoning elites is free/½-cost as before; the horde is always "on call" and costs nothing at rest.

- **Magnitude.** An elite's **band** is what grows: it advances on the clear count stated above, to the ceiling stated there, and its Rank Health and fixed-Rank damage (Sections 6.1 and 6.2) move with the band. The horde's magnitude is its **count**, which is why its cap is this class's real scaling axis rather than a storage limit.
- **Evolution quest hook — the Sovereign's Trial (level 50):** extract a **boss-Rank** elite to unlock **Legion** — the horde cap becomes effectively unbounded (thousands), elite cap rises to Intelligence ÷ 3, and the horde in formation grants **+1 modifier step to one coordinated allied action per exchange** on top of its mass bonus.

```text
╔══ ◈  S H A D O W S ═════════════════════════════════════════════════════════
     Elites          <filled> / <cap>
     Horde           <count>          (cap = Intelligence × 20)
╟──  ELITES  ────────────────────────────────────────────────────────────────╢
     <name>          [<Rank>-Rank]    <Field | Stored>   clears <n>/10 to next band
╟──  HORDE  ─────────────────────────────────────────────────────────────────╢
     <count by Rank>
╚═════════════════════════════════════════════════════════════════════════════
```

Example — a Shadowbinder at level 25, Intelligence 20 (elite cap 4, horde cap 400):

```text
╔══ ◈  S H A D O W S ═════════════════════════════════════════════════════════
     Elites          3 / 4
     Horde           224              (cap 400)
╟──  ELITES  ────────────────────────────────────────────────────────────────╢
     Gravecut        [D-Rank]         Field              clears 7/10 to next band
     Hollow          [E-Rank]         Stored             clears 2/10 to next band
     Pale Warden     [D-Rank]         Field              clears 4/10 to next band
╟──  HORDE  ─────────────────────────────────────────────────────────────────╢
     180 [E-Rank] · 44 [D-Rank]
╚═════════════════════════════════════════════════════════════════════════════
```

## 18.5 Soulforged Armory — offered for weapon breadth

- **Core mechanic.** **Bind** the essence of a slain foe into a weapon. Each bound weapon holds **one source-ability** of its source creature, and every bound weapon also contributes a **standing edge** to the Bearer while it merely rests in the arsenal.
- **The arsenal is dimensional, and the whole of it is carried.** A bound weapon is drawn to hand and returned as a **free action, once per exchange** — the arsenal is a Section 12.9 pocket that answers to him, not a rack he packed that morning.
- **Two grades of grant, and this is what makes the arsenal an arsenal:**
  - **Wielded — the source-ability.** Stated in Section 6.2 terms and costing its own Mana per use. Its multiplier is the **skill-rank baseline at the weapon's Rank** (Section 7.2), so a bound ability keeps pace with an authored skill of the same Rank rather than sitting at a flat value the Bearer out-grows in a session.
  - **In the arsenal — the standing edge.** Every bound weapon grants a **passive** drawn from its source and active whether or not it is in hand: a resistance, a sense, a movement, a small reduction. **Standing edges from different sources compose; two of a kind do not.**
- **Resource costs.** Binding consumes the foe's **core** (Section 11.1) plus the Rank-ladder Mana.
- **Arsenal cap = effective Strength ÷ 15** (floor, minimum 1): Strength 75 holds 5, Strength 150 holds 10.
- **Growth path.** A bound ability rides the **weapon's Rank**; binding a higher-Rank essence of the same kind upgrades that slot. One source-ability per weapon — a second binding overwrites the first unless the class has evolved.
- **Evolution quest hook — the Forge Trial (level 50):** bind a **boss** essence to unlock **Living Edge** — one weapon may hold **two** source-abilities, bound weapons self-repair between scenes, and the free draw becomes **unlimited within an exchange**, so the whole arsenal is reachable inside a single action package.

**Why the arsenal grants from the shelf as well as the hand.** Through Profile 1.67 every slot past the first two was inert: the Bearer has two hands, the draw was once per exchange, and a bound ability only functioned while wielded — so an arsenal cap of five rationed nothing, and the fourth and fifth bindings each cost a core to grant precisely nothing. A cap that cannot bind is not a cap (Section 18.3.1). The standing edge is what makes every filled slot pay, and it is what the class's own name always implied: an armory is what a smith *has*, not what he happens to be holding.

```text
╔══ ◈  A R S E N A L ═════════════════════════════════════════════════════════
     Bound           <filled> / <cap>     (cap = Strength ÷ 15)
     Drawn           <weapon | none>      free draw <ready | used this exchange>
╟──  W E A P O N S  ─────────────────────────────────────────────────────────╢
     <weapon>        [<Rank>-Rank]   <bound ability>   Mana <n>
          from <source>
          edge      <standing edge, active in the arsenal>
╚═════════════════════════════════════════════════════════════════════════════
```

Example — a Soulforged Armory Bearer at level 25, effective Strength 87 (cap 5):

```text
╔══ ◈  A R S E N A L ═════════════════════════════════════════════════════════
     Bound           3 / 5                (cap = Strength ÷ 15)
     Drawn           Tidespike            free draw ready
╟──  W E A P O N S  ─────────────────────────────────────────────────────────╢
     Emberfang dagger    [D-Rank]    Searing Strike ×1.30             Mana 8
          from a [D-Rank] fire-lizard
          edge      fire does not burn him
     Tidespike           [C-Rank]    Drowning Coil (target −1 step)   Mana 10
          from a [C-Rank] serpent
          edge      he breathes water
     Boneaxe             [E-Rank]    Cleave ×1.15                     Mana 4
          from an [E-Rank] ogre-brute
          edge      +1 step to shove, break and force
╚═════════════════════════════════════════════════════════════════════════════
```

## 18.6 Devourer — offered for kill efficiency

- **Core mechanic.** **Consume** a beast **core** to permanently steal a **fragment** of its power. Each fragment is one authored ability drawn from the source creature's signature.
- **Resource costs.** Consumption destroys the core and resolves a **Vitality-governed digestion** attempt on the d100; a failed digestion inflicts a **Moderate injury** (Section 6.3) and the core is spent regardless. A held fragment's active use costs Mana as stated below.
- **Fragment cap = effective Vitality ÷ 20** (floor, minimum 1). Digestion is a Vitality-governed act and what the Bearer can hold is what his body can carry: Vitality 100 holds 5, Vitality 200 holds 10.
- **Authored fragment kinds — ten** (which one a core yields is fixed by its source creature's signature):
  - **Breath** — a ×2.0 skill-multiplier attack across all foes in reach; Mana 12.
  - **Stone-Hide** — 30% physical damage reduction while sustained; Mana 4 per exchange (composes multiplicatively, Section 7.3).
  - **Regeneration** — restore the D-Rank skill-rank baseline (25) at the end of each of the next 3 exchanges; Mana 10.
  - **Venom** — strikes inflict Rank-appropriate poison hazard (Section 6.3); passive on a chosen weapon.
  - **Wings** — flight for a scene (an off-die mobility unlock); Mana 8.
  - **Rend** — strikes ignore **half** the target's total reduction; passive on a chosen weapon. The one answer in the catalog to armour rather than to Health.
  - **Roar** — every foe in reach takes **−1 modifier step** for the exchange; Mana 10. It does not stack with itself and never reaches a boss two Ranks above the fragment's own.
  - **Spines** — an attacker landing a melee hit takes back `Rank_Health(fragment Rank) ÷ 8` before its own reduction; sustained, Mana 3 per exchange.
  - **Burrow** — passage through solid ground at walking pace for a scene; Mana 6. It crosses no Gate boundary, Section 9.6 seal, or Section 17 instance wall.
  - **Bloodfeast** — a killing blow restores `Rank_Health(fragment Rank) ÷ 10` Health; passive, once per exchange.
- **Growth path.** Fragments are permanent; consuming a higher-Rank core of the same signature upgrades that fragment's Rank. **A held fragment may be released** — deliberately, outside combat, permanently — freeing its slot; the fragment is gone and re-taking it costs a fresh core and a fresh digestion. The catalog is larger than any reachable cap on purpose: **which five he carries is the class's standing decision**, and it is meant to be revisited as the fights change rather than settled once.
- **Evolution quest hook — the Apex Trial (level 50):** consume a **boss** core to unlock **Apex Predator** — the fragment cap rises to `effective Vitality ÷ 12`, and one fragment may be ascended to boss-Rank magnitude (its skill multiplier or reduction takes the next band up).

```text
╔══ ◈  F R A G M E N T S ═════════════════════════════════════════════════════
     Held            <filled> / <cap>     (cap = Vitality ÷ 20)
╟──  H E L D  ───────────────────────────────────────────────────────────────╢
     <fragment>      [<Rank>-Rank]   <ability>          <Mana n | Passive>
          from <source>
╚═════════════════════════════════════════════════════════════════════════════
```

Example — a Devourer at level 25, effective Vitality 111 (cap 5):

```text
╔══ ◈  F R A G M E N T S ═════════════════════════════════════════════════════
     Held            3 / 5                (cap = Vitality ÷ 20)
╟──  H E L D  ───────────────────────────────────────────────────────────────╢
     Breath          [D-Rank]    ×2.0 cone across foes in reach    Mana 12
          from a [D-Rank] salamander
     Stone-Hide      [C-Rank]    30% physical reduction sustained  Mana 4/exchange
          from a [C-Rank] golem
     Regeneration    [D-Rank]    25 Health for 3 exchanges         Mana 10
          from a [D-Rank] troll
╚═════════════════════════════════════════════════════════════════════════════
```

## 18.7 Echo Knight — offered for endurance

- **Core mechanic.** **Record** a combat **instant** — a single action resolved at **strong or critical** success — into an echo slot. **Deploy** an **echo**: a time-copy of the Bearer that replays the recorded instant's action and then stands where it was left.
- **Slot cap = effective Perception ÷ 20** (floor, minimum 1): Perception 60 holds 3, Perception 120 holds 6. Recording is free; capturing into a full arsenal of slots overwrites one of the Bearer's choosing.
- **An echo is a body between him and the fight, and that is the class.** A deployed echo persists 3 exchanges and may **intercept one attack aimed at the Bearer**, taking it in full and dispersing — the damage never reaches him and never touches his pools. This is the Endurance grant: not a larger pool, but attacks that do not arrive. Up to `slot cap` echoes may stand at once.
- **Resource costs.** Deploying costs **8 Mana**, reduced by **2 for each of the Bearer's own pools currently below half** (minimum 4) — the class is cheapest exactly when he is worst off, which is the pressure it exists to survive. The echo replays the recorded action at the **same skill multiplier**, but the die **re-resolves its degree**: an echo repeats the move, never the outcome.
- **Growth path — authored rungs, read against System Rank** (Section 6.6):

| System Rank | Deploy cost | Persists | Capture | Interception |
|---|---:|---:|---|---|
| **C** | 8 | 3 exchanges | strong or critical | one attack |
| **B** | 6 | 4 exchanges | strong or critical | one attack |
| **A** | 4 | 5 exchanges | **critical retains its degree on replay** | **two attacks** |
| **S** | 4 | until dispersed | critical retains its degree | two attacks |

- **Evolution quest hook — the Chorus Trial (level 50):** unlock **Simultaneity** — every recorded instant deploys together in one exchange for a single combined cost, and an echo dispersing on interception **records the attack that destroyed it**, filling its own slot from its own death.

**Why the class absorbs rather than out-damages.** Through Profile 1.67 the Echo Knight was offered for **Endurance** — *"surviving sustained pressure at low resources"* — and every line of it was an offensive replay costing 8 Mana a deploy. It contained no healing, no reduction, and no resource extension: the class made endurance **worse**, and the signal-to-class map contradicted the class it mapped to. Interception is the repair, and it fits what the mechanic already was: the section had always said an echo *"persists until a hit would injure it,"* so the echo was already soaking hits — it simply had to be allowed to soak the ones aimed at him.

```text
╔══ ◈  E C H O E S ═══════════════════════════════════════════════════════════
     Recorded        <filled> / <cap>     (cap = Perception ÷ 20)
     Active          <n> / <cap>          deploy Mana <n> each
     Persists        <n> exchanges        intercept <n> attack(s)
╟──  S L O T S  ─────────────────────────────────────────────────────────────╢
     Slot <n>        <action>             captured <degree>   ×<multiplier>
╚═════════════════════════════════════════════════════════════════════════════
```

Example — an Echo Knight at level 25, effective Perception 69, System Rank C:

```text
╔══ ◈  E C H O E S ═══════════════════════════════════════════════════════════
     Recorded        2 / 3                (cap = Perception ÷ 20)
     Active          0 / 3                deploy Mana 8 each
     Persists        3 exchanges          intercept 1 attack
╟──  S L O T S  ─────────────────────────────────────────────────────────────╢
     Slot 1          Mana Bolt volley     captured critical   ×1.0
     Slot 2          dagger riposte       captured strong     ×0.75
╚═════════════════════════════════════════════════════════════════════════════
```

## 18.8 Riftwalker — offered for positioning

**The class is two pillars, and 1.96 is where they stopped being one (`F-049`).** Through 1.95 the class led with a line-of-sight teleport granting +1 to the follow-up — which is, on every axis, **the D-Rank Flash Step rune the Bearer had already ascended to A-Rank Master**, with a shorter follow-up window and a per-exchange lock. The travel the class actually sells lived in a side clause about anchors, capped at one or two steps a scene. The reach is now the class's own, the anchors are freed to be what they were always described as — *"a place he remains connected to"* — and Flash Step goes back to being a step you take at something you can see.

- **Core mechanic — three abilities:**
  - **Rift-step** — a true teleport, not a dash. **Two uses, and they are different actions**:
    - **The in-scene step** — to any point in **line of sight**; **Mana 1**, **once per exchange**, granting +1 modifier step to the immediate follow-up action. This is the combat tool, and it is the one that overlaps Flash Step; it is kept because a Riftwalker without it would have to buy a rune to fight. **Its price is the once-per-exchange line, not the Mana** — a class whose signature move is rationed by pool arithmetic at four figures of Intelligence is rationed by nothing.
    - **The travelling step** — to **any place he has personally stood**, on the Mana bands below. It **takes the exchange and removes him from the scene**: this is travel, not a manoeuvre, and it cannot be spent to leave a fight and return inside it. The one exception is the answering step below.
    - **The anchored step** — to one of his **own set anchors**, at a **flat 5 Mana** from any distance, unbound by the instance walls that stop an ordinary travelling step. See below; this is the class's real reach.
  - **Micro-rift deflection** — a reaction opening a small rift to deflect or redirect an incoming attack; Mana 8, applying **50% damage reduction** to that hit (composes multiplicatively, Section 7.3) or turning a projectile aside.
  - **Standing anchor sense** — a set anchor is a place he remains **connected to**. While an anchor is set, **disturbance there reaches him**: presence where there was none, violence, or a mana event. It returns **the fact and never the detail** — no identity, no count, no intent; knowing *what* is Keen Sense's work and Keen Sense requires being present. **It costs nothing, takes no action, and pays from every set anchor at once.**

- **Reach — anywhere he has stood, and the ledger is what says so.** The travelling step reaches any place the campaign's own record shows the Bearer **has personally been** — a place entity, a location on a resolved Event, a room he walked out of. **It is not "anywhere he has seen."** A place he has looked at, been shown, had described, or watched through another's read is not a destination; a condition with no evaluation point is `F-002`'s defect, and *seen* has none while *stood* is already canon. **A destination that no longer exists is not a destination** — a cleared Gate's interior collapsed with the mouth (Section 9.7), a Scar's shifted ground may no longer hold the place he remembers, and the Runtime rules on the ledger rather than on his memory.

- **Arrival is blind, and this is the whole reason anchors still matter.** He arrives at a remembered place **as he last saw it** — he has the geometry and nothing else. Whatever is there now resolves without warning him, and the Runtime does not soften it because the step was voluntary. **An anchor is the exception**: anchor sense has already told him the place is disturbed, and at System Rank A which kind, so an anchor is **the only ground he can arrive at knowing what he is stepping into.** That is what the cap buys.

- **Mana by distance, on soft described bands — not metres, and not a table of containers to look up (1.97).** Gatefall tracks no coordinates and the Runtime is **not asked to invent metres**, grids, or ledger lookups mid-scene. **The bands below are descriptions, and the Runtime picks the one the fiction is obviously in.** Version 1.96 priced this by which ledgered container held both ends, which is precise and the wrong kind of precision: it turned every step into a lookup and made the cheapest possible step cost 6. The shape that matters is that moving inside a fight is nearly free and crossing the world is an undertaking:

```text
     line of sight        he can see the spot                            1
     close by             the next room, the far side of the yard,
                          the floor above                                3
     further              across the district, somewhere he would
                          otherwise have walked to                       4
     the city             anywhere in the metro he is standing in        5

     past the metro every further step out costs FIVE TIMES the last:
     another city in the same country or state                          25
     another country                                                   125
     another continent                                                 625
     the far side of the world                                       1,000
```

  **These are described bands, not measurements, and the Runtime picks the one the fiction is obviously in.** Where two could both fit, **the more expensive one governs** — ambiguity resolves *against* the Bearer, always, so a vaguely described destination is never the cheap one and nobody argues about a boundary mid-scene.

  **The ×5 is the whole design, and it is steep on purpose (1.98).** Inside a city the class is nearly free and should be: this is a positioning class and positioning is what it does all day. **Past the city it stops being positioning and becomes geography**, and geography is expensive — 25, 125, 625, with **1,000 as a deliberate terminal cap** rather than a sixth multiplication, because there is nowhere further than the far side of the world and the ladder should say so. Against a Bearer whose maximum Mana is in four figures, a single intercontinental step is a **third of everything he has** and the last rung is **half**. That is intended: an unanchored crossing of the world should be a decision he plans a day around, not a commute.

  **And it is the number that makes an anchor worth its slot.** A step to a set anchor is **flat 5 at any range** (below), so the far side of the world costs 1,000 raw and **5** to somewhere he has held — a two-hundredfold difference. The `Agility ÷ 20` cap is therefore the class's real strategic decision: forty-eight places on Earth he can reach for pocket change, and everywhere else priced like the distance it is.

- **The ordinary travelling step is bound by the world's own walls, and this is where the restrictions live.** It **never crosses an instance boundary in either direction** — not out of a Gate, a Section 9.6 red gate, a Section 17 instant dungeon, a Section 8.3 penalty zone or a Section 18.2 trial, and not into one. Every one of those sections rests on it: a red gate *"seals on entry and cannot be exited until its boss dies"*, a penalty zone has *"no other exit and no retreat"*, the clear window is what makes Section 13.2's loot declaration mean anything, and Section 9.4's legal minimums assume a crew committed once it crosses. **For an ordinary step, the mouth is the only way home, exactly as it is for everyone else.**

- **An anchored step is unrestricted, flat, and this is the class's real power (1.97).** Stepping to one of his **own set anchors** costs a **flat 5 Mana** from any distance — no band, no doubling, no ceiling — and **it is not bound by the walls above.** It crosses out of a Gate, out of a red gate, out of an instant dungeon, and back in. A Riftwalker standing in a sealed interior with an anchor outside it **is not sealed in**, and no other awakened on Earth can say that. That is what the class is, and it is deliberately not a small thing: Section 9.6's red gate is authored as the anomaly with *no retreat*, and this is the one power in the profile that answers it.

  **Two exceptions, and only these two: the Section 8.3 penalty zone and the Section 18.2 class trial.** Neither is a puncture in the world — both are instances the **System itself** builds and drops on him, and Section 6.7 already names them as the two content systems the System picks *for* him precisely because he cannot walk away from them. **The forge does not have a back door.** A penalty zone he could anchor out of would stop being a penalty, and it is the campaign's only remaining imposed danger source (`F-046`); a trial he could leave would measure nothing. An anchor set inside either is unreachable from outside and unusable from within until the instance releases him.

  **An anchor set inside an ordinary instance still dies with it.** The interior ceases to exist at the clear window's end or on the key's expiry (Sections 9.7, 17), and the anchor is released with it, returning the slot. He can step out of a Gate; he cannot keep a door into one that no longer exists.

- **Anchors — held ground, not a shortcut.** Standing an exchange in a place he has reason to hold, the Bearer may **set an anchor** there. Setting is free and takes the exchange; an anchor is permanent until released, and **releasing is free, instant, and taken at will from anywhere** (1.72) — the exchange is the price of *setting*, not of letting go. **Anchor cap = effective Agility ÷ 20** (floor, minimum 1): Agility 100 holds 5, Agility 200 holds 10. **Through 1.95 the cap limited where he could go; it now limits what he can watch and where he can arrive safely**, which is the constraint the class was always described as having — *"a Riftwalker's power is a map, accumulated one held position at a time."* He can reach hundreds of places. He **holds** a few.

- **What an anchor grants over an ordinary destination** — four things. **Flat cost and no walls** (above, from the moment he has the class); then by rung below: **arrival is never blind**, **the answering step** (rift to a disturbed anchor as a *reaction*, from anywhere, the one travelling step that does not remove him from a scene), and **warded ground** (his own rift-space, where deflection is free).

- **Growth path — authored rungs, read against System Rank** (Section 6.6). **Reach is not on this table**: the travelling step reaches anywhere he has stood from the moment the class is taken, priced by distance. What grows is what he can *do about* the places he holds.

| System Rank | Deflection | Anchor sense | Held ground |
|---|---:|---|---|
| **C** | 50% | he may **check** an anchor deliberately and learn whether it has been disturbed | arrival at an anchor is **never blind** |
| **B** | 60% | disturbance reaches him **as it happens**, unprompted, wherever he is | **the answering step** — once per scene, rift to a disturbed anchor as a **reaction**, and it does not remove him from the scene he was in |
| **A** | 70% | it resolves into **which kind** — presence, violence, or mana | **warded ground** — deflection costs no Mana while he stands at one of his own anchors |
| **S** | 70%, and a deflection may **return** the attack to its source | one anchor at a time may be sensed **as though he stood at it**, for one exchange | the answering step is **unlimited**, warded ground covers one other person standing with him, and an ally he touches may be sent with him on any step |

**A disturbance is state with a lifecycle, and the Runtime is obliged to surface it.** It is written to the anchor when it occurs — `occurred_at`, `kind` (A-Rank and above only), `surfaced`, `acknowledged` — and is **never aged out, decayed, overwritten, summarised away, or dropped**; it sits outside anything a context budget may trim, with disposition and channel constraints, for the same reason. At B-Rank and above the sense is a **push**: the Runtime surfaces it **in the exchange it occurs**, or at that exchange's close if the Bearer is mid-action, and never later than the scene's end — **including mid-combat, including when it is inconvenient.** An unsurfaced disturbance joins the consolidated adjudication queue as a **mandatory readiness and next-scene gate**, so it survives a save, a session end, and a context compaction, and **opens the next Runtime turn ahead of anything else.** Acknowledgement stops the gate and does not delete the fact: what happened remains there to be found.

**The sense reports; it never authors.** A disturbance may be surfaced at an anchor **only where it would have occurred had no anchor been set there.** The Runtime may not author an event at a place *because* it is anchored, may not use the sense to force a return, and may not treat it as a hook. Section 9.1's tick advances the world on its own clock whether or not he is watching; the anchor is a window onto that, not a reason for it.

**Why an anchor pays while he is nowhere near it.** Through Profile 1.72 the class's third grant was a **pocket cache**, and a Bearer reaching Riftwalker has carried a System inventory reachable from inside a sealed instance and a Section 12.9 remote store for twenty levels — so the third grant of a **permanent** choice returned nothing he did not already hold. It is the same defect 1.67 repaired in Soulforged Armory one class over, and the same sentence answers it: **a cap that cannot bind is not a cap** (Section 18.3.1). An anchor that pays only when he steps to it is a place he can *go*; before this rung, anchors three through five were inert in any scene where he stepped twice. An anchor that reaches him is a place he **holds**.

- **Evolution quest hook — the Threshold Trial (level 50):** unlock the **personal gate** — a stable two-way portal between **two of his own anchors**, holding for a scene, Mana scaling by distance: travel and infiltration the world's own Gates never offered. The anchors he spent twenty-five levels setting are the network it runs on.

```text
╔══ ◈  R I F T S ═════════════════════════════════════════════════════════════
     In-scene step   line of sight        Mana 1    <ready | used this exchange>
     Travelling step anywhere he has stood  <1|3|4|5, then x5 past the city>
     Anchored step   any set anchor       Mana 5    unrestricted
     Deflection      <n>% reduction       Mana 8    <reaction | free at an anchor>
     Anchor sense    <rung>
     Answering step  <rung>               <ready | used this scene>
     Anchors         <filled> / <cap>     (cap = Agility ÷ 20)
╟──  A N C H O R S  ─────────────────────────────────────────────────────────╢
     <name>          <place>                          <quiet | DISTURBED>
╚═════════════════════════════════════════════════════════════════════════════
```

Example — a Riftwalker at level 25, effective Agility 102, System Rank C:

```text
╔══ ◈  R I F T S ═════════════════════════════════════════════════════════════
     In-scene step   line of sight        Mana 1    ready
     Travelling step anywhere he has stood  1 / 3 / 4 / 5, then x5 (25/125/625/1000)
     Anchored step   any set anchor       Mana 5    unrestricted
     Deflection      50% reduction        Mana 8    reaction
     Anchor sense    checked deliberately
     Answering step  not yet (B-Rank)
     Anchors         3 / 5                (cap = Agility ÷ 20)
╟──  A N C H O R S  ─────────────────────────────────────────────────────────╢
     The landing     Rogers Park stairwell            quiet
     Coldwater       Frozen Gallery, vein 3           DISTURBED
     The lot         behind Ironline Reg V            quiet
╚═════════════════════════════════════════════════════════════════════════════
```

**Arrival at any of those three is not blind; arrival anywhere else he has stood is.** That is the whole of what the three slots buy him at System Rank C, and it is why the cap is a curation problem rather than a travel one.

## 18.9 Reliquary — uncatalogued

**Reveal condition.** Inside the trial, the Bearer spends a **resolved action examining something he has already killed** — a read, an appraisal, a deliberate inspection — at a point where the exchange gave him something better to do with it. Curiosity under lethal pressure. No signal scores it and the tally cannot see it.

- **Core mechanic.** A slain beast is not a monster's corpse. It is what is left of **someone's world** — the harvested remnant of a place the Gates ate before they came here (Bible Section 9, owner-facing; the Bearer learns this the slow way and never from the System). A Reliquary reads that: standing over a killed thing, he recovers a **relic** — a fragment of the practice, sense, or craft of the people who lived beside it.
- **The relic is the weapon, and this is the whole of the class.** Each relic is **how they fought these** — the answer a dead world worked out, at length and at cost, to the exact thing that eventually killed them. A relic grants, against creatures of its own origin:
  - **+2 modifier steps** on actions taken against them (Section 4.3's net ±3 still binds), and
  - one authored **counter** — the thing that world knew and nobody here does: a tell read before it lands, a resistance stripped, a posture their bodies cannot hold.
- **And nothing at all against anything else.** A relic is knowledge of a specific dead world, not a general technique. Against creatures of another origin it grants no step, no counter, and no magnitude. This is the class's cost and its shape: a Reliquary who has met a thing before is the most dangerous hunter alive to it, and against something new he is an ordinary Bearer holding a book about the wrong world.
- **Origins are readable and few.** Every Gate creature carries an origin — the world it was harvested from — and the same origins recur across Gates, cities, and continents, because the Assay ships one library. A Reliquary who has walked ten Gates has met perhaps three origins. **Recognition is itself a grant:** on first perceiving a creature, he knows whether he holds its origin, which is a Section 14.3 Tier-1 read costing nothing.
- **Acquisition — relics.** Recovering one costs a resolved action over the corpse and **Rank-ladder Mana** at the creature's Rank. **Relic cap = (effective Perception + effective Intelligence) ÷ 40** (floor, minimum 1).
- **Magnitude — authored rungs against System Rank** (Section 6.6):

| System Rank | Relic grants | Reach |
|---|---|---|
| **C** | +2 steps · one counter | creatures of that origin |
| **B** | +2 steps · **two** counters | that origin, and he may **name** it — the world gets a name nobody else has |
| **A** | +2 steps · two counters · **the counter applies to allies he has briefed** before the fight | that origin |
| **S** | as A, and a relic's counter applies to **anything sharing the dead world's lineage**, however distant | a whole branch of the library |

- **Evolution quest hook — the Cataloguer's Trial (level 50):** recover a relic from a **boss** to unlock **The Long Museum** — relics no longer occupy the cap and are held without limit, and the Bearer may recover a relic from a creature he did **not** kill, including one killed long ago whose remains still exist.

```text
╔══ ◈  R E L I C S ═══════════════════════════════════════════════════════════
     Held            <filled> / <cap>     (cap = (Perception + Intelligence) ÷ 40)
     Origins known   <n>
╟──  H E L D  ───────────────────────────────────────────────────────────────╢
     <relic>         [<Rank>-Rank]   origin <name | unnamed>
          counter   <what that world knew>
╚═════════════════════════════════════════════════════════════════════════════
```

## 18.10 Herald — uncatalogued

**Reveal condition.** The Bearer clears the trial **scoring at least one point in all five signals** (Section 18.3.2). Inside the machine built to make him specialize, he refused to.

- **Core mechanic.** Rank is fixed at Awakening and only the Bearer grows — the law the whole world is arranged around (Section 2). A Herald **lends** what he has. He forms a **bond** with a named awakened and gives real, temporary capability across it: effective Stats, pool, and the Rank-derived weight that follows from them.
- **A bond runs both ways, and that is what makes it a fighting class.** What he lends, he also draws. While a bonded ally fights within his sight, the Herald gains **+1 modifier step** per bonded ally engaged, to Section 4.3's net cap — and a bonded ally's resolved kill restores him `Rank_Health(the slain creature's Rank) ÷ 10` Mana. **Alone, a Herald is the weakest class in this section by a wide margin.** With four people he trained, he is the strongest. That is the class: the candidate a process wanting one champion accidentally made plural.
- **The lend, exactly.** As an action, the Herald raises one bonded ally by **one effective Rank band** for the scene — Rank Health and Rank Mana (Section 6.1) both move to the new band, and their fixed-Rank damage with them. Cost: the **Rank-ladder Mana of the band they are raised *to***, and the Herald's own maximum Mana is reduced by that amount until the scene ends. He is carrying them, and he feels it.
- **What it does not do.** It does not change a card, an Awakening measurement, or anything an instrument reads (Section 19.2 measures maximum Mana and would read the *loan*, which is exactly the exposure problem below). It grants no System, no levels, no skills, and no XP. It ends with the scene, every time, and nothing about it accumulates in the ally.
- **This is the most dangerous secret a Bearer can hold, and the profile says so.** A hunter whose output moves is a Section 19.1 event with witnesses, and a hunter whose *measured pool* moves is a Section 19.2 re-assessment that the reawakening classification cannot absorb — because reawakening explains one correction and this is a **series**, on other people, at will. A Herald who lends in public is not risking his own cover; he is manufacturing evidence on someone else's card that the world has no story for.
- **Acquisition — bonds.** Forming one takes an uninterrupted hour with a willing, awakened, named person and their explicit consent; it is permanent until released by either. **Bond cap = (effective Vitality + effective Intelligence) ÷ 40** (floor, minimum 1).
- **Magnitude — authored rungs against System Rank** (Section 6.6):

| System Rank | Lend | Draw |
|---|---|---|
| **C** | one band, one ally at a time | +1 step per engaged bond · Mana on their kills |
| **B** | one band, **two** allies at once | as C, and a bonded ally may spend **his** Status Recovery |
| **A** | **two** bands, two allies at once | as B, and a bonded ally's death does not break the bond — it **returns** what was lent, in full, at once |
| **S** | two bands, every bond at once | as A |

- **Evolution quest hook — the Concord Trial (level 50):** lend to an ally who then survives a Gate two Ranks above their own card, unlocking **Standard-Bearer** — a bonded ally within sight may act on the Herald's own initiative, and one bond may be made **permanent**, its raised band never ending and never costing.

```text
╔══ ◈  B O N D S ═════════════════════════════════════════════════════════════
     Bonded          <filled> / <cap>     (cap = (Vitality + Intelligence) ÷ 40)
     Lent            <n> band(s)          Mana held <n> until scene end
╟──  B O N D S  ─────────────────────────────────────────────────────────────╢
     <name>          [<card Rank>-Rank]   <raised to [<Rank>-Rank] | at rest>
╚═════════════════════════════════════════════════════════════════════════════
```

## 18.11 Seam — uncatalogued

**Reveal condition.** Inside the trial, the Bearer spends a **resolved action on the seal itself** — testing the wall, reading the boundary, working the edge of a sealed instance he has been told has no exit. Attention on the container rather than on what it holds.

- **Core mechanic.** A Gate is not a door and not a place. It is a **puncture** — and the world's whole answer to one is to cordon it and send hunters through, because nothing anyone has built touches the hole itself. A Seam works the hole: reading its geometry, holding it, narrowing it, and eventually closing it.
- **He unmakes what makes a monster a monster.** Under `GTF-OVR-003` a beast's body is saturated with mana, which is why only mana-borne damage lands on it and why conventional forces can contain a break but never fight one. A Seam **severs a creature from that suffusion**: as an action, Rank-ladder Mana at the target's Rank, an Intelligence-governed d100 against its Section 4.3 domain rating. On success, for three exchanges, the target
  - drops to **half its Rank Health** (current and maximum together, damage already taken carrying across), and
  - **takes ordinary mundane damage in full** — a rifle, a truck, a fall, a crowbar in the hands of anyone at all.
- **What that means outside a fight is larger than what it means inside one.** The single load-bearing fact of this world's defence policy is that soldiers cannot hurt what comes out of a Gate. A Seam standing beside a cordon can make them able to. He will not be able to explain it, and the cordon will remember he was there.
- **Working the puncture.** Against a Gate itself, on the Rank ladder and an Intelligence roll: **hold** a Gate's break timer where it stands for a scene · **narrow** it so nothing above a stated Rank can pass · at higher rungs, **close** it outright without clearing it — a thing no institution on Earth can do, has ever done, or has a procedure for.
- **Acquisition — seams read.** Each Gate, instance, or red gate he works teaches its geometry; a **read seam** is permanent and grants +1 modifier step on every later working of a puncture of that archetype (Section 10). **Seam cap = (effective Intelligence + effective Agility) ÷ 40** (floor, minimum 1).
- **Magnitude — authored rungs against System Rank** (Section 6.6):

| System Rank | Against a creature | Against a puncture |
|---|---|---|
| **C** | sever, 3 exchanges | hold a break timer for a scene |
| **B** | sever, 4 exchanges, and it **cannot be re-suffused** for the scene | narrow — nothing above a named Rank passes |
| **A** | sever, 5 exchanges, one adjacent creature carried with it | **close** an unbroken Gate without clearing it |
| **S** | sever a **boss** | close a Gate that has already broken |

- **Evolution quest hook — the Confluence Trial (level 50):** close a puncture while it is actively widening, unlocking **Unmaking** — the Seam may hold a seam **open** as well as shut, and a severed creature stays severed until something re-suffuses it. What that implies about a permanent Gate that does not close is left where it belongs.

```text
╔══ ◈  S E A M S ═════════════════════════════════════════════════════════════
     Read            <filled> / <cap>     (cap = (Intelligence + Agility) ÷ 40)
     Severance       <n> exchanges        Rank-ladder Mana
     Working         <hold | narrow | close>
╟──  R E A D  ───────────────────────────────────────────────────────────────╢
     <archetype>     +1 step on this geometry
╚═════════════════════════════════════════════════════════════════════════════
```

---

# 19. Exposure and Re-ranking

The Bearer's System is instrument-invisible (Section 14.4), but his **feats are not**. Growth he cannot hide behind a Rank card is a standing exposure problem, and this section fixes how it surfaces and what he can do about it — on authored rules, never an out-of-character ruling.

## 19.1 How Anomalous Performance Surfaces

- **Witness testimony.** Inside an uncleared Gate there are no cameras (Section 13.4) — but at the mouth, in the streets, and in a party that walked out, people saw. An E-Rank card who fought like a C-Rank hunter is a story hunters tell.
- **Appraiser re-measurement request.** A licensed appraiser — or a suspicious party leader — can ask BGM or CGA to re-measure a hunter whose output does not match his card.
- **Guild scouting.** Guilds watch the freelance boards for underranked talent; a scout who clocks an anomaly reports it upward as a recruiting lead or a compliance flag.
- **Media.** Cable news and tabloids cover S-Rank raids and, when it is strange enough, an E-Rank doing the impossible — the fastest and least controllable way a Bearer's cover cracks.

## 19.2 The Re-assessment Procedure

BGM (Chicago) and CGA (Prague) run the same procedure: a **mana-capacity re-measurement**. The instrument reads the Bearer's current maximum Mana, not level or System Rank:

| Measured maximum Mana | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---:|---:|---:|---:|---:|---:|
| Capacity range | 1–31 | 32–79 | 80–193 | 194–474 | 475–1,224 | 1,225+ |

**These bands are read off the Rank Mana ladder, and before 1.80 they were not (1.80).** Section 5.1 gives every fixed-Rank hunter a Rank Mana pool of **20 / 50 / 125 / 300 / 750 / 2,000**, and a re-assessment must return the Rank whose pool the reading actually sits in — otherwise the instrument that *assigns* Rank contradicts the table that *defines* it. The former bands were linear (`+20` per Rank) against a geometric ladder (`×2.5` per Rank). They agreed at E and D and then failed outright: **an ordinary C-Rank hunter carries 125 maximum Mana, and the old table carded 120+ as S-Rank.** Running the world's own instrument on an unremarkable C-Rank hunter returned S. Each boundary is now the geometric midpoint between the two pools it divides, so a reading is classified as the Rank whose pool it is nearest in ratio.

Because maximum Mana is `2 × effective Intelligence` (Section 5.1), Intelligence allocation and equipped Intelligence can move the reading. The instrument does not see the System, other Stats, skills, or hidden class; its official result is therefore a mana-capacity classification, not a complete combat verdict.

**What this means for a Bearer, now that Section 3.2's rungs carry him to parity.** A re-assessment reads a pool that matches or exceeds a hunter of his System Rank, so the card it issues is the card his body supports — and the Section 19.3 reawakening claim is a correction the instruments can stand behind rather than a number nothing else in the world can explain. The exposure trade in Section 19.4 is unchanged; what is gone is the possibility of being carded at a Rank the rest of the profile cannot honour.

- **Voluntary by default.** A hunter requests re-assessment; the authority schedules and measures. No one is dragged in merely for out-performing his card.
- **Compulsory when court-ordered.** After a **public incident** — a death, an illegal clear, ability use on a human, or a party dispute escalated to a regulator — a court may **order** re-assessment, and refusal is then itself an offense (Section 19.4).

## 19.3 The "Reawakened" Classification

The world has exactly **one sanctioned explanation** for a hunter's card reading higher than it used to: **reawakening** — a rare, documented **second measurement** that a regulator rules a **correction of a card mismeasured at Awakening**, not a second Awakening and not a Rank that moved. The instruments are held infallible about the present, so the only admissible account of a changed number is that the original card was wrong all along and the mismeasurement was there from the start — which is exactly the framing the Bible governs (Bible Section 8). It is the narrow exception to Section 2's rule that Rank is fixed at Awakening, defined here and nowhere else. It is the Bearer's **best cover**: measured at a D-Rank or C-Rank pool behind an E-Rank card, "reawakened" accounts for the number as a belated correction, without anyone reaching for a System nobody believes exists.

It is not free. A reawakening is rare enough that claiming one draws the very scrutiny — how, when, witnessed by whom — the Bearer most wants to avoid.

**The classification is not magnitude-limited.** The admissible fiction is that the *original* measurement was wrong, and a wrong measurement has no natural size: an E-Rank card that re-measures at a B-Rank pool is exactly as admissible a claim as one that re-measures at D. A wider gap makes the original appraiser's error more embarrassing, not the correction less believable — the instruments are held infallible about the present, and no part of the story requires the past to have been off by only a little. What a wide gap actually costs is **attention**, which Section 19.1 already prices in full; it does not cost credibility, and there is no size at which a regulator refuses the classification on size alone.

**What the classification cannot absorb is repetition.** One correction is a correction. A second on the same card is not, because two mismeasurements of one hunter stops being an appraiser's error and becomes a pattern the instruments are not permitted to have — and a pattern is what the world would have to explain some other way. The constraint therefore falls on the **number of claims a Bearer makes, never on the distance any one claim covers: reawakening explains a jump of any size; it cannot explain a series.**

## 19.4 What Can Be Refused, and the Cost

- A Bearer may **refuse voluntary re-assessment** outright and keep his carded rank.
- Refusal has a price: **his contract Rank is capped at his card.** A carded E-Rank is legally barred from C-Rank-and-above contracts (Section 9.4) and the pay they carry (Section 12.3) — concealment costs him the money and the missions his real capacity could take.
- A Bearer may **accept** re-assessment and the reawakened classification: this lifts the contract-Rank cap to the new rank and opens higher work, at the cost of visibility and the standing question of how he grew.
- A **court-ordered** re-assessment cannot be refused without committing an offense (Section 19.2); there, the only choice left is whether to explain the result as reawakening or to let the question stand open.

The secrecy game is this trade, run entirely on the rules above: **card low and stay poor and safe, or measure up and get rich and watched.** Neither is free, and the world is entitled to press on the seam.

---

# 20. Pacing and Lethality Laws

These are the profile's normative restatement of the world's pacing and danger laws (spec Section 4), binding on every Runtime.

## 20.1 Montage Compression

**Logistics compress to montage by default; beat-by-beat play is reserved for the uncertain, the opposed, or the consequential.** BGM and CGA paperwork, licensing queues, contract auctions, travel, restocking, and selling loot exist in the fiction but are narrated as summary unless a die is genuinely live. If a scene has no way to go wrong — no uncertainty, no opposition, no consequence — it is a sentence, not a session.

This is **compression, not a drama timer**: danger still arises only causally (Consistency Before Drama, Decision 003), never because a scene "needs" tension. A queue at the BGM office is a sentence; an appraiser who starts asking how an E-Rank cleared a C-Rank Gate is a scene.

## 20.2 The Die Never Replaces a Missing Fact

The d100 resolves uncertainty **within** authored ranges — it never fills the **absence** of authoring. If a number the System can surface is not in this profile, the answer is not a roll; it is a ruling (Section 20.3). A Runtime that reaches for the die to invent a price, a population, a timer, or a drop it could have read from these files has made exactly the error this world was built to end.

## 20.3 Unanswered Questions Become Rulings at the Checkpoint

When play surfaces a question the files do not answer, the answer is **captured as a ruling into the world files at the same session's checkpoint** — so no question is ever asked twice. The ruling is authored where it belongs (this profile for a mechanic, a world file for a fact), with provenance, and it is canon from that checkpoint forward. This is how the profile grows: not by improvisation at the table, but by ruling recorded into the files.

## 20.4 Fully Lethal

**Death is final and the die decides.** The authored threat model (Section 9, Section 18) and the d100 resolve combat; no drama softens a killing result and no plot armor spares the Bearer. Penalty zones (Section 8.3) can kill; red gates (Section 9.6) seal until the boss dies or the Bearer does; an uncleared Gate's timer genuinely lapses into a break (Section 9.8). A Bearer who dies — in an E-Rank Gate, an S-Rank Gate, a penalty zone, an instant dungeon, or the class quest — is dead, his System state transfers to no one (Section 6.5), and the campaign hard-ends. The world's danger is honest: the causal consequence of what is authored, surfaced without flinching and without invention.

## 20.5 Numbers Stay Out of the Fiction

Health totals, damage figures, Rank tables, modifier steps, XP, and dice results are **Runtime bookkeeping, not world facts.** No character in this world knows what "hit points" are, and none speaks in mechanical vocabulary: a mender reads a wound as a *wound* — "he can't take another hit like that," never "he's at 9 of 40" — a sensor reads presence and pressure, not stat blocks, and a crew leader weighs a fight in blood and odds, not arithmetic. The Runtime surfaces the numeric state **out of character only**: in OOC blocks, tallies, and the debug views the player asks for. The single diegetic exception is the **System itself** — its windows and notifications speak in numbers by design (Sections 14–15), and only its Bearer ever sees them; that asymmetry, one man perceiving the world's hidden arithmetic while everyone around him reads it by feel, is a load-bearing feature of the fiction, not a convenience. An NPC who quotes a number the System would render is a diegesis breach and is corrected like any misstated rule (the `rules` discipline applies).

---
