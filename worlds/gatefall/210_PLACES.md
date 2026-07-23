# Places — Gatefall

**Ledger:** Canonical Record (`011` Section 8) holding Gatefall's Settlement/Kingdom and Place entities for Chicago and Prague.
**Status:** Active — instantiated as canonical world content (2026-07-22).

---

## Record

```yaml
id: REC-000062
canonical_record: REC-000062
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000087
  - ENT-000088
  - ENT-000089
  - ENT-000090
  - ENT-000091
  - ENT-000092
  - ENT-000093
  - ENT-000094
  - ENT-000095
  - ENT-000096
  - ENT-000097
  - ENT-000098
```

---

# Chicago

## Chicago

Ten years of Gate exposure have grown a second skyline over the first: the Loop's towers now share the horizon with the graded warning beacons the BGM mounts over an active detection, and the sound of a distant siren no longer turns a single head on Michigan Avenue. Chicago is a top-five Gate city in a country that measures cities that way, and it wears the fact plainly — clearance-contract auction results run alongside sports scores on the evening news, and every school still runs the same evacuation drill it ran the year after the Damen Avenue Break.

A hunter working Chicago moves through a stratified economy: Horizon Guild's public-market polish at the top, Ironline Guild's blue-collar recruiting below it, and beneath both the Windy City Hunters Coalition, the freelance co-op that gives an unaffiliated E-rank somewhere to post a resume and pick up a party. BGM Region V grades every Gate the city produces, runs the auction that decides who clears it, and keeps the books on all of it. The lakefront and the L corridors are the geography everyone in the trade has learned to read like weather — where the density runs high, where the timers run short, and where the next call is most likely to come from.

```yaml
id: ENT-000087
canonical_record: REC-000062
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Settlement/Kingdom
subtype: city
scope: regional
lifecycle: active
aliases:
  - name: "Chicago"
    quality: current
canonical_state:
  territory: "Illinois's Lake Michigan shoreline city; anchor of the BGM's Region V district, spanning the Loop, the lakefront parks, and the L rail network's Gate-exposed corridors."
  population: "~2.7 million residents; ~1,200 licensed hunters, host to 2 of the US's 11 resident S-ranks (Anchor A9)."
  conditions: "A top-five US Gate city under sustained high break-rate pressure; corporate guild capitalism (Horizon, Ironline) sits over a large freelance floor, all graded and auctioned through BGM Region V."
```

---

## Lakefront Gate Corridor

The strip of shoreline running from the Museum Campus north through Lincoln Park is the single most Gate-dense stretch of ground in the city, and it looks nothing like a warzone for it — joggers, tour boats, and beach crowds share the parkland with orange BGM cordon tape on any given afternoon, moved and re-strung around whatever's newest. A detection here can open over a parking lot, inside a boathouse, or a few feet off the bike path, and the corridor's evacuation choreography has been drilled into the neighborhood for a decade: posted routes, staging areas on the museum plazas, appraisal-cell vans parked at a practiced distance from the mouth.

A hunter here checks the BGM grading board before anything else — multiple active detections most weeks, mostly E through C, with the occasional B-grade spike that pulls major-guild bids away from smaller contracts elsewhere in the city. Freelance parties assemble at the food-truck row that's grown up around the Coalition's usual staging point, trading intel on which Gate's timer is closest and whose contract still needs bodies. The corridor has claimed hunters who treated its familiarity as safety; an empty-looking Gate here is exactly as dangerous as one anywhere else, and the old-timers say so to every new face who shows up expecting a park.

```yaml
id: ENT-000089
canonical_record: REC-000062
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Place
subtype: gate-corridor
scope: local
lifecycle: active
aliases:
  - name: "Lakefront Gate Corridor"
    quality: current
canonical_state:
  location: "The Lake Michigan shoreline from the Museum Campus north through Lincoln Park, Chicago."
  gate_density: "Highest sustained density in the city; the BGM grading board posts multiple active detections most weeks."
  contract_grade_range: "Predominantly E-C, with periodic B-grade detections that draw major-guild bids."
  hazard_notes: "Public parkland means cordons and evacuation routes are in constant contention with civilian foot traffic; familiarity with the ground is not a substitute for grading discipline."
```

