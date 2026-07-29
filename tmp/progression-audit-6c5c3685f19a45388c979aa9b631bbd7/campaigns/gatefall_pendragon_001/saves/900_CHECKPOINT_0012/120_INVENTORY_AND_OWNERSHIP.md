# Inventory and Ownership - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall
**Ledger:** Canonical Record (`011` Section 8) holding Alexander's individually-tracked resources. Generic goods are noted as quantities without identifiers (`011` Section 11).

---

## Record

```yaml
id: REC-000076
canonical_record: REC-000076
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000056
  event_time: "2026-07-22"
  record_time: "2026-07-23T00:00:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Individually-Tracked Items

### E-Grade Gear (Purchased 2026-07-23, Ironbound)

- **Reinforced Leather Jacket [E]** — **Bastion torso armor · Good · Vitality +1 · physical reduction 3%**. Purchased from Ironbound for $800 (`EVT-000058`); equipped on torso. Protective jacket with shoulder and rib reinforcement.
- **E-Grade Quickknife** — **Quickknife · Good · off hand · Agility +2 · armed strike ×0.75**. Purchased from Ironbound for $500 (`EVT-000058`); equipped off hand. E-grade short blade, approximately 18 inches, balanced for close-quarters combat.
- **Reinforced Gauntlets [E]** — **Bastion hands armor · Good · Vitality +1 · physical reduction 3%**. Purchased from Ironbound for $600 (`EVT-000058`); equipped on hands. Metal-knuckled hand protection fitted for close combat.
- **Shin Guards [E]** — **Bastion legs armor · Good · Vitality +1 · physical reduction 3%**. Purchased from Ironbound for $100 (`EVT-000058`); equipped on legs.

### Boss Drop (Red Line Corridor, 2026-07-24)

- **Armored Greave [E]** — **Bastion legs armor · Good · Vitality +1 · physical reduction 3%**. Grip-soled, joint-hinged leg armor salvaged from the Red Line Corridor boss (`EVT-000059`), suited to broken/vertical terrain. Stored and **not equipped** because the legs slot is occupied by the Shin Guards; whether it is Alexander's to keep or goes to the pooled split remains undecided (`EVT-000060`).

### Mining Tool (Purchased 2026-07-25, Ironbound) — **BROKEN**

- **Resonance Chisel** — **Broken; applies no line and is unusable** (Profile Section 11.5, Condition). Basic-model harvest tool, purchased from Diane at Ironbound for $80 (`EVT-000063`). Its head sheared from the shaft on a natural critical fumble while Alexander pushed an exhausted seam near the Ashfield Gate's aperture (`EVT-000080`, Section 4.8 — repeated attempts wear tools). Retained as scrap; replacement costs another $80 at Ironbound. It served two C-grade harvest jobs and part of a third clear before failing.

### Ashfield Gate Haul (2026-07-28) — **crew loot, unsplit and unsold**

Taken from the cleared Ashfield Gate (`EVT-000080`) and held pending the crew split. **None of this is yet Alexander's individual property**, and by the crew's own agreement none of it may be sold before they reconvene: the material is simultaneously the payout and the evidence of the Gate's true grade.

- **16 C-crystals** — five taken from the common beasts killed inside, eleven mined (4 by Alexander, 6 by the crew, 1 hand-worked after the chisel broke). At licensed C rates (~$2,500 each) the crystal pool is ≈$40,000.
- **2 C-cores** — one from the elite, one extracted from the boss by Alexander personally (strong success, clean and uncracked). At licensed C rates (~$6,250 each), ≈$12,500.
- **Longshot [C]** — Gate-forged mana-bearing bow, the boss drop (d100 6 → equipment; d20 7 → Longshot). **Perception +5, Agility +2, weapon power 7, ranged armed strike ×0.75, two-handed.** Julian offered it directly to Priya as the better shot; Alexander overruled him — it enters the split or is bought out of it. Ownership undecided.

Standard Gatefall party split applies (Profile Section 13): 10% leader's share off the top to Priya Okafor, the remaining 90% divided equally among all five. Not yet computed or filed.

---

## Generic Holdings

- **$1,920 USD** in cash/checking (was $2,000; $80 spent on the resonance chisel on 2026-07-25). Not docked for tuition; the debt is tracked as a monthly liability, below.
- Active BGM-issued hunter license, E-rank card (~10 days old as of 2026-07-24) — the credential, not a weapon or tool.
- Ordinary krav maga training gear (wraps, mouthguard, gym clothes) and a modest personal wardrobe.
- Standard studio apartment lease in Chicago (rent per Profile Section 12.4, ≈$1,400/month — an ordinary cost of living, not separately tracked as an asset).

System-shop gold (22,520 g, unchanged — nothing bought or sold this clear), stored potions (**9 lesser healing potions**, one having been given to Priya Okafor during the boss fight, `EVT-000079`), antidotes, the E instant-dungeon key, the unequipped **Channeling Focus [E]** won from a Daily Random Box (`EVT-000075`), the equipped **C-grade Quickknife** (**Good · main hand · Agility +7 · weapon power 7 · armed strike ×0.75**), the recovered **E-grade Quickknife** (off hand — pulled back out of the boss's shoulder seam at the clear), and the current Daily Premium cycle are Bearer state tracked in `100_CHARACTER_SHEET.md`'s `system_state` (Profile Sections 11.5, 12.5, 12.9, 14.1). Profile 1.2 normalization and loadout state were adopted under `EVT-000072`, the current premium offer grades were migrated under Profile 1.3 in `EVT-000073`, and Profile 1.4 added weapon power under `EVT-000074`; no ownership or provenance changed.

## Pending Income (not yet received)

- **≈$2,313** — Alexander's equal-fifth share of the Red Line Corridor contract's closing pool ($10,000 D-posted contract payout + ≈$2,850 in beast-drop/mined-crystal and core sale value at licensed rates, standard 10%-leader/90%-equal split). Filed with the Windy City Hunters Coalition and BGM Region V on 2026-07-25; Kesha Morrison quoted 1–2 business days for both the contract payout and Tanya Voss's crystal sale to clear (`EVT-000060`). Not counted in cash on hand above until it actually posts.
- **≈$5,700** — Alexander's estimated harvest-share cut of the Cicero Scar C-grade job's declared pool (7 declared C-crystals of 19 total from the harvest crew, weighted share of the harvest crew's 20% cut of a ≈$77,500 total declared pool value — a Runtime ruling, Section 20.3, no authored harvest-share formula exists yet). Filed with Ada Reyes (`ENT-000134`) on 2026-07-25; payout timeline "a couple days" (`EVT-000063`). Not counted in cash on hand above until it posts.
- **≈$24,663** — Alexander's harvest-share cut of the Frozen Gallery C-grade job's declared pool, computed under the now-authored standard support/harvest contract terms (World Rule Profile Section 13.2, 20% of the total declared pool, output-weighted by crystals personally mined): 41 of the 5-hunter harvest crew's 91 declared C-crystals, against a $273,750 total declared pool (91 mined + 11 beast-drop C-crystals + 3 C-cores at licensed rates). Filed at declaration on 2026-07-26 (`EVT-000068`); payout timeline 1–2 business days, consistent with the prior two jobs. His largest single payout to date. Not counted in cash on hand above until it posts.

## Standing Liability

- **University tuition debt:** $30,000 outstanding principal, **$400/month minimum payment**, recorded at this initialization checkpoint per Profile Section 20.3. This is a pressuring monthly obligation against his income, not a deduction from starting funds.
