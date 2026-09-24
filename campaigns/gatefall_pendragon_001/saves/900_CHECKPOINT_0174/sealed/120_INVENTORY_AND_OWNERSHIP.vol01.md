# Sealed Volume 01 - Inventory and Ownership - Gatefall: Pendragon

**Parent ledger:** `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`)
**Opened:** 2026-09-24
**Rule:** Decision 094; Rules Section 13.1

This volume is canonical history moved here verbatim from its parent ledger. It is not live state: nothing here is read at readiness, and a Runtime opens it only by identifier or heading when a question needs the past. It is byte-frozen from the first checkpoint that captures it, and `tools/validate_repository.ps1` fails any later edit. A correction to anything below is a new Event in the live ledger, never an edit here.

Retired record fields are held in `text` fences, not `yaml`, so they define no object: the live record is the only definition of its identifier.

---

## Record block notes - `REC-000076`

47 per-save notes from the `## Record` block of `120_INVENTORY_AND_OWNERSHIP.md`, oldest last, moved verbatim. They summarise saves `170_CHANGELOG.md` records in full.

```text
# This save (`EVT-001162`-`EVT-001168`): a B-Rank Torso bought at the System shop and gifted to Trevor Yamashita, -90,000 gold. Cash and pending payouts unchanged.
# This save (`EVT-001148`-`EVT-001154`): **the S-Rank auction lot confirmed flat, $109,800,000 landed**, cash +$109,800,000, pending payouts 1 -> 0; gold unchanged; no stored-gear movement.
# Prior save (`EVT-001132`-`EVT-001139`): **Tulsa ($1,650,000) and Karlin ($2,310,000) landed**, cash +$3,960,000, pending payouts 3 -> 1 (only the S-Rank auction lot, ~$109,800,000, Tuesday 2026-09-29 14:00 Eastern); gold unchanged; a Greatarm [S-Rank] (Box #69) and a Hunter's Band [A-Rank] added to stored gear (`EVT-001134`, `EVT-001135`).
# Prior save (`EVT-001129`-`EVT-001131`): no cash, gold or item movement; nothing landed.
# Prior save (`EVT-001121`-`EVT-001128`): gold +1,300,000 (Boxes #66 and #67, System gold) and potions +2 Greater
#   Healing / +1 Greater Mana (Box #68), `EVT-001123`; cash unchanged, pending payouts still 3.
# Prior save (`EVT-001109`-`EVT-001120`): cash and gold UNCHANGED, nothing landed. One Greater Mana Potion
#   drunk at Denver to close the far door (x42 -> x41, `EVT-001116`). The S-Rank auction lot (~$109,800,000)
#   now has a private slot, Tuesday 2026-09-29, 14:00 Eastern (`EVT-001118`); Karlin ~$2,310,000 still due
#   Monday 2026-09-28; Tulsa $1,650,000 still owed. Pending payouts stay at 3.
# Prior save (`EVT-001097`-`EVT-001108`): three payouts owed and none yet landed -- Tulsa
#   $1,650,000 (his, next business day), Karlin ~$2,310,000 (his, Monday 2026-09-28), and the
#   267-crystal/3-core S-Rank auction lot filed through Renata at ~$109,800,000, no fixed date.
#   Calumet's $3,300,000 is the GUILD's, not his, and does not enter these figures. One Elixir
#   of an unnamed stat banked from the Karlin boss drop, unconsumed. Pending payouts 0 -> 3.
# Prior save (`EVT-001080`, `EVT-001082`, `EVT-001083`, `EVT-001084`): five backlogged Daily
#   Random Boxes plus the 58th daily's own box (+650,000 g, potions, rune duplicates); both
#   pending payouts land (+$206,570,000 combined); 5x D-Rank armor + 1x C-Rank Longsword bought
#   for Prague's crew (-3,350 g). Net cash $490,828,490.22 -> $697,398,490.22.
# Prior save (`EVT-001065`-`EVT-001077`): West Loop and Pilsen directed-assignment clears
#   (+$25,650,000 combined crystal/core and op fees); Gary's NAMED S-Rank clear (+$8,500,000
#   op fee/correction/bonus); the Detroit HQ campus purchased (-$90,000,000); a combined
#   308-crystal/5-core S-Rank auction lot now pending (~$75.3M estimated); a new rune
#   market-pricing ruling established via Walt Adamik. Net cash $546,678,490.22 ->
#   $490,828,490.22. Gold unchanged. Pending payouts 1 -> 2.
# Prior save (`EVT-001043`-`EVT-001052`): the Winnetka lakefront S-Rank Gate cleared solo
#   (`EVT-001049`): +313 S-Rank crystals, +5 S-Rank cores (both earmarked for the federal lot),
#   a duplicate Stone Skin [S] rune banked. Filed through Renata: $6,500,000 (flat + severity)
#   due 09-21 17:00 CT; lot ~$130,200,000 est., closing 09-24. Cash and gold unchanged;
#   pending payouts 0 -> 2. EUR:USD 1:1 ruled campaign convention (`EVT-001043`).
# Prior save (`EVT-001033`-`EVT-001042`): S-Rank instant-dungeon key bought (-900,000 g) and
#   opened on camera; 394 S-Rank crystals sold (+6,028,200 g) -- gold 349,823,281 ->
#   354,951,481. Sanne Verhoeven paid EUR 80,000, booked $80,000.00 (no rate ever ruled) --
#   cash $540,258,490.22 -> $540,178,490.22. +2 S-Rank cores (200 -> 202), a duplicate Flash
#   Step [S] rune banked, one Greater Mana Potion consumed (40 -> 39).
# This save (`EVT-001021`-`EVT-001032`): a NAMED A-Rank Gate cleared solo (`EVT-001026`), filed
#   through Renata under the standing solo terms: 193 A-Rank crystals + 2 cores + flat fee +
#   severity = +$12,900,000. Cash $527,358,490.22 -> $540,258,490.22. Gold unchanged. No
#   materials or gear moved.
# This save (`EVT-001013`-`EVT-001020`): 100 Elixirs of Intelligence bought for Kane at the
#   System shop (5,000 g each). Gold 350,323,281 -> 349,823,281. Cash and pending payouts
#   unchanged. No materials or gear moved.
# Since Checkpoint 0140 (EVT-000892-EVT-000901): two solo A-Rank Gate clears (one a Red Gate
#   on entry, filed to auction), five S-Rank instant dungeons, a crystal sell-down to the
#   standing 100 floor, and the Denver containment facility purchase. Cash $103,365,490.22 ->
#   $107,615,490.22. Gold 217,267,681 -> 255,018,381. Pending payouts 0 -> 1 (the Red Gate
#   auction, ≈$138,400,000). Beast Core [S-Rank] 128 -> 147.
# Since Checkpoint 0141 (EVT-000902-EVT-000908): the Jiu Valley kill (no loot banked) and the
#   Blue Island S-Rank Gate clear (301 crystals + 1 core filed to auction, flat fee + severity
#   settled same-day). Cash $107,615,490.22 -> $113,115,490.22. Gold unchanged at 255,018,381.
#   Pending payouts 1 -> 2, ≈$259,800,000 combined estimated. Beast Core [S-Rank] 147 -> 148.
# Since Checkpoint 0138 (EVT-000885-EVT-000891): +2 Greater Healing Potions, +1 Greater Mana
#   Potion (Gate-7 boss drop). 208 A-Rank crystals + 1 A-Rank core filed to Renata and sold at
#   the licensed market rate: +$10,525,000.00. Flat fee ($500,000), severity bonus ($2,500,000),
#   and the Indianapolis carryover ($500,000) all settled instantly rather than left pending.
#   Cash $89,340,490.22 -> $103,365,490.22. Pending payouts: 2 -> 0. Gold unchanged. Over 100
#   Earth books delivered to Tolo, removed from dimensional inventory, no longer a held asset.
# Since Checkpoint 0134 (EVT-000853-EVT-000858): no gold or cash moved -- no shop transaction,
#   no sale this span. Three S-Rank instant dungeons (the last three of ten purchased keys),
#   solo, no damage, no mastery credit: +1,178 S-Rank Mana Crystal (banked, not sold), +6
#   S-Rank Beast Core (3 elites + 3 bosses), +3 Greater Mana Potions, an unbound-awakened
#   genuinely-giftable Dagger Mastery [S] rune (boss drop, distinct from the bearer-only
#   duplicate sold last checkpoint), +1 Elixir of a stat (banked, now 3 held). Mana spent:
#   630 (a passenger rift-step to the Prague hotel-room balcony anchor and back, an ordinary
#   intercontinental travelling step -- both anchors already set, no new anchor). Current
#   Funds unchanged below.
# Since Checkpoint 0133 (EVT-000832-EVT-000852): the Vltavska Break's D-Rank loot; Farraday's
#   $2,050,000 GB-14 determination and the GB-14 auction's $49,200,000 share, OBJ-40 closed; a
#   pre-existing S-Rank Mana Crystal stock correction (-300, the true GB-14 grant folded in);
#   the Dagger Mastery [S] rune resale (+900,000g); two S-Rank instant-dungeon batches (5+2,
#   7 of 10 bought keys spent) with three full crystal sell-downs (1,238+1,957+667, ending the
#   S-Rank Mana Crystal line at 0); S-Rank Beast Core reconciled to 69 (49 baseline +15 +5);
#   new gear -- Longsword [S] Boss-Imprinted (Predator/Edge), Mindspun Loop [S] Boss-Imprinted,
#   a second Hunter's Band [S] Boss-Imprinted, an unbound-awakened-giftable Keen Sense rune [A]
#   (A-Rank Gate boss drop, distinct from the sold Dagger Mastery rune and existing banked
#   duplicates); a Stone Skin rune [S] and a Sprint book [S], both duplicate-unbound; +3
#   Greater Healing, +3 Greater Mana Potions; 3 unused S-Rank Instant-Dungeon Keys banked. The
#   A-Rank directed-assignment Gate clear (`OBJ-43`): +250 A-Rank Mana Crystal, +2 A-Rank Beast
#   Core, +$12,750,000.00 licensed sale. Walt Adamik's operation (`OBJ-29`): eight gear pieces
#   and five material lines sold, +$3,581,700.00 -- A-Rank Mana Crystal, A-Rank/B-Rank/C-Rank
#   Beast Core and C-Rank/D-Rank Mana Crystal stock all cleared or reduced, see below. Current
#   Funds updated below.
# Since Checkpoint 0130: EVT-000802-EVT-000803 (the Argyle Street Gate -- 207 A-Rank
#   crystals in, 2 A-Rank Beast Cores in, 197 sold on the licensed USD market +$9,850,000,
#   10 kept, a duplicate Silent Step [B] book), EVT-000808 (Milwaukee -- -$40,000 compensation,
#   no purchase), EVT-000809-EVT-000810 (the Newark Gate -- 104 B-Rank crystals mined and
#   sold in full +$1,144,000, an Instant-Dungeon Key [B] drop), EVT-000812 (the Dormant Core
#   and Frost-fused plating return from Nakamura's custody to Alexander's own inventory; the
#   Heartwood core-mass moves to Corwin Ashvale's custody), EVT-000813 (the Corwin fusion arc
#   -- Warlord's Loop [A] forged from the consumed Warded Vambrace pair, Arcanist Torso/
#   Gauntlets [S] forged from the consumed Watcher Torso/Gale Gauntlets, Heartward Sigil [S]
#   equipped free, the main-hand dagger fused with a consumed Reacharm's Projection Echo, a
#   failed power-ceiling experiment destroyed a plain Quickknife [S] and 2 S-Rank cores, a
#   second plain Quickknife [S] left in Corwin's custody -- total -$13,500 fees, 1 A-Rank
#   Beast Core and 5 S-Rank Beast Cores consumed). Current Funds updated below.
# Since Checkpoint 0128: EVT-000781-EVT-000788 -- the far side: seven unranked mana
#   crystals and a hide/claw sample cut from the Mill pack, phone photos, and an
#   entire alien library stored whole from the Ninth Quiet. No gold, cash, System
#   crystal or System core moved -- see "This Checkpoint's Movement" below.
# Since Checkpoint 0122: EVT-000722 through EVT-000735 -- seven more self-opened S-Rank
#   instant dungeons' worth of crystals, cores, boss drops, and gear (see 100_CHARACTER_
#   SHEET.md's inventory block and 160_CAMPAIGN_CHRONICLE.md for the full breakdown);
#   four crystal sell-downs; nine S-Rank key purchases; thirteen S-Rank skill runes
#   bought and consumed; a gear sweep bought. Current Funds updated below.
# Since Checkpoint 0121: EVT-000714, EVT-000716 (two A-Rank instant dungeons: +403 A-Rank
#   crystals, +5 A-Rank cores, a Mend rune [E-Rank] and a Flash Step skill book [A-Rank]
#   and a Silent Step rune [E-Rank], all unbound and redundant), EVT-000715, EVT-000717
#   (403 A-Rank crystals sold, +1,370,200 g), EVT-000719 (S-Rank instant dungeon, the
#   first bought at his own System Rank: +363 S-Rank crystals, +3 S-Rank cores, a second
#   S-Rank instant-dungeon key unspent; first real damage taken this session, 170 off
#   an elite's counter), EVT-000720 (263 of 363 S-Rank crystals sold at the ruled 15,300 g
#   each, +4,023,900 g; 100 S-Rank crystals remain), EVT-000713 (five CONSULT pieces shown
#   to Priscilla Nakamura, no ownership change), EVT-000718 (Giantslayer equipped, no
#   inventory change)
# Since Checkpoint 0119: EVT-000690 (Runic Key [A-Rank] bought, -250,000 g), EVT-000693
#   (Daily Random Box opened: +150,000 g System gold purse), EVT-000694 and EVT-000696
#   (two A-Rank instant dungeons: +264 A-Rank crystals, +7 A-Rank cores, a Greatarm
#   [A-Rank], a Rupture skill book and a Keen Sense rune, both unbound and intact),
#   EVT-000695 and EVT-000697 (264 A-Rank crystals sold, +897,600 g)
# Since Checkpoint 0118: EVT-000680 (Skill Rune - Mend [D-Rank] and one Elixir of a
#   Stat given to Owen Callahan, both free; no gold or cash moved)
# Since Checkpoint 0117: EVT-000674 (the unclassified warm object, `ENT-000220`, claimed
#   free -- no gold or cash moved), EVT-000676 (the eleven correlation logbooks, `ENT-000221`,
#   taken free -- no gold or cash moved). Both are Special holdings on `100_CHARACTER_SHEET.md`.
# Since Checkpoint 0107: EVT-000616 (five Instant-Dungeon Keys [D-Rank] bought at 11,250g;
#   186 D-Rank crystals, 13 D-Rank cores and five boss drops in), EVT-000618 (136 D-Rank
#   crystals sold 5,440g and the Keen Sense [C-Rank] rune sold 10,000g; the shop-refuses-
#   everything-but-crystals error corrected against Section 12.5's Resale paragraph)
# Since Checkpoint 0106: EVT-000609 (Ada Reyes's $52,500 clears; Adaptive Gale Torso
#   30,000g and Arcanist Feet [A] 24,000g bought), EVT-000611 (Walt Adamik: mana-null
#   disc $1,800 and 400-capacity reservoir $9,000 bought; Bastion Torso reclaimed free)
# Since Checkpoint 0105: EVT-000606 (Ashfield D-Rank crew clear: $4,332 received from
#   the party pool against a $3,000 buy-in for the Seer's Lens, net +$1,332), EVT-000607
#   (Lakefront D-Rank solo clear, unsanctioned, 50:50 with Owen on $16,200 sellable:
#   +$8,100; Channeling Focus kept rather than sold)
# Since Checkpoint 0102: EVT-000588, EVT-000589 (two instances, two keys, two sales),
#   EVT-000592 (the ceiling sweep — see the Ceiling Register below)
# Since Checkpoint 0101: EVT-000583 (the Ironline report leaves the inventory),
#   EVT-000584, EVT-000586 (two Gates), EVT-000587 (sales)
# Since Checkpoint 0100: EVT-000578 (two lots into Nakamura's custody; a monitoring
#   liability opened; no gold or cash moved)
# Since Checkpoint 0099: EVT-000570, EVT-000572
# Since Checkpoint 0098: EVT-000563, EVT-000564, EVT-000565, EVT-000567
# Since Checkpoint 0096: EVT-000548, EVT-000550, EVT-000556, EVT-000557
# Since Checkpoint 0083: EVT-000494, EVT-000496
# Since Checkpoint 0081: EVT-000487
# Since Checkpoint 0080: EVT-000485
# Since Checkpoint 0079: EVT-000479, EVT-000480, EVT-000481
# Since Checkpoint 0078: EVT-000464, EVT-000469, EVT-000472, EVT-000473, EVT-000474, EVT-000476
# Since Checkpoint 0076: EVT-000446, EVT-000447
# also updated by EVT-000285, EVT-000300, EVT-000323, EVT-000324, EVT-000326, EVT-000327, EVT-000328, EVT-000339, EVT-000342, EVT-000343
# Checkpoint 0065: EVT-000358, EVT-000359
# Since Checkpoint 0069: EVT-000398, EVT-000399, EVT-000400, EVT-000401, EVT-000402, EVT-000403
# Since Checkpoint 0071: EVT-000407, EVT-000410, EVT-000411
# Since Checkpoint 0072: EVT-000415, EVT-000416, EVT-000417
# Since Checkpoint 0074: EVT-000420, EVT-000422, EVT-000423, EVT-000424, EVT-000425
# Since Checkpoint 0075: EVT-000428, EVT-000429, EVT-000430, EVT-000431, EVT-000432, EVT-000433, EVT-000434, EVT-000435
```

---

## Stripped metadata asides

1 ruling-provenance and record-keeping asides removed from the live ledger's text at the owner's direction, kept here verbatim. Every Event they cited is still cited in place.

- *ruling aside:* (owner ruling `EVT-001043`)