---

## Red Line Corridor

The CTA Red Line runs the length of the city, and the Gates that open along it — in alley mouths, parking structures, subway mezzanines, the occasional gap between rowhouses — are the low-rank contract floor Chicago's newest licenses cut their teeth on. There's no polish to this district: a detection gets a folding-table staging point and a hand-lettered contract sheet as often as a BGM van, and the majors almost never bother bidding it. It is Ironline Guild's home turf for recruiting and the district where the Windy City Hunters Coalition posts the bulk of its freelance work.

A hunter working the Red Line Corridor is usually here to build a track record on volume — E- and D-grade clears, contract after contract, the unglamorous work that gets a license taken seriously without ever making the news. The pay is thin and the parties are ad hoc, assembled on a platform or in a coffee shop off a Coalition posting an hour before the timer's due. It is also where a hunter is most likely to first cross paths with an Ironline scout, because Ironline built its whole recruiting pitch on showing up exactly here, for exactly this kind of hunter.

```yaml
id: ENT-000090
canonical_record: REC-000062
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Place
subtype: contract-district
scope: local
lifecycle: active
aliases:
  - name: "Red Line Corridor"
    quality: current
canonical_state:
  location: "Along the CTA Red Line from the South Side through downtown to Uptown, Chicago."
  gate_density: "Frequent low-grade detections in alleys, parking structures, and subway mezzanines."
  contract_grade_range: "E-D almost exclusively; the majors rarely bid it."
  economic_role: "The city's low-rank contract floor — Ironline Guild recruiting territory and the bulk of Windy City Hunters Coalition freelance postings."
```

---

## Cicero Scar

The Cicero Scar sits behind chain-link and federal signage on the near-west border, a cordoned tangle of rowhouses and light industry that a break tore through in the chaotic first months, before the Damen Avenue protocols existed to contain it properly. The blocks nearest the fence have been partly reclaimed — boarded, graded safe for BGM survey work, occasionally walked by a licensed escort team — but the core never fully reverted. Structure inside still carries the dungeon's warp: hallways that don't match the original floor plans, growth that isn't native to Illinois, ground that reads wrong to a Perception-awakened who gets close enough to try.

A hunter's business here is almost always BGM-contracted survey or containment work, never a clearance in the ordinary sense — there is no boss left to kill, only a wound the city fenced off and has spent a decade managing rather than healing. The perimeter sensors log periodic mana spikes that never make it into any public report, readings BGM staff wave off in the field and never quite explain on the record. Survey teams trade rumors about what's actually found on the rare deep pass — beast remains with old, healed wounds that shouldn't exist on a thing that came out of a Gate, scarring that doesn't match anything in the bestiary. Nobody official will confirm it. Nobody who's done the walk denies hearing it said.

```yaml
id: ENT-000091
canonical_record: REC-000062
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Place
subtype: break-scar
scope: local
lifecycle: declining
aliases:
  - name: "the Cicero Scar"
    quality: current
canonical_state:
  location: "A cordoned residential and light-industrial swath in Cicero, on Chicago's near-west border."
  quarantine_status: "Federally cordoned since the break; fenced and patrolled, entry restricted to licensed BGM-escorted survey teams."
  conditions: "Partly reclaimed at the edges; the core blocks remain an unmapped tangle of dungeon-warped structure that never fully reverted when the Gate closed."
  anomaly_readings: "Perimeter sensors log periodic unexplained mana spikes, unresolved for years and never published."
```

---

## Horizon Tower

Horizon Guild's Chicago headquarters is a Loop high-rise that reads more like an investment bank than anything Gate-related until the lobby's trophy wall gives it away — a run of mounted, appraisal-tagged cores behind glass, each with a small plaque naming the clear and the grade. The ground floors are public: a recruitment desk that fields walk-in inquiries from newly measured awakened, a media room that hosts the quarterly investor calls, waiting areas where guild agents meet freelancers about contract terms. It is the most polished building in the city's hunter economy, and it is built that way on purpose.

