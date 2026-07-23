# Campaign Chronicle - Prototype Beta

**Campaign:** Prototype Beta - **World:** Verra
**Ledger:** Canonical Record (`011` Section 8) preserving campaign events in durable narrative form. It holds the campaign's Events and their narrative record.

---

## Record

```yaml
id: REC-000023
canonical_record: REC-000023
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000014
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - EVT-000014
  - EVT-000015
  - EVT-000016
  - EVT-000017
```

---

## EVT-000014 - Kael Travis Arrives in Halden

```yaml
id: EVT-000014
canonical_record: REC-000023
schema_version: "0.1.2"
status: active
provenance:
  source: confirmed-custom-protagonist-proposal
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
kind: arrival
importance: archived
participants:
  - ENT-000021
  - ENT-000002
description: "Kael Travis, a wandering soldier and sword-for-hire, arrives in Halden after Ilse Varn's public execution, seeking paid armed work and a more stable position amid fever, institutional tension, and the Order's reinforced civic authority."
```

---

## Chronicle

**Year 312 RR, early summer - Arrival.**
Kael Travis reaches Halden after the Varn affair has become public warning and recent history. The town is uneasy: fever is active in the lower quarters; the Athenaeum's validated fever finding remains condemned by the Order; the Order's authority has been publicly reinforced by the execution of an outsider who attacked its Prelate.

Kael arrives not as a scholar, physician, cleric, guildsman, or local citizen, but as a professional blade seeking work and something more stable than another road contract. His skill is real. His local standing is not.

No gameplay scene has yet opened.

---

## EVT-000015 - Failed Merchant-Escort Contact

```yaml
id: EVT-000015
canonical_record: REC-000023
schema_version: "0.1.2"
status: active
provenance:
  source: live-play
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
kind: social-conflict
importance: notable
participants:
  - ENT-000021
  - ENT-000023
description: "Kael pursued a merchant escort notice through Tollen Var, described himself as 'the man who kills riots,' alarmed Tollen, then became angry, rejected the contact, scattered Tollen's account books, and left the market exchange."
```

**Year 312 RR, early summer - First job contact.**
Kael asked after a merchant escort job and found Tollen Var at the market exchange. His attempt to sell himself by saying he kills riots failed to reassure the merchant contact. Kael's temper took the conversation over; he told Tollen he did not deserve his skills, pushed/scattered the man's books, and walked away while the market noticed.

## EVT-000016 - Order Hospice Hiring and Briefing

```yaml
id: EVT-000016
canonical_record: REC-000023
schema_version: "0.1.2"
status: active
provenance:
  source: live-play
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
kind: employment
importance: major
participants:
  - ENT-000021
  - ENT-000004
  - ENT-000024
  - ENT-000025
description: "Kael accepted day-hire night security work for the Order hospice lower passage, received rules from Sister Avel, peace-bound his sword, inspected the lower passage before sundown, and began first watch with Brant."
```

**Year 312 RR, early summer - Lower passage.**
Kael approached the Order seeking good-paying dangerous work. He accepted lower-passage hospice security: no steel unless ordered or life plainly at risk, no striking supplicants for insults, no forbidden fever doctrine talk, no wandering inside the hospice, obey clergy, hold family and patient lines. Sister Avel issued badge-cloth/ember token and a red peace-binding for the sword, showed the marked fever door, receiving line, stair, bench, side window, and bell cord. Brant took Kael on first watch.

## EVT-000017 - First Watch, Fever-Door Incident, and Wrong-Stair Alert

```yaml
id: EVT-000017
canonical_record: REC-000023
schema_version: "0.1.2"
status: active
provenance:
  source: live-play
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
kind: duty-crisis
importance: major
participants:
  - ENT-000021
  - ENT-000024
  - ENT-000025
  - ENT-000026
  - ENT-000027
  - ENT-000028
  - ENT-000029
description: "During Kael's first lower-passage watch, he held the line against Lysa Vale, reported an unidentified wrong-stair man, blocked Edrin Vale's attempted exit from the fever room, suffered possible fever-contact exposure, washed under Sister Avel's direction, and remained on post while Avel prepared to lock the stair."
```

**Year 312 RR, early summer - First watch crisis.**
Lysa Vale came to the receiving line with a shivering boy and asked to see her husband, Edrin. Kael repeated Brant's rule - no family past the line - and refused passage; the woman stepped back to seek a sister. Brant and Kael discussed fever precautions: distance, no touching the sick unless ordered, wash with vinegar when told, avoid lower-ward pumps, avoid shared cups and eating in the passage, and report symptoms.

A hooded man came down the wrong stair, claimed he was looking for Sister Avel, looked toward the marked fever door, and retreated when ordered away. Avel sent Brant and Caldus to check quietly. While Kael was alone at the line, a young attendant mishandled a basin at the fever door and Edrin Vale tried to push out toward Lysa's voice. Kael's first physical block failed to control the whole doorway; wash-water spilled, Edrin grabbed Kael's sleeve and coughed near/against his front. Kael then intimidated Edrin back into the room and the attendant secured the door.

Sister Avel treated the contact seriously. Kael reported sleeve contact and coughing uncertainty. He washed hands, wrists, nails, and forearms with vinegar. He removed the contaminated shirt carefully, without new neck or jaw exposure, and kept the shirt aside. Avel told him to keep the line, not touch his face, not eat in the passage, and change if he has a clean shirt when Brant returns. Brant and Caldus returned reporting that no hooded man had been found on the upper stair and no main-door exit had been seen. Avel concluded the wrong-stair man may still be inside and asked Kael whether he can keep the line with Brant while she locks the stair.
