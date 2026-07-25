# Character Sheet - Alexander Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall (`worlds/gatefall/`)
**Ledger:** single-object Canonical Record (`011` Section 8) holding the protagonist.

---

## Record

```yaml
id: REC-000074
canonical_record: REC-000074
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000056
  event_time: "2026-07-22"
  record_time: "2026-07-23T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - ENT-000125
```

---

## Alexander Pendragon

```yaml
id: ENT-000125
canonical_record: REC-000074
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000056
  event_time: "2026-07-22"
  record_time: "2026-07-23T00:00:00Z"
type: Character
scope: personal
lifecycle: active
aliases:
  - name: "Alexander Pendragon"
    quality: current
relationships:
  - REL-000062
  - REL-000063
  - REL-000064
  - REL-000065
  - REL-000066
canonical_state:
  age: 25
  location: ENT-000087
  condition: "Health and Mana full (80/80, 38/38) under the Level 7 maxima, restored by the three level-ups the boss kill produced (`EVT-000080`). **No injury.** The Severe left-rib injury sustained from the boss's retaliation (`EVT-000079`) was cleared outright by Owen's (`ENT-000139`) resolved mender treatment under Profile 1.5 Section 6.3 — the first time this world's mender rule has been exercised, costing Owen one per-clear touch. Physically he is whole; he has been awake and fighting since 06:00 and is genuinely tired, which is fatigue rather than a tracked condition. The earlier near-lethal hit and 0/40 recovery, and the Profile 1.4 migration's Level 3 recovery, remain resolved history and were not recalculated. The System has attached (see `system_state`); he is no longer an ordinary licensed hunter, though nothing about him looks different to anyone who can't see what he can."
  capabilities: "University-trained mathematician and physicist (recent graduate). Certified krav maga instructor with several years of teaching experience; genuinely dangerous unarmed and in close-quarters combat by ordinary human standards. Formerly part-time secondary-school teacher. Cleared BGM intake three months ago (awakened) and has held an active hunter license for about one week, carded **E-rank** — the lowest possible grading, legally capping him out of **strike/combat** contracts at C-grade and above and their pay (Profile Section 19.4) unless he seeks re-assessment. This cap does **not** extend to harvest/support work, which is not rank-gated at all (Section 9.4, `d53114b`): he may legally mine a C- or higher-grade Gate right now. Under Profile 1.4, his direct System Stats govern possibility, pools, physical magnitude, and relative roll margins; his level-derived E System tier governs content and rewards only. Uncertain contested execution still resolves on the engine d100. No System skill (rune, skill book, class, or stat milestone) is known yet — `/system skills` reads empty.\n\n  Demonstrated, non-System capability (qualitative, `EVT-000059`/`EVT-000060`/`EVT-000063`): combat effectiveness validated in genuine uncertain combat (twice read an enemy's attack pattern to open a kill for someone else, under real stakes) — no longer merely a reputation gap. Mana-crystal extraction technique, taught in the field by Tanya Voss on 2026-07-24 and materially advanced solo at the Cicero Scar on 2026-07-25: he now reads a vein's resonance shift before striking rather than correcting mid-swing, picked up by deliberately watching two veteran harvesters and copying their method — a real, demonstrated improvement, not just repetition. Four System daily training regimens were completed from 2026-07-25 through 2026-07-28. Under the Profile 1.4 migration (`EVT-000074`), each included 100 push-ups, 100 sit-ups, 100 squats, and a 10 km run; the previously unnarrated squat sets occurred off-screen during the same exercise periods. The second day's run doubled as his commute to a job site in full gear, a deliberate efficiency he worked out himself.\n\n  **Externally-observed tactical framework (qualitative, `EVT-000066`, 2026-07-26):** during a break at the Frozen Gallery's third vein, Alexander deliberately studied the strike element holding a flank position — first their formation geometry (a breathing line trading coverage of blind angles without visible signal), then their pre-emptive timing (shifting position a full beat ahead of a barely-perceptible cue, patience and commitment-on-certainty rather than reaction). Neither observation altered a tracked stat or granted a mechanical bonus. It is recorded as the beginning of a real, externally-sourced framework for reading a fight's rhythm at a coordinated, multi-person scale — distinct from, but complementary to, his own demonstrated pattern-reading in the Red Line Corridor (`EVT-000059`), which he arrived at instinctively and under his own fight's pressure rather than by watching trained others. No NPC is aware the observation occurred."
  credentials: "Active BGM-issued hunter license (E-rank card, ~1 week old). No guild membership. Freelancer affiliated with the Windy City Hunters Coalition (`ENT-000102`, `REL-000062`) — Chicago's freelancer co-op, the default hook for an unaffiliated Chicago hunter."
  personality: "Coldly analytical; a strength the world hasn't caught up to yet — his reads of a fight, a room, or a person are consistently correct, even when no one believes him. Hot-headed: once he has read a situation, he trusts that read and moves on it fast, especially when he judges someone else to be in the wrong, often before slower or more cautious counsel would act. This combination — right more often than anyone expects, and impatient with anyone slower to see it — is exactly what has made him hard to place in a crew."
  latent_stat_array:
    note: "SUPERSEDED by system_state below (EVT-000059). Retained for provenance: this was the civilian-range creation array (Profile Section 4.1: five stats, each 8-12, summing to 50, none above 12) the Onset Sequence (Profile Section 14.7) read into the granted STATUS window when the System attached mid-session on 2026-07-24."
    strength: 11
    agility: 12
    vitality: 8
    perception: 11
    intelligence: 8
  system_state:
    bearer: true
    profile_version: "1.5"
    profile_migration_event: EVT-000078
    onset_event: EVT-000059
    onset_time: "2026-07-24, inside the Red Line Corridor Gate, mid-fight against the crew's remaining beasts and the elite"
    class: null
    title: null
    level: 7
    xp: "40/700"
    health: "80/80"
    mana: "38/38"
    unspent_points: 15
    pending_rewards:
      ability_points: 3
      status_recovery: 0
      daily_random_box: 3
      note: "Profile 1.4 migration `EVT-000074` granted one unopened Daily Random Box per recorded completed daily (four). One box was opened `EVT-000075`, yielding an E-grade Channeling Focus; three remain. The pending Profile 1.3 daily bundle became Ability Points +3 (still unclaimed) and one Status Recovery, which was **claimed mid-fight** during the boss engagement (`EVT-000079`, Health 12→68) and is therefore spent. Every level-up reward has settled immediately on crossing per Section 3.2 — the three Level 4→7 grants (`EVT-000080`) contributed +3 to each base Stat and +15 unspent points. No level-up reward is pending; only the daily entries above remain."
    stats:
      strength: 25
      agility: 23
      vitality: 17
      perception: 20
      intelligence: 19
    effective_stats:
      strength: "25 (base 25 + equipment 0)"
      agility: "32 (base 23 + equipment 9)"
      vitality: "20 (base 17 + equipment 3)"
      perception: "20 (base 20 + equipment 0)"
      intelligence: "19 (base 19 + equipment 0)"
    system_tier: E
    equipment:
      main_hand: "C-grade Quickknife — Good · Agility +7 · weapon power 7 · armed strike ×0.75 · purchased through the System shop (`EVT-000069`)"
      off_hand: "E-grade Quickknife — Good · Agility +2 · weapon power 2 · armed strike ×0.75 · purchased from Ironbound (`EVT-000058`)"
      head: null
      torso: "Reinforced Leather Jacket [E] — Bastion torso armor · Good · Vitality +1 · physical reduction 3% · purchased from Ironbound (`EVT-000058`)"
      hands: "Reinforced Gauntlets [E] — Bastion hands armor · Good · Vitality +1 · physical reduction 3% · purchased from Ironbound (`EVT-000058`)"
      legs: "Shin Guards [E] — Bastion legs armor · Good · Vitality +1 · physical reduction 3% · purchased from Ironbound (`EVT-000058`)"
      feet: null
      accessory_1: null
      accessory_2: null
      total_physical_reduction: "8.7327% = 1 - (0.97 × 0.97 × 0.97); display 8.7%"
    gold: 22520
    shop_holdings:
      - "Lesser healing potion x9 (banked, unwithdrawn; one drawn into the physical world and given to Priya Okafor mid-fight, `EVT-000079` — the first time he has produced a banked item in front of witnesses)"
      - "Antidote x2 (banked, unwithdrawn)"
      - "Instant-dungeon key [E-band] (banked, unwithdrawn)"
      - "Channeling Focus [E] — Good · main hand · Intelligence +2 · focus power 2 (banked, unequipped; won by opening a Daily Random Box, `EVT-000075`; main hand is occupied by the equipped C Quickknife, and no known skill yet uses focus power)"
    daily_premium:
      cycle: "**ROTATED 2026-07-29 06:00 America/Chicago → 2026-07-30 06:00.** The new cycle's stock has not been viewed and its Section 12.5 rolls have not been made; they resolve when Alexander next opens `/system shop`. The six offers recorded below are the **expired 2026-07-28 cycle**, retained for provenance only — all six lapsed unpurchased and are no longer available."
      expired_cycle: "2026-07-28 06:00 America/Chicago → 2026-07-29 06:00 America/Chicago"
      generated_by: "Models preserved from Profile 1.2 migration (`EVT-000072`): weapon d7=6, armor-slot d5=2, armor-style d5=4, accessory d5=3, consumable d6=5, rune d10=2, key d6=5. Profile 1.3 grade migration (`EVT-000073`): weapon d100=46 (E), armor d100=85 (C), accessory d100=74 (D), rune d100=23 (E), key d100=70 (D)."
      purchased: "none; 6/6 available"
      offers:
        weapon: "Spellthread Focus [E] · main hand · Intelligence +4 total · focus power 2 · active-skill Mana costs −1 (minimum 1) · 200 g"
        armor: "Adaptive Watcher Torso [C] · torso · Perception +5 total · physical reduction 11% · 2,400 g"
        accessory: "Ascendant Heartward Sigil [D] · accessory · Vitality +5 total · 720 g"
        consumable: "Quicksilver Phial · +1 modifier step on Agility-governed actions for one scene (net ±3 cap) · 750 g"
        rune: "Dagger Mastery Rune [E] · teaches Dagger Mastery at E rank · 2,500 g"
        key: "Runic Key [D] · standard D instant dungeon; boss adds one guaranteed rolled rune to its normal boss drop · 4,500 g"
    daily_quest:
      streak: 4
      last_completed: "2026-07-28"
      current_quest: "Issued 2026-07-29 06:00 (dismissed unanswered while asleep); window closes 2026-07-30 06:00. Calisthenics complete as of 13:30 — push-ups 100/100, sit-ups 100/100, squats 100/100. **10 km run 0/10, outstanding.** The streak advances only on completion; failure transfers him to a penalty zone at his System tier (Section 8.3)."
      next_issue: "2026-07-30T06:00:00"
      active_rule: "Profile 1.4: 100 push-ups, 100 sit-ups, 100 squats, 10 km run; no XP; completion advances the displayed streak, failure resets it, and the streak grants no cache or multiplier; rewards are three separate pending entries."
    notes: "Onset fired per World Rule Profile Section 14.7 (owner ruling: no later than the protagonist's first genuine, lethal, uncertain fight) during the beast/elite engagement, when a common beast's hit dropped him to 30/40 — his first real brush with death. Status window granted at creation values, then advanced through play: elite kill (setup credit, +20 XP), a common-beast kill via a live-die crippling strike he landed earlier that a later automatic mercy-blow finished (+10 XP), and the Red Line Corridor boss kill (setup credit for the pattern-read that opened it, +40 kill XP +70 Gate-clear milestone) — crossing the Level 1→2 threshold, granting +3 unspent stat points and restoring Health/Mana to full. Perceptible to Alexander alone (Profile Section 14.4); no NPC, including his crew, is aware of it. The first daily quest issued at the next 06:00 local after onset (2026-07-25) — completed that morning and accepted: +10 XP (40→50/200), +3 unspent stat points (3→6), streak 0/7→1/7. All 6 unspent points (3 from the level-up grant, 3 from the daily grant) were later allocated at the Cicero Scar (`EVT-000063`): Strength +2 (11→13), Vitality +2 (8→10), Intelligence +2 (8→10); unspent 6→0. A second daily quest issued 2026-07-26 at 06:00 and was completed the same morning (100 push-ups, 100 sit-ups, a 10 km run doubled as his commute); per Section 3.9's split, the completion's XP and streak applied automatically (+10 XP → 60/200, streak → 2/7) while its grant sat pending. That grant was **accepted** during the third Frozen Gallery vein (`EVT-000067`): +3 unspent stat points (0→3, not yet allocated) and a full Health/Mana restore (cosmetic — both pools were already full). Those 3 points were later allocated entirely into Strength (13→16) on the morning of 2026-07-27 (`EVT-000069`); unspent 3→0.\n\n  `gold: 22520` is System-shop currency, built from seven private crystal sales instead of declaring them to the harvest pool: 1 C-crystal at the Cicero Scar (`EVT-000063`, 170 g), and six sales (four of 12, two of 50) during the Frozen Gallery job (`EVT-000065`–`EVT-000068`) — invisible to and unknown by any NPC, including Ada Reyes, Dale, and the Coalition, though two of the Frozen Gallery sales drew Dale's direct suspicion, both times deflected. On 2026-07-26 he spent 310 g (25,330→25,020) purchasing 10 lesser healing potions and 2 antidotes. On 2026-07-27 he spent a further 2,500 g (25,020→22,520) on a C-grade dagger (2,000 g) and an instant-dungeon key at his own band (500 g, `EVT-000069`). Per Section 12.5/12.9 all of these remain **banked in the dimensional inventory** rather than mundane physical property tracked in `120_INVENTORY_AND_OWNERSHIP.md` — private, weightless, and invisible to anyone but him until he chooses to draw one into the physical world.\n\n  **A third daily quest issued 2026-07-27 at 06:00** (100 push-ups, 100 sit-ups, 10 km run) and was completed the same morning at the park; per Section 3.9's split, XP and streak applied automatically on completion (+10 XP → 70/200, streak → 3/7) while the +3 stat points/full-restore grant was left **deliberately deferred**, banked for later. **A private technique practiced the same morning** (`EVT-000069`): repeated instant summon/store cycling of the new C-grade dagger confirmed the pocket-dimension exchange carries no perceptible delay or tell, and a slow-to-fast rehearsal of switching his grip from the old E-grade dagger to the new C-grade one mid-flourish, refined in a mirror until the swap read as an ordinary grip adjustment. Demonstrated, qualitative, unwitnessed by anyone — a real foundational practice rep, not yet tested against an actual observer.\n\n**2026-07-28 — the Ashfield Gate, Priya Okafor's crew (`EVT-000070`, `EVT-000071`).** A fourth daily quest issued 06:00 and was completed (calisthenics at home, 10 km run doubling as travel to staging); per Section 3.9's split, XP/streak applied automatically (streak 3/7→4/7) while the accept/defer prompt on its grant was shown but never answered before the scene moved on — left genuinely pending, not deferred by choice. Staged with Priya Okafor's crew (introducing Julian, `ENT-000137`, graded-shotgun striker; Renata, `ENT-000138`, sensor/reader; Owen, `ENT-000139`, mender) and entered the Gate. Unconfirmed grade (posted low-confidence D) resolved **true grade C** on entry — one grade higher, a real mismatch for a 5-hunter waiver-tier crew with no dedicated support element. Archetype resolved **Ashfield** (lingering burn-hazard air). Population: 12 common C beasts, 1 C elite, 1 C boss.\n\nThe front line (Priya, Julian, Renata) held the first wave cleanly, killing four common beasts outright. A fifth broke through toward the rear, where Alexander held position beside Owen per his declared support role. He intercepted it and fought it across a five-exchange sequence: a clean interception/counter (critical success), a follow-up strike (strong success), a feint-and-strike combo drawing on his practiced E-to-C dagger switch (success) — followed by the beast's own retaliation landing a full, grade-honest hit (`GTF-OVR-002`/`6.2`) that dropped his Health from 40 to **0**, the first genuinely lethal moment of his career. He claimed one of his two then-pending daily-quest grants mid-collapse as a clutch recovery (Profile Section 3.9): Health 0→40/40 instantly, +3 unspent stat points (0→3, unallocated). Recovered, he pressed the advantage on the stunned beast (critical success) and delivered the finishing blow to the now-defenceless creature (critical success) — a **kill**. Underdog-bonus kill XP (C-grade base 60, ×4 for a 2-band gap, Section 3.3): **240 XP**, crossing the Level 2→3 threshold (70→310 against a 200 threshold); Level 3, XP carried to 110/300. The resulting level-up grant was **deferred**, banked alongside the still-unanswered daily-quest grant — two grants now pending simultaneously.\n\nAn elite closed next. Alexander read its attack pattern on his own initiative (strong success): a telegraphed lunge off its left shoulder every third stride, called out to the crew. Priya attempted to intercept it on that read and **fumbled catastrophically** (natural 1) — thrown hard, genuinely hurt, momentarily down — and the elite broke through the line toward Owen and Alexander. Alexander met it dual-wielding both daggers (E-grade in one hand, the C-grade summoned to the other, mid-motion — Owen's second direct glimpse of the trick, unremarked but noted) using his calculated timing: a critical success that redirected the lunge past both of them and landed a real, damaging counter-strike. The elite is badly hurt but still active; Priya is recovering, favoring one side. Combat is ongoing; the boss has not yet been encountered.\n\nDagger-swap exposure note: Owen has now directly observed the C-grade dagger appear in Alexander's hand with no draw, twice, without comment or challenge either time — an accumulating, unconfirmed exposure thread (Profile Section 19), not yet investigated by anyone.

**Post-migration play, same clear (`EVT-000075`, `EVT-000076`, `EVT-000077`, 2026-07-28).** Alexander allocated all 10 unspent stat points from the 1.4 migration: Strength +3 (18→21), Perception +3 (13→16), Intelligence +3 (12→15), Vitality +1 (12→13). Effective Vitality/Intelligence changes re-derived Health 60→64/64 and Mana 24→30/30, both already full so both refilled to the new maxima. He then opened one of his four pending Daily Random Boxes (d100 85 → graded gear at System tier E; chassis d20 8 → Channeling Focus): an E-grade Channeling Focus (Intelligence +2, focus power 2) entered his inventory unequipped — main hand is occupied by the C Quickknife, and he holds no Mana-costing skill yet to spend focus power on.

Alexander then pressed the advantage on the wounded elite across three further exchanges: a partial success (d100 37, net +1, effective 57) landing a shallow graze; a critical success (d100 58, net +2 — Agility margin 0, elite-wounded +1, calculated weak-point targeting +1 — effective 98) opening a real wound; a strong success (d100 30, net +3 — elite now critically wounded +2, weak-point targeting +1 — effective 90) collapsing the elite, defenceless. The finishing blow resolved automatically (Rules Section 4.2 — failure impossible against a collapsed, unresisting target): the elite is confirmed dead. Kill XP: C-grade base 60 × elite ×2 × underdog-bonus ×4 (elite two System tiers above Alexander's E) = 240 × 2 = 480. XP 80→560 against the Level 3→4 threshold (300): Level 4, XP carried to 260/400. The level-up applied its full package immediately: all five base Stats +1 (Strength 21→22, Agility 14→15, Vitality 13→14, Perception 16→17, Intelligence 15→16), +5 unspent points, Health/Mana re-derived and fully restored (68/68, 32/32). System tier remains E (next tier at level 10).

**Aftermath and crew dialogue (`EVT-000077`).** With the elite dead, the crew regrouped. Owen and Priya both addressed Alexander's near-death against the earlier common beast directly: Owen confirmed he was too slow to reach him before the recovery happened and apologized; Priya took formal responsibility for the rear-pair formation gap and asked to be told in the future rather than finding out after. Alexander, sardonic rather than sincere toward the crew broadly, was genuinely warm only toward Owen — a joke about an owed beer, then declining Owen's offer to be checked over so as to bank his limited healing for worse need, capped with a friendly arm around Owen's shoulder, the first smile anyone in this crew has seen from him. Owen, visibly caught off guard, agreed to hold the healing and separately put on record — without pressing further — that he still has no explanation for the dagger appearing twice, an explicit acknowledgment of the exposure thread that stops short of confrontation.

Established this exchange: crew ranks were previously unstated and are now fixed — Priya is D-rank (made D roughly eight months ago), Julian and Renata are both E-rank, and Owen is **C-rank**, the reason a waiver-tier crew could field a real mender at all. Asked directly, Owen stated his practical healing capacity: roughly four to five people at ordinary injury severity per clear, or as few as two if treating something as severe as Alexander's earlier near-lethal hit — he doesn't have a hard cutoff so much as diminishing effect the more he's pushed.

Alexander then read the battlefield on his own initiative for a tactical picture (Perception-governed, d100 40, net +1 — demonstrated capability edge offset by Ashfield's burn-haze obscuring sightlines — effective 60, partial success): burn-scarring density climbs steadily northeast of the party's position, a real directional lead toward the boss and its den.

**The boss fight and the clear (`EVT-000079`, `EVT-000080`, 2026-07-28).** Alexander proposed finishing the Gate and built the crew's plan against each member's stated objection: unseen approach on Renata's read, Renata freed to read exclusively, Julian holding fire until the go, he and Priya rotating the boss's attention between them, Owen held back and told not to come for him if both were down. He drew a lesser healing potion from his dimensional inventory for Priya (framed as a purchase — Owen's fourth unexplained observation, unremarked). The approach resolved unseen (strong success); the boss rendered **red, pulsing**. Julian's opening shot turned it into Alexander's flank for an ambush strike (strong success), and a calculated weak-point strike (critical) pulled its attention entirely off Priya.

Then **two natural critical fumbles**. The first — planting the E Quickknife, instantly recalling the C Quickknife through the dimensional inventory, and striking — put his back foot through churned ash and him on one knee inside its reach; the boss's retaliation dealt 57, **Health 68→12**, inflicting a **Severe left-rib injury** under Section 6.3. He claimed his pending **Status Recovery** (12→68/68) as Owen ran to him, the third impossible recovery Owen has personally witnessed. The Recovery restored the pool and left the wound untouched, so his next strike — on a body that could not plant — was a **second natural fumble**, carrying him into the open. He evaded the resulting charge (success).

**Owen then cleared the injury outright** with a resolved mender treatment under the newly adopted Profile 1.5 (`EVT-000078`) — the first exercise of this world's mender rule, costing Owen one per-clear touch and four seconds of window. During those seconds Alexander read the boss's dead front limb as making every left turn slow and wide. He ordered Julian to lay fire between the boss and Owen; the boss flinched left onto the dead limb, and Alexander levered the shoulder seam apart using his own embedded blade as a fulcrum (strong success), collapsing its front-left quarter. A throat strike (success) failed to finish it; the boss heaved its ruined mass sideways as a collapse aimed like an attack. Alexander **allocated his 5 unspent points to Agility** (base 15→20) and evaded forward along the line of the fall (success) — the impact pinned the boss's last good limb under its own weight and turned its ruined side skyward. The finishing blow **resolved automatically** against a target that could no longer resist.

**Boss killed, Gate cleared.** Kill XP 960 (C boss 240 × underdog ×4) plus the C-grade clear milestone 320 = **1,280 XP**, crossing three thresholds in one settlement: **Level 7, XP 40/700**, all base Stats +3, +15 unspent points, Health/Mana re-derived and restored to 80/80 and 38/38. System tier remains E.

Renata's post-kill read (legendary success) found seven of the twelve common beasts alive at the north wall — contained absolutely by the standing barrier (Section 9.8: only a break releases a population, and a cleared Gate never breaks). The crew declined that fight; the seven went down with the instance. Alexander extracted the boss core clean (strong success) and recovered his E Quickknife. The **boss drop** rolled a **Longshot [C]** (Gate-forged bow, Perception +5, Agility +2, weapon power 7, two-handed); Julian offered it straight to Priya and Alexander overruled him — split or buy-out. A harvest near the aperture yielded 4 crystals to Alexander and 6 to the crew before the shallow ground gave out; pushing it produced **two more natural fumbles**, shattering a crystal and **breaking the resonance chisel outright** (Section 4.8). Final haul, unsold and unsplit: **16 C-crystals, 2 C-cores, the Longshot [C]**.

The crew exited after four hours and eleven minutes; the aperture collapsed behind them. **No contract has been filed with BGM Region V and no loot sold** — Alexander advised against filing while the crew was spent, Priya refused falsification but accepted delay, and Renata established that the C-grade loot declares the true grade to any appraiser regardless of the form. All five reconvene **2026-07-29 at 18:00** for Priya to file a true account of a mis-posted Gate.

**Exposure — the most direct acknowledgment to date.** Over the beer he had promised, Owen laid out unprompted everything he has witnessed: the killing hit Alexander walked off untouched by any mender, the knife appearing from nothing twice, the potion produced from nowhere, and being told of broken ribs he could feel were real in a body that read as unharmed. He stated he is not confused, will not later invent a normal explanation, intends to keep his promise not to ask, and has seen what carrying it alone costs. He left the door open without pushing. Alexander has not yet answered. Unreported and uninvestigated (Profile Section 19), but no longer unspoken."
    migration_notes: "Profile 1.4 migration (`EVT-000074`) preserves every sentence above as historical context but supersedes its old live-rule conclusions. Removing all daily-quest XP and replaying non-daily awards yields Level 3, XP 80/300: Red Line rewards 140 → Level 2 at 40/200, then the C-beast kill +240 → Level 3 at 80/300. Two completed level-ups add +2 to each base Stat and +4 unspent points; the pending Level 3 grant adds its original +3 points and settles its full recovery immediately. With the pre-migration 3 unspent points, current unspent total is 10. Effective Stats are 18/23/15/13/12; Health is 60/60; Mana is 24/24. All four historical daily completions are established to have included 100 squats performed off-screen in the same exercise periods. Their consecutive streak remains 4, and each contributes one unopened Daily Random Box. The one still-pending daily bundle separately became Ability Points +3 and one Status Recovery. Both Quickknives gained weapon power without changing grade, chassis, ownership, or the already-resolved elite counter."
  finances:
    starting_funds_usd: 4000
    background: stable
    standing_liability: "Outstanding university tuition debt, $30,000 principal, $400/month minimum payment. Recorded per Section 20.3 as a campaign ruling at this initialization checkpoint: the debt is a pressuring monthly liability against his income, and it does NOT reduce the $4,000 starting funds set by his stable social position (Profile Section 12.6)."
  personal_history: "Worked part-time as a krav maga instructor and part-time as a secondary-school teacher through university and after graduating in mathematics and physics. Awakened three months ago. Cleared BGM intake screening and was licensed at E-rank about one week ago. Entering Gates is now his job — the reason he has one at all is that he is awakened and licensed, not any grander ambition yet declared."
  reputation: "Notoriously the weakest licensed E-rank in Chicago. This is a reputation, not a measured fact — coordinators hesitate over his file, and working crews have so far declined to take him on. No card, survey, or instrument has ever contradicted the label, because nothing about him has been tested in a real clear yet."
  situation: "About thirteen days licensed. On 2026-07-24 the crew cleared the Red Line Corridor Gate (true grade E; archetype Shattered City) with no casualties, then looted and exited; contract closed, standard split filed 2026-07-25, Alexander's equal-fifth share ≈$2,313 pending (`EVT-000060`). The crew dispersed to reconvene in a few days.\n\n  On 2026-07-25 Alexander bought a resonance chisel from Diane at Ironbound ($80; cash $2,000→$1,920) and took a corporate-adjacent contractor's C-grade harvest-element slot at the Cicero Scar (`EVT-000063`), declining the D-grade rail-yard posting (`EVT-000061`, never confirmed). He mined 8 C-crystals total, declared 7 to logistics coordinator Ada Reyes (`ENT-000134`) and sold 1 privately through the System shop for 170 gold — undeclared, a real act of theft under the standard harvest contract, unknown to anyone. His corrected harvest-share estimate for that job is ≈$5,700, pending. He then signed onto a second C-grade harvest slot for 2026-07-26, 08:00, under the same contractor, logistics run by Dale (`ENT-000135`).\n\n  On 2026-07-26 a second daily quest issued and was completed (run doubled as his commute, in gear); its grant was later accepted mid-vein (`EVT-000067`). He entered the second C-grade Gate (confirmed grade, archetype Frozen Gallery, population 8 common C beasts/2 C elites/1 C boss) behind the strike element and worked three vein assignments under Dale's logistics across `EVT-000065`–`EVT-000068`, mining the third vein to genuine exhaustion. Six undeclared private sales through the System shop (four of 12 crystals, two of 50) never entered the declared pool; gold now stands at 25,330. Two of the largest sales drew Dale's direct suspicion, both times successfully deflected. A mandatory break let him study the strike element's held position, gaining an externally-observed tactical framework unknown to anyone. The strike element killed the Frozen Gallery's boss off-screen, opening the two-hour clear window; Alexander declared 41 C-crystals — the day's highest total by a wide margin — exited the Gate, and returned home. The job is complete: a third pending USD payout (≈$24,663, the Frozen Gallery harvest share) now joins the Red Line split (≈$2,313) and the Cicero Scar harvest share (≈$5,700), none yet received. Dale confirmed the contractor occasionally posts B-grade harvest work and that Alexander would be a strong candidate if one comes up. 3 unspent stat points remain unallocated. No XP, Health, or Mana change across any of this — no combat resolved for Alexander in either job."
  aspiration: "Become powerful and discover new things — vague and unearned so far, the kind of ambition a man says about himself before the world has given him a reason to believe it."
```