Above the public floors it stops being public. Contract negotiation suites, the guild's internal grading lab, and a private training level reserved for the ace — one of Chicago's two resident S-ranks — are all badge-only, and the elevator bank makes sure of it. A hunter's business at Horizon Tower is usually one of two things: getting recruited, which means an interview, a re-assessment offer, and a contract with real money behind it, or negotiating a contract as an outside party, which means sitting across a table from people whose job is to make Horizon's number look better than the one you walked in with.

```yaml
id: ENT-000092
canonical_record: REC-000062
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Place
subtype: guild-headquarters
scope: local
lifecycle: active
aliases:
  - name: "Horizon Tower"
    quality: current
canonical_state:
  location: "A high-rise in the Loop, Chicago's financial district."
  role: "Corporate headquarters of Chicago's top-tier publicly traded guild; recruitment, contract negotiation, and the trophy floor are all here."
  access: "Public lobby and recruitment desk on the ground floors; upper contract floors and the ace's private training level are guild-badge only."
```

---

## BGM Region V Field Office

The Region V office is where Chicago's Gate economy actually gets processed: a federal building near the Loop with a licensing counter that runs a line most mornings, appraisal cells humming in back rooms, and an auction floor where the day's clearance contracts get bid out to guilds and freelancers under a clock nobody in the room controls. The public part of the building feels like any DMV with worse stakes — forms, queue numbers, a wall of grade postings updated through the day. The rest of it doesn't feel like anything civilian at all.

A hunter comes here to get licensed, to get re-graded if a performance review flags them for it, or to sit in the gallery during an auction they've bid on. Behind the counters, credentialed staff run the appraisal cells that read a beast, a hunter, and a sword all on the same band, log every core that crosses the evidence-locker threshold, and decide — more often than the public hears about — which incidents get quietly opened as investigations. The building doesn't editorialize. It just keeps the numbers, and everyone in the trade knows the numbers are the only thing here that can't be argued with.

```yaml
id: ENT-000093
canonical_record: REC-000062
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Place
subtype: field-office
scope: local
lifecycle: active
aliases:
  - name: "BGM Region V Field Office"
    quality: current
canonical_state:
  location: "A federal building near the Loop, Chicago."
  role: "Regional seat of Gate grading, licensing intake, and the clearance-contract auction for the Midwest."
  access: "Public licensing counters on the lower floors; grading labs, evidence lockers, and the auction floor restricted to BGM staff and credentialed bidders."
```

---

# Prague

## Prague

Prague runs smaller and tighter than Chicago in every way that matters to a hunter, and the city knows it: with only ~350 licensed hunters working the whole capital, a new face who clears above their license gets noticed inside a week, not a season. The historic center is UNESCO-protected, which means every Gate that opens inside the old walls comes with a legal duty attached — clear it without wrecking eight hundred years of stonework, or answer for the damage — and that single fact shapes contract pricing, guild reputation, and who gets hired for what more than almost anything else in the city.

Karlov Guild sits at the top of the local hierarchy by relationship rather than money — outspent by Horizon Europe, Brandhof, and Zenith on every hard contract, but woven into the city's institutions the way an old bank is. Beneath it, the metro tunnels carry the low-rank contract floor and the Staroměstská Lodge gives the unaffiliated somewhere to start. The Czech Gate Administration grades and licenses all of it, underfunded and proud, and runs its entire quiet strategy around one fact that outweighs everything else on this list: the country has exactly one S-rank, and the CGA intends to keep it that way.

```yaml
id: ENT-000088
canonical_record: REC-000062
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Settlement/Kingdom
subtype: city
scope: regional
lifecycle: active
aliases:
  - name: "Prague"
    quality: current
canonical_state:
  territory: "Capital of the Czech Republic on the Vltava; a UNESCO-protected historic core ringed by outer districts, seat of the CGA."
  population: "~1.3 million residents; ~350 licensed hunters — small enough that every B-rank is a known name (Anchor A9)."
  conditions: "Scrappier and more intimate than Chicago by design; heritage-clearance law shapes every contract in the old center, and the CGA's entire quiet strategy runs on keeping its one S-rank from leaving."
```

