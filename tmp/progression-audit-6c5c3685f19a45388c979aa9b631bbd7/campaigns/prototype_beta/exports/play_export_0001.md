# Prototype Beta Play Export - Through Checkpoint 0001

user: Start Chronicle Engine gameplay — NEW campaign, second protagonist, in the existing persistent world of Verra. REPOSITORY ACCESS (do this first, on your own initiative): The Chronicle Engine repository (GitHub: MartinAlexanderKrul/ChronicleEngine) is connected to you as readable/writable files. Load what you need directly. If your first view shows only a README or a partial listing, that is a cold-start artifact, not a blocker — open and READ file contents (a folder listing is not a file read). Report a read blocker only after an actual read attempt errors, naming the file. Do not make me correct you before you try. Do NOT assert you can write. VERIFY it: before any canonical play, do a preflight write — create and read back a disposable file under .tmp/preflight/prototype_beta/. Only an actual failed write means you cannot persist canon. LOAD AND FOLLOW (confirm versions so I know they're current):

* docs/GAMEPLAY_START_GUIDE.md (expect v2.4 or later)
* docs/AI_GAMEPLAY_RUNTIME_PROFILE.md (expect v1.19 or later)
* engine/010_ENGINE_RULES.md Sections 4 (Action Resolution) and 6 (Conflict/Combat/Injury & Death)
* engine/011_ENGINE_DATA_MODEL.md Section 1 (identifiers and the registry)
* worlds/verra/ — the full current world canon (places, institutions, figures, knowledge subjects, and whatever world/historical state the world layer currently records) Follow the Runtime Profile and the resident gates in the Start Guide as written — repository loading, action resolution with modifier application, canon grounding, and checkpoint completeness. Load them; do not re-derive them from memory. THIS IS A NEW CAMPAIGN IN AN EXISTING WORLD:
* Create a new campaign instance at campaigns/prototype_beta/. Do NOT reuse or modify campaigns/prototype_alpha/ — that is a closed, terminated campaign.
* Use the custom-character path. Gather only the minimum choices from me, then derive and SHOW the proposed protagonist: identity, capabilities, starting knowledge states, inventory, relationships, credentials, objectives, social position, and entry point.
* Build the protagonist's starting knowledge and the world situation ONLY from current Verra world canon. Inherit whatever the world layer records; do not invent world history, and do not carry over anything that is not actually written in worlds/verra/.
- Do not mutate the repository until I confirm the complete proposal. IDENTIFIER DISCIPLINE (this has been missed repeatedly — enforce it): Every new persistent object (ENT/REC/EVT/REL) must be allocated in system/ID_REGISTRY.md by advancing that kind's high-water mark, in the same change that creates it. At every checkpoint, system/ID_REGISTRY.md is a REQUIRED write target and must be read back like any other. PLAYER OOC IS PRESERVED: I may send out-of-character queries prefixed with // (for example "// what is the character's knowledge state on the fever?") to inspect engine state for testing. Honor them; they do not open or advance the scene. GO: Load canonical state, confirm the document versions and that write capability is verified, present the custom-character proposal for the new Verra protagonist, and wait for my confirmation before opening the first scene.

narrator: Loaded and followed the required repository sources. Confirmed `docs/GAMEPLAY_START_GUIDE.md` v2.4 or later, `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` v1.19 or later, `engine/010_ENGINE_RULES.md` Sections 4 and 6, `engine/011_ENGINE_DATA_MODEL.md` Section 1, and current Verra world canon under `worlds/verra/`. Performed preflight write/read-back under `.tmp/preflight/prototype_beta/`; write capability verified. Presented a custom-character proposal for the second protagonist in Verra, with no canonical mutation before confirmation.

user: **CUSTOM PROTAGONIST PROPOSAL: KAEL TRAVIS**
Based on your choices, I'm deriving a complete starting state for Kael in Halden. Each section shows the reasoning — confirm where it fits, correct where it doesn't.

**IDENTITY & DISPOSITION**
**Name:** Kael Travis
**Concept:** Wandering soldier; sword-for-hire
**Core strength:** Demonstrated master swordsman — trained, experienced, reliable under pressure
**Core flaw:** Choleric temperament — quick to anger, prone to confrontation, difficulty with authority and institutional politics
**Age/appearance:** Late 30s, weathered by travel and combat; carries the physical bearing of a career soldier
**Assumption:** Kael's anger serves him in combat (decisive, fast reactions) but has cost him long-term stability and relationships. He's seeking a settled position partly *because* wandering has become unsustainable — not because he's naturally suited to stability.

narrator: Proposed protagonist: Kael Travis, a late-30s wandering soldier and sword-for-hire, master swordsman, choleric temperament, no local civic office, guild membership, institutional license, patronage, or formal standing in Halden. Starting knowledge derived from Verra canon: public knowledge of the Varn affair, the Order's authority, the Athenaeum-Order fever dispute, active marsh-fever in the lower quarters, and public reputation of Halden glass. Inventory: serviceable sword, belt knife, worn traveling clothes and cloak, bedroll and small travel kit, blade-maintenance tools, modest coin, no notable armor. Objectives: secure paid work, seek a position more stable than wandering, manage temper and authority risk, understand when violence is useful or dangerous. Entry point: Halden, Year 312 RR, early summer.

user: i confirm

narrator: Campaign instance `campaigns/prototype_beta/` created as a new campaign in existing Verra world. Registry allocation advanced in `system/ID_REGISTRY.md`: `ENT-000021` Kael Travis, `ENT-000022` Kael's serviceable sword, `REC-000018` through `REC-000025`, `EVT-000014`, and `REL-000020` through `REL-000023`. Write/read-back completed for all canonical files and registry. Repository validation passed.

user: ready

narrator: The scene opens at Halden. The town is uneasy in early summer after Ilse Varn's public execution. Fever is active in the lower quarters. Notices and rumor offer possible paid work: Order hospice security, merchant escort, night watch near the old river stairs. Kael enters as an armed outsider seeking work.

user: // does the town remember a physician recently executed for attacking the Prelate?

narrator: // Yes. Public Halden memory includes Ilse Varn's execution after attacking Prelate Solenne. It is remembered as a warning about raising a hand against the Order. Kael knows only the public version, not the private events of Prototype Alpha.

user: // what is the state of the marsh-fever outbreak?

narrator: // The outbreak is active in the lower river ward/lower quarters. World canon records 13+ confirmed cases. The Athenaeum's tainted-water theory exists as a validated but condemned finding; the Order bans/condemns teaching it. Objective transmission remains unestablished in world canon.

user: // does Kael know number of confirmed cases?

narrator: // No. Kael knows fever is active and publicly disputed, but he does not know the exact number of confirmed cases.

user: Before continuing, reload docs/AI_GAMEPLAY_RUNTIME_PROFILE.md version 1.20 and tools/validate_repository.ps1 from the repository. Confirm that the Repository Validation Gate is now part of checkpoint persistence. Do not advance the scene yet.

narrator: Reloaded `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` v1.20 and `tools/validate_repository.ps1`. Confirmed Repository Validation Gate is now part of checkpoint persistence: run deterministic validation after live target write/read-back and before checkpoint creation or reporting success. Ran validator; repository validation PASSED.

user: continue with the game

narrator: Kael stands among the first public pressures of Halden: merchant escort work, Order hospice security, and night watch work near the old river stairs. The town watches armed outsiders carefully.

user: "What about merchant escort job?" i say

narrator: Kael asks after the merchant escort job and is directed toward Tollen Var at the market exchange, a man keeping account books and measuring risk with his eyes.

user: I thank him and walk towards the direction he gave me.

narrator: Kael crosses the market toward Tollen Var. The man looks up from his books, weighing Kael's sword, posture, and road-worn clothes before asking what sort of escort work he has done.

user: "I am the man who kills riots." I say firmly

narrator: 🎲 d100: 30 — failure

narrator: The words land badly. Tollen Var does not hear reliable discipline; he hears liability. His fingers pause on the account book. He asks Kael to explain what exactly that means, and nearby attention starts to gather.

user: "You know what." I say. "I am starting to dislike you very much. I do not think you deserve my skills." I start to speak with an anger. "Go find someone else you can speak ill about." i say and just push his books to fall and turn to leave

narrator: Tollen's account books scatter across the table and floor. The market notices. Tollen is angry and alarmed; a watchman starts moving but does not immediately give chase. Kael leaves the merchant escort contact behind.

user: I walk away, angrily that my first attempt of getting job turns like this. I just walk towards the biggest building thinking it either has to be the university or the order - one of them at least - with an open vacancy work a muscle like mines.

narrator: Uphill, the largest public structures divide Halden's authority: the Athenaeum to one side and the Order's temple-house ahead. The Order building has the steadier traffic of need and command.

user: I continue walking to the Order.

narrator: Kael reaches the Order house and finds an attendant handling inquiries near the entrance. The attendant asks whether Kael is here for the security notice.

user: "Yes." I answer. "I am looking for good paying job."

narrator: The attendant describes lower-passage hospice security. Pay by the day, better at night and in the lower passage. The work is dangerous, dark, and strict: no drawing steel unless ordered or life plainly demands it, no striking supplicants for insults, no forbidden fever doctrine talk, no wandering inside the hospice.

user: "I am totally fine with a danger and working in dark." I assure him with a straight posture. "I can start this evening already, without any problems."

narrator: The attendant asks Kael's name and whether he can obey clergy orders, because inside the hospice the sword answers second and the Order first.

user: "Kael Travis" i answer simply

narrator: The name is taken down. The attendant waits for the answer about obedience.

user: "Yes" i say not really voluntarily.

narrator: The attendant says the job is Kael's in ink. Start at sundown. Report to Sister Avel at the hospice side door. He will receive badge-cloth, first-watch instructions, and a senior door man. Sword sheathed unless ordered; if drawn without cause, dismissal or detention.

user: I go to sister Avel to fetch all documents and clothes to prepare myself.

narrator: Sister Avel receives him at the hospice side door. There are no hospice papers for him, no uniform, and no costume of authority. There is badge-cloth, a token, instructions, and a red peace-binding for his sword.

user: "Let's go there now, I would like to see the place in a light first before starting my shift, to be prepared and know the streets."

narrator: Avel approves the practical instinct and shows Kael the lower passage: receiving hall and family line, screen, lower passage, marked fever door with a red bar, stair, bench, side window, and bell cord. Rules: no family past the line, patients do not leave unescorted, families do not enter, clergy/physicians/senior attendants pass, ask if unsure; body first, voice second, hands third, steel last.

user: "I did not intended to. I don't work for free" i answer half politely

narrator: Sister Avel corrects him. This walk is preparation for paid work, not extra charity. She expects him to learn before his ignorance becomes someone else's danger.

user: "I was answering your command about the door, Sister. " I say.

narrator: Avel accepts the clarification without softening much. Behind the marked fever door, Edrin knocks and asks for his wife. Avel tells Kael not to touch the door unless told. Edrin wants Lysa and has tried twice to reach the family hall; panic spreads faster than mercy in the wrong corridor.

user: "I walk with you but I would like to change clothes you gave me and find some place to put my old ones. Possibly some place to sleep before the shift starts."

narrator: Avel clarifies again: no uniform. Badge-cloth and peace-binding only. Pegs are available for cloak and pack during duty, but not valuables. There is a bench in the outer yard for rest; a bed requires paying in town.

user: "Understood" i answer and go to find the bench she was talking about to rest before my shift starts.

narrator: Kael finds the bench in the outer yard and rests while the hospice breathes around him: footsteps, low voices, distant coughing, the smell of vinegar and damp stone.

user: "I was just about to go, I still have some time before the sundown."

narrator: There is still a little time. The lower passage will be his place when the light falls.

user: I just rest at the bench polishing my sword and resting my muscles until there is time to go stand at the designed spot.

narrator: Kael rests, polishes what the peace-binding lets him reach, and waits until sundown. At shift, Avel gives him a dark strip and small wooden token with an ember sign. Show if challenged inside; return at dawn. She introduces Brant, the senior door man: older, thick-armed, scar across one cheek, cudgel at his belt, dry manner.

user: // how does Kael look like?\

narrator: // Kael is late 30s, weathered by travel and combat, with the physical bearing of a career soldier. He looks like a man used to carrying a sword and sleeping rough. Exact height, hair, eye color, scars, and detailed build are not established beyond soldierly bearing.

user: // how does Brant look like?

narrator: // Brant is older, thick-armed, with a scar across one cheek and a cudgel at his belt. He has a dry, unimpressed manner. Exact age, height, hair, eyes, and formal Order rank are not established.

user: "Understood," i answer

narrator: Brant plants Kael at the painted line and repeats the core rule: no family past the line.

user: “No family past the line.” i repeat Brant's words

narrator: A young woman with a sick, shivering boy asks to see her husband Edrin Vale inside. Brant refuses. She appeals to Kael.

user: "Sisters are just around corner, you can walk there. We cannot abandon out sport." i say without emotion or even interest

narrator: 🎲 d100: 88 — strong success

narrator: Ugly, but correct. The woman accepts the rule and steps away to find a sister instead of crossing the line. Brant says, "Ugly. Correct, though," and warns Kael not to make a habit of sounding like stone.

user: "They can try." answer and do not let him to speak about this matter anymore. "I have a question, how do you protect youself again the sick people? Are you not catching what they have every time?"

narrator: Brant explains the practical rules. Some catch it; door men less than sisters, sisters less than those carrying basins and bedding. Keep distance. Do not touch the sick unless told. Do not put hands to mouth. Wash with vinegar when Avel says. Do not drink lower-ward pumps. Do not sleep in fever rooms. Do not share cups or eat in the passage. If someone vomits, step away and call a sister. If someone falls, call unless they block the line.

user: "Not afraid. But I would like to stay alive. Dont, you, old man?" i answer him with the same kind of nickname, he address me

narrator: Brant takes it well enough. "Alive is convenient," he says. The Order says affliction tests the soul. The Athenaeum says things the Order dislikes. Brant says if a man coughs wet into your face, step back.

user: I stay silent.

narrator: The watch settles into a tense quiet.

user: "Do as told" i add

narrator: A man in a dark cloak and hood comes down the wrong stair, pausing on the creaking third board. He shows no robe, badge, or Order mark. He claims he was told Sister Avel was below and looks toward the marked fever door. Brant orders him back up. Kael adds the command. The man withdraws.

user: "No." i say

narrator: Sister Avel appears and asks whether the wrong-stair man said anything else. Kael says no. Brant reports: wrong stair, hood up, wanted Avel, looked at the fever door. Avel sends Brant to find Caldus and check the upper stair and front hall quietly, leaving Kael alone on the line.

user: I block the doorway, push the patient back, and shut the door.

narrator: 🎲 d100: 9 — failure

narrator: The marked fever door opens inward. A young attendant backs through carrying a basin, shoulder propping the door. Edrin Vale, barefoot in a sweat-dark shift, glassy-eyed and coughing, lurches toward the gap saying he heard Lysa. Kael moves fast, but too fast. His shoulder takes the door, his hand catches Edrin high in the chest, and Edrin staggers back only briefly. The attendant loses the basin. Hot sour wash-water spills. Kael's heel skids. The door bucks. Edrin grabs Kael's sleeve and coughs directly against his front. The door is half-open, Edrin's foot over the threshold, and someone in receiving asks what is happening.

user: "Go back to the room or I make you." i say to the patient and then just look at the attendant with a look like he is the most uncompement man in a world. "Take the basin and go."

narrator: 🎲 d100: 71 — success

narrator: Edrin freezes and lets go. The attendant gathers the basin and backs into the fever room. Edrin steps back. The attendant shuts and latches the door. The passage is in shape again, but Kael's sleeve is damp where Edrin grabbed and coughed, and sour water lies across the floor.

user: "Nothing, Sister Avel. Just one little clumsy attendant followed by some patient." I say monotone. "They are both inside, only water left here from the attendant."

narrator: Avel sees the slick floor, the damp sleeve, and the shut door. She asks whether the patient touched Kael.

user: "He touched my sleeves I reckon." i say

narrator: Avel asks if Edrin coughed on him. She orders Kael not to touch his face or sword, to rinse his hands, and to hold the sleeve away.

user: "I cant say with certanity he cough on me, but he was definitely coughing" i say while washing myself with angression

narrator: "Then we treat it as yes." Avel directs hands, wrists, nails, then vinegar again. She inspects the sleeve with linen, not bare hands. Kael is to finish immediate watch unless symptomatic or replaced; he is not to touch his face, not to eat in the passage, and must change outer shirt if he has another when Brant returns. From the receiving side, Lysa asks, "My husband heard me?" Avel closes her eyes, opens them, and asks Kael: "You held the door?"

user: I take off my shirt and exposing my naked chest with muscles, being coutius about not touching the sleeves. "This will do." I say towards the Sister and totally ignoring the woman. "Better safe than be sorry"

narrator: I’ll resolve the shirt change as a contamination-control action: Kael is capable and being careful, but the sleeve is damp and the passage is cramped enough that chance matters.

narrator: 🎲 d100: 16 — failure

narrator: The cloth fights you.

You get the hem up cleanly enough, shoulders rolling under it, chest bare to the cold passage air. But the damp sleeve hangs heavy. For one bad second it folds inward instead of outward, brushing across the side of your neck before you can snap your chin away.

Sister Avel’s face tightens.

“Stop.”

Her voice cuts cleanly through the woman’s half-formed question from the receiving side.

Avel steps in with the linen, not touching you directly. “Do not move your hand to that place. Not once.” She points to the wash basin. “Neck now. Jawline after. Then hands again.”

The woman beyond the line says, smaller now, “Was that my husband?”

Avel does not answer her. Her eyes stay on you.

“Kael. You held the door. Answer me plainly.”

user: // how can this result for dice roll? a simple taking off shirt???

narrator: // You’re right to challenge that.

That roll should not have been called as a generic “can Kael remove a shirt?” check. The only uncertain part was whether he avoided contact with the contaminated sleeve while removing it under pressure. But even then, Kael explicitly said he was being cautious, and this is a simple, controlled action with Sister Avel present giving direction.

Correction: treat the failed roll as over-applied. Canon should be:

Kael removes the shirt carefully without touching the damp sleeve to skin. He is bare-chested in the passage, keeps the contaminated shirt away from himself, and Avel directs him to set it aside for washing or disposal. He still needs to rinse hands/forearms again because the sleeve was contaminated and he handled clothing, but there is no new neck/jaw exposure.

Avel’s pending question remains unchanged:

“Kael. You held the door. Answer me plainly.”

user: "I did" I answer and go wash myself again.

narrator: Avel gives one short nod, sharp enough to be more judgment than praise.

“Then the door stayed shut. Good.”

She turns her head toward the receiving side at last. “Mistress Vale, step back from the line. Your husband is inside and under care. You will not come through.”

The woman’s voice breaks. “He heard me.”

“He did.” Avel’s answer is controlled, not soft. “And that is why you must step back.”

You wash again: hands, wrists, under the nails, then forearms. The vinegar bites where old sword-calluses have cracked. Your shirt lies twisted aside, damp sleeve turned inward, a thing no one wants to touch bare-handed. Avel watches until she is satisfied you are not moving like a fool with poison on your fingers.

From behind the fever door, Edrin’s voice rises, muffled and hoarse.

“Lysa?”

The woman makes a small wounded sound but does not cross the line.

Avel looks back to you, then to the slick wash-water still spread thin across the floorboards.

“Bare chest or not, Kael Travis, you are still on post. Keep the line. Keep your hands from your face. When Brant returns, you change if you have a clean shirt.”

A beat.

“And if that door opens again, you call before you put your body in it.”

user: "Understood"

narrator: Avel studies you one moment longer, measuring whether “understood” means obedience or only noise.

Then she turns toward the woman.

“Mistress Vale, you may wait in the receiving hall. If he worsens, a sister will come. If he steadies, a sister will come. If he speaks again, that does not change the line.”

The woman does not like it. Her mouth tightens; her arms close around the shivering boy. But she steps back.

From the upper passage, boots sound on stone.

Brant returns first, cudgel still at his belt, breath heavier than before. Behind him comes a younger Order man carrying a small lamp, his jaw set hard.

Brant stops when he sees you bare-chested beside the wash basin.

“Well,” he says dryly. “First night and already dressed for summer.”

Avel does not smile.

“Patient touched his sleeve. Coughed near him. Shirt is aside. He washed. The door held.”

Brant’s eyes cut to you, then the fever door, then the slick floor.

The younger man with the lamp says, “Caldus found no one on the upper stair. Front hall saw no hooded man leave by the main door.”

Avel goes still.

Brant’s humor vanishes.

Somewhere behind the fever door, Edrin coughs again.

Avel looks at Brant. “Then he is still inside the house.”

She turns to you.

“Kael. Can you keep this line with Brant while I lock the stair?”

user: // save progress

narrator: I’ll checkpoint the live state now, including the corrected shirt-removal ruling. I’m going to read the current campaign ledgers and registry first, then write the checkpoint and run the repository validator before calling it saved.

narrator: The active ledgers only contain campaign start, so this save needs to promote the played session into durable campaign records. I’m allocating new IDs for the job, named local contacts, key incidents, and Kael’s exposure state in the same registry change.

narrator: I found the existing checkpoint layout in Prototype Alpha. I’ll mirror that structure under Prototype Beta as `saves/900_CHECKPOINT_0001` after updating the live ledgers.

narrator: I’m about to update canon now. The important correction being persisted is that Kael removed the contaminated shirt without new neck/jaw exposure; the exposure state remains sleeve contact and coughing near/against his front from the earlier doorway struggle.

narrator: The live ledgers and registry are updated. Now I’m creating the checkpoint snapshot by copying the canonical campaign ledgers into the save directory, then I’ll add the save manifest and read everything back.

narrator: The snapshot files are in place. I’m grabbing the current commit identifier for the manifest, then I’ll write the manifest itself.

narrator: I’m adding the checkpoint manifest now, with the saved scene anchor and the repository validation gate recorded as required for completion.

narrator: The manifest is written. I’m doing the read-back pass now: live ledgers, registry, and the checkpoint copies, with a quick content sanity check for the newly allocated IDs.

narrator: Read-back passed for the live and saved files. I’m running the Repository Validation Gate now; if it complains about the checkpoint snapshot duplicating canonical blocks, I’ll repair in the engine’s expected format rather than hand-wave it.

narrator: Validation passed cleanly with the new high-water marks. I’m doing one last status check so I can tell you exactly what was changed for the save.

narrator: // Progress saved.

Checkpoint `900_CHECKPOINT_0001` was created at `campaigns/prototype_beta/saves/900_CHECKPOINT_0001/900_SAVE_MANIFEST.md`.

Persisted state includes:
- Kael’s merchant-contact failure with Tollen Var.
- Order hospice hiring and first lower-passage watch.
- Sister Avel, Brant, Edrin Vale, Lysa Vale, the unidentified wrong-stair man, and Caldus.
- The corrected shirt ruling: no new neck/jaw exposure during shirt removal.
- Current scene anchor: Kael is with Brant at the line while Avel prepares to lock the stair.

Identifier registry updated and read back:
- `ENT-000029`
- `REC-000025`
- `EVT-000017`
- `REL-000028`

Repository Validation Gate passed:
`Repository validation PASSED`

No scene advanced.