---

## Old Town Gate Cluster

Staré Město's cobbled squares and narrow lanes are the most photographed real estate in the country, and they are also a working Gate site: detections here open in courtyards behind Baroque façades, under arcades, once inside the vaulted cellar of a building older than the country's current borders. The **UNESCO heritage-clearance constraint is not a suggestion** — a guild that clears a Gate here and damages protected structure in the process answers for it, in money and in reputation, and that legal duty is priced into every contract before a single hunter steps through a threshold.

A clearance in the Old Town Gate Cluster runs slower and more expensive than the same grade anywhere else in Prague: containment tarping to protect stonework, routes planned around what can and can't be touched by a stray attack, tourist crowds to move without panicking a street full of visitors who've never seen a cordon before. It favors guilds with dedicated non-destructive doctrine over raw force, which is most of why Karlov Guild — old, careful, and locally connected — still wins contracts here that its bank balance shouldn't let it compete for.

```yaml
id: ENT-000094
canonical_record: REC-000062
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Place
subtype: heritage-gate-site
scope: local
lifecycle: active
aliases:
  - name: "Old Town Gate Cluster"
    quality: current
canonical_state:
  location: "Staré Město, Prague's UNESCO-protected historic center."
  heritage_clearance: "Every clearance in the cluster operates under a legal duty not to damage protected structures; guilds that breach it answer for it, and contract pricing here reflects the constraint."
  gate_density: "Moderate but persistent; the historic street plan turns each detection into a logistics problem as much as a combat one."
  contract_grade_range: "D-B; the heritage constraint keeps most low-rank freelancers out and favors guilds with dedicated non-destructive clearance doctrine."
```

---

## Metro Corridor

Prague's metro — lines A and B run the length of the low-rank contract floor — produces Gates the way the Red Line does in Chicago: in service tunnels, on disused platform ends, once behind a maintenance door that hadn't been opened in a decade before a detection forced it. It's unglamorous, poorly lit, and exactly where the Staroměstská Lodge sends its freelance postings, because it's the work an unaffiliated hunter can get without a name yet.

The tunnel geometry is the corridor's real hazard: evacuation routes are narrower and fewer than anywhere else in the city, and CGA graders cut the timer-margin tighter here than they would for an identical Gate in the open, because a break underground with one exit behaves nothing like a break in a park. A hunter working the Metro Corridor learns fast to read a station's layout before the contract, not during it — which platform has a second stair, which service tunnel dead-ends, and which contract sheet is worth the walk down.

```yaml
id: ENT-000095
canonical_record: REC-000062
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Place
subtype: contract-district
scope: local
lifecycle: active
aliases:
  - name: "Metro Corridor"
    quality: current
canonical_state:
  location: "Prague's metro tunnels and station complexes, primarily lines A and B."
  gate_density: "Frequent low-grade detections in service tunnels and disused platforms."
  contract_grade_range: "E-D; the city's low-rank contract floor, worked mainly by Staroměstská Lodge freelancers."
  hazard_notes: "Tunnel geometry limits evacuation routes; timer margins are graded tighter here than anywhere else in the city."
```

---

## Libeň Scar

Across the Vltava from the tourists and the tarped cellars, Libeň carries the scar the rest of Prague tries not to think about: an outer-district break the CGA cordoned and has managed, not healed, for years. Reclaimed rowhouses ring the fenced perimeter, ordinary enough from the street, but the core the Gate left behind never fully returned to normal ground — survey teams who've made the deep walk describe geometry that doesn't sit right and won't say much more than that on the record.

A CGA analyst worked out of a trailer near the Libeň perimeter for the better part of a year, cross-referencing the scar's sensor logs against the national break-frequency numbers nobody outside the agency gets to see. Word among the survey teams is that whatever pattern that analyst was charting, it stopped being routine — and the analyst stopped taking calls from anyone outside the agency not long after. The CGA has never issued a public statement about the trailer, the analyst, or what was in the file. A hunter's business at the Scar is CGA-contracted containment and survey work only; there is nothing left here to clear.

```yaml
id: ENT-000096
canonical_record: REC-000062
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Place
subtype: break-scar
scope: local
lifecycle: declining
aliases:
  - name: "the Libeň Scar"
    quality: current
canonical_state:
  location: "An outer district across the Vltava from the historic center, Prague."
  quarantine_status: "Cordoned by the CGA since the break; entry restricted to licensed survey teams."
  conditions: "Partly reclaimed rowhouses ring an unmapped core the Gate's collapse never fully returned to normal ground."
  anomaly_readings: "Perimeter sensors log intermittent readings the CGA has never published an explanation for."
```

---

## Karlov House

Karlov Guild runs out of a converted townhouse near Old Town rather than a tower, and the choice is deliberate — the ground-floor offices, where contract partners and city liaisons are received, look like they belong to a family firm because they do. Framed photographs run the length of the main hallway: guildmasters going back to the Gatefall itself, contracts signed with city officials whose grandchildren now sit on the other side of the same table. It is the single clearest expression of what "old bank" means as a description of this guild.

The guildmaster's rooms and the family archive occupy the upper floor, guild-only, and that is where the decisions that actually matter get made — which contracts to fight the internationals for, which to concede, and how far the relationships built over a decade can be leaned on when Brandhof or Zenith outbids Karlov on paper. A hunter doing business at Karlov House downstairs is negotiating a contract or being recruited; a hunter who ever gets invited upstairs has become someone the guild has decided is worth the family's trust.

```yaml
id: ENT-000097
canonical_record: REC-000062
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Place
subtype: guild-headquarters
scope: local
lifecycle: active
aliases:
  - name: "Karlov House"
    quality: current
canonical_state:
  location: "A converted townhouse in Prague's historic center, near Old Town."
  role: "Headquarters of Karlov Guild, the city's dominant but not richest guild; generations of municipal relationships are managed from here."
  access: "Ground-floor offices open to contract partners and city liaisons; the guildmaster's rooms and family archive are upstairs, guild-only."
```

---

## CGA Headquarters

The Czech Gate Administration works out of a government building in central Prague that is smaller, older, and more tired-looking than its American counterpart, and everyone who works there will tell you the budget shows. The public counters — licensing intake, grading appeals, the posted contract-auction results — run the same paperwork-heavy process as Region V's, just with fewer staff covering it and a longer line for it.

What sets the building apart is upstairs: a small, closely guarded liaison office that exists for exactly one purpose, managing the country's sole S-rank — the postings they'll take, the guilds they'll be lent to, the pressure Zenith and the others keep applying to pull them abroad. Every hunter in Prague understands, even if they've never set foot past the public counters, that this building's real job isn't grading Gates. It's holding onto the one asset that makes the whole country's Gate policy possible.

```yaml
id: ENT-000098
canonical_record: REC-000062
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Place
subtype: field-office
scope: local
lifecycle: active
aliases:
  - name: "CGA Headquarters"
    quality: current
canonical_state:
  location: "A government building in central Prague."
  role: "Seat of the Czech Gate Administration — national licensing, grading, and the quiet strategy of keeping the country's one S-rank home."
  access: "Public counters for licensing and grading; the S-rank liaison office and CGA diplomatic correspondence are restricted."
```

---

# Global

Chicago and Prague are written to run independently — different agencies, different guilds, different pressures — but they are not written as unrelated. Horizon Guild's European arm keeps a Prague branch that is steadily hiring away local talent, the same guild whose Chicago tower anchors the other side of this ledger; it is the one institutional thread the setting deliberately runs between both cities, so that a figure, a contract, or a rumor started in one can plausibly surface in the other. No Place or Settlement/Kingdom entity is allocated to this section; it exists to hold that framing note rather than any object of its own.

One further global reference lives in the World Bible rather than here: **the Jiu Valley Exclusion**, the Romanian region lost to an S-class dungeon break in 2020 and quarantined since (`200_WORLD_BIBLE.md` Section 5). It is authored as world-layer texture — the shared catastrophe every serious hunter can name, and a standing raid-arc destination — and, like this section, is deliberately allocated no Place entity.
