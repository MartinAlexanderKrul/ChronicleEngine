[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot

function Assert-Contains {
    param([string]$RelativePath, [string]$Pattern, [string]$Message)
    $path = Join-Path $root $RelativePath
    if (-not (Select-String -LiteralPath $path -Pattern $Pattern -Quiet)) {
        throw "$Message ($RelativePath)"
    }
}

function Assert-NotContains {
    param([string]$RelativePath, [string]$Pattern, [string]$Message)
    $path = Join-Path $root $RelativePath
    if (Select-String -LiteralPath $path -Pattern $Pattern -Quiet) {
        throw "$Message ($RelativePath)"
    }
}

$resident = 'docs/AI_GAMEPLAY_RESIDENT_CORE.md'
$profile  = 'docs/AI_GAMEPLAY_RUNTIME_PROFILE.md'
$runtime  = 'engine/012_ENGINE_RUNTIME.md'
$skill    = '.agents/skills/npc-knowledge/SKILL.md'
$startup  = 'campaigns/gatefall_pendragon_001/090_CAMPAIGN_STARTUP.md'
$gatefallProfile = 'worlds/gatefall/206_WORLD_RULE_PROFILE.md'

# Returns one heading's own body, so a presence check inside a 4,000-line profile
# cannot be satisfied by the same words appearing in an unrelated section. F-014
# recorded the cost of getting this wrong: an assertion that cannot fail is
# indistinguishable from one that is working, and is worse than one that fails.
function Get-Section {
    param([string]$RelativePath, [string]$HeadingPattern)
    $lines = (Get-Content -LiteralPath (Join-Path $root $RelativePath) -Raw) -split "\r?\n"
    $body = @()
    $inside = $false
    foreach ($line in $lines) {
        if ($inside -and $line -match '^#{1,4} ') { break }
        if ($inside) { $body += $line; continue }
        if ($line -match $HeadingPattern) { $inside = $true }
    }
    return ($body -join "`n")
}

# Why this test exists
#
# A complete, well-written channel test already existed in the npc-knowledge
# skill -- including a rationalization table naming the exact two excuses the
# failures ran on ("a good excuse to move the plot", "I know it, so it's fair
# game"). It still produced four leaks in a single session: three on one thread
# after two corrections in the same conversation, and a fourth on an unrelated
# fact, proving the corrections generalized neither across turns nor across
# facts.
#
# That is the configuration Runtime Section 5.3 and Decision 055 rule out -- a
# guardrail carried ONLY by fetched reference does not fire on a substrate whose
# per-turn default competes with it. So the fix is not stronger wording. It is
# siting: the check must be resident, and the ruling must outlive the scene.
# This test pins all three legs of that, because losing any one restores the
# configuration that failed.

# --- Leg 1: the check is resident, not fetched-only ------------------------
Assert-Contains $resident '^## The NPC Channel Check$' 'The NPC channel check is not in the resident per-turn layer; a fetched-only guardrail does not fire (Runtime 5.3, Decision 055).'
Assert-Contains $resident 'An NPC knows a fact only if the fiction gave \*\*that\*\* NPC a channel to it' 'The resident channel rule is missing its core statement.'
Assert-Contains $resident 'was this NPC \*present\*, \*told\* through a channel that exists, does their \*role\* give records access, or is it \*common knowledge\*' 'The resident layer does not carry the four-channel test itself.'

# --- Leg 2: it fires per line, and prior corrections do not inoculate -------
# This is the leg the observed failure broke: two corrections in one scene, then
# the same leak a third time, then a fourth on a different fact.
Assert-Contains $resident 'A correction earlier in the scene does not inoculate a later turn, and does not generalize to a different fact' 'The resident layer does not state that a correction fails to inoculate later turns.'
Assert-Contains $resident '\*\*"The Runtime knows it" is the trap, not the exemption\*\*' 'Runtime-held material (counters, quest state, prior narration, tool output) is not named as the trap.'

# --- Leg 3: the trigger stays narrow, so narration keeps its pace -----------
# A check that fired on every NPC line would be paid on nearly all dialogue and
# would be dropped under load. Narrowness is what makes it survivable.
#
# The assertion is on the PROPERTY -- that the common case is unchecked -- not on
# the sentence that carried it. F-020 re-keyed this trigger from the line's
# grammatical subject to its content, and the old literal ("need no check at
# all, which is nearly all NPC dialogue") failed on a one-word edit that
# strengthened the very claim it was pinning. A gate that fails when its subject
# is improved teaches its reader to route around it.
Assert-Contains $resident 'beyond \*\*present visible conduct\*\*' 'The trigger is not scoped to assertions beyond present visible conduct; an unscoped check costs pace and gets dropped.'
Assert-Contains $resident 'need no check at all, which is (still )?nearly all NPC dialogue' 'The resident layer does not establish that the common case is unchecked.'
Assert-Contains $resident 'The correct branch is the cheap one' 'The resident layer does not state that correct play costs less than the failure.'

# --- Leg 3b: the trigger reads content, never grammatical subject (F-020) ----
#
# This is the finding F-020 produced, and it is why seven flags in this family
# read as the check being skipped when at least one was the check being pointed
# at the wrong surface.
#
# The trigger fired "only on a line where an NPC asserts something about the
# player character", and the resident exemption list named "the NPC's own
# business" outright. Owen's leak -- "nothing until Nakamura's tonight" -- is
# grammatically a statement about his own evening and factually a statement of
# Alexander's private schedule. A Runtime executing the old trigger faithfully
# would not have run the check at all, so no amount of stating the channel test
# harder could have caught it.
#
# Both halves are pinned: that the trigger reads content, and that an NPC's own
# plans are explicitly inside scope. Losing either restores the blind spot.
Assert-Contains $resident "It fires on the line's content, never on its grammatical subject" 'The channel-check trigger is keyed to the line''s grammatical subject again; a line about the NPC''s own plans then carries protagonist facts unchecked (F-020).'
Assert-Contains $resident 'includes a line about the NPC''s own plans' 'The trigger no longer names an NPC''s own plans as inside scope, which is the exemption F-020 fell through.'
Assert-NotContains $resident 'the NPC''s own business, and reactions to what is visibly happening need no check' 'The resident exemption again excludes an NPC''s own business unconditionally, rather than only when it carries no protagonist specific (F-020).'

# --- Leg 3c: the two lookups that precede the judgment ----------------------
#
# F-021 landed two leaks in one scene, and neither is answered by the four-way
# channel judgment:
#
#   1. Kesha described the Bearer as "currently levelled up". Level is on a
#      closed list nobody has a channel to, so asking whether SHE could have
#      found out is the wrong question -- there is no NPC for whom it is a
#      different answer. It is a category, and a category is a lookup.
#   2. A duck emoji the player typed in a `//` line as a swear substitute came
#      back as something Owen himself sent. That is not an NPC-knowledge failure
#      at all: it is content crossing from the player's out-of-character
#      register into the fiction, and before this change NOTHING anywhere in the
#      engine governed it.
#
# Both are pinned resident, because a lookup carried only by fetched reference
# is subject to Runtime 5.3 exactly as the channel test was (Decision 055).
Assert-Contains $resident 'The Bearer-Only Register' 'The resident layer names no Bearer-Only Register, so System state is re-derived as a per-NPC channel judgment each time (F-021).'
Assert-Contains $resident 'A category, not a channel' 'The resident layer does not state that a register item is a category rather than a channel question, which is what makes it a lookup.'
Assert-Contains $resident 'Out-of-character text is not a world source' 'Nothing forbids OOC content reappearing in the fiction; this class was ungoverned when F-021 was raised.'
Assert-Contains $resident 'Narrating what an OOC instruction \*asked for\* is correct' 'The OOC rule does not distinguish acting on an OOC instruction from reusing its text, so it forbids ordinary compliance and will be dropped.'

# The register has to exist in the world that declares it, not only be pointed
# at. A resident pointer to an absent list is a rule with no content.
#
# Every row is asserted against the SECTION's own body rather than the whole
# profile, because "**Level" and "**Mastery" appear in a dozen unrelated places
# and a file-wide match would pass whether or not the register had the row.
Assert-Contains $gatefallProfile '^### 14\.4\.1 The Bearer-Only Register \(closed list\)$' 'The active profile declares no Bearer-Only Register section for the resident lookup to read.'
$register = Get-Section $gatefallProfile '^### 14\.4\.1 '
if ([string]::IsNullOrWhiteSpace($register)) {
    throw "The Bearer-Only Register section is empty ($gatefallProfile)."
}
foreach ($item in @('Level', 'XP', 'System Rank', 'Skills', 'Mastery', 'Quest state',
                    'Notifications and panels', 'Pending rewards', 'Exact pool values',
                    'That he has a System at all')) {
    if ($register -notmatch "\*\*$([regex]::Escape($item))") {
        throw "The Bearer-Only Register is missing its '$item' row; a closed list with a hole is not a lookup ($gatefallProfile)."
    }
}
# The register's whole value is that no NPC is an exception to it, so the
# no-exception clause is pinned rather than left to the rows' tone.
if ($register -notmatch 'short of the Bearer') {
    throw "The Bearer-Only Register does not state that disclosure by the Bearer is the only exception ($gatefallProfile)."
}

# --- Leg 3d: the knowledge boundary has an owner, and it is fetched ---------
#
# The mechanical cause 439_NPC_GROUNDING_ANALYSIS.md recorded as absent.
#
# The resident load rule says to take "the fields the campaign's declared entity
# dispatch names". That dispatch named location, condition, personality and
# situation -- and NOT knowledge. So the one field whose own first line reads
# "What he knows about Alexander -- check this before any scene where the System
# could surface" was never in the fetch set, and a Runtime following the rule
# exactly loaded the narration and left the boundary on disk.
#
# F-020's own fact demonstrates the split it leaves behind: the Nakamura
# scoping lives in `situation`, not `knowledge`, because no field was declared to
# own it. Two fields could carry the boundary and neither was authoritative,
# which is F-019's ownership defect on NPC knowledge.
Assert-Contains $resident '\*\*`canonical_state\.knowledge` owns what that NPC knows about the protagonist\*\*' 'No field owns an NPC''s knowledge boundary, so it may be authored into `situation` where the channel check does not read it (F-019, F-020).'
Assert-Contains $resident 'the declared dispatch must name it' 'The resident layer does not require the dispatch to fetch the knowledge field, which is how the boundary stayed on disk.'
# Both halves of the default-deny sentence are asserted as separate ASCII
# fragments, deliberately: the sentence joins them with an em dash, this file is
# BOM-less UTF-8, and Windows PowerShell 5.1 decodes it as ANSI -- so a literal
# U+2014 in a pattern silently never matches and the leg would pass vacuously,
# which F-014 records as worse than failing. The rule is to keep patterns ASCII
# rather than to escape the dash correctly once and hope the next reader does too.
Assert-Contains $resident 'has been told nothing' 'An NPC record with no knowledge field is not read as a default-deny boundary, so the absence invites invention.'
Assert-Contains $resident 'not a gap to fill' 'The resident layer does not forbid treating a missing knowledge field as licence to invent what the NPC was told.'
Assert-Contains $startup 'canonical_state\.knowledge' 'The prototype campaign''s NPC dispatch does not fetch `canonical_state.knowledge`, so the resident load obligation names every field except the one the channel check reads.'

# --- The default-deny phrasing rule ----------------------------------------
Assert-Contains $resident 'write it as a read or a guess, never as something observed or reported' 'Behaviour-based inference may still be written as observation or report.'

# --- Corrections must become durable artifacts ------------------------------
Assert-Contains $resident 'record the closed channel in the campaign''s NPC ledger so the ruling outlives the scene' 'A player correction is not required to be recorded, so it evaporates with the scene.'

# --- Declared enforcement point (Decision 055 requires one) ----------------
Assert-Contains $runtime '\| Grounding . NPC channel \| Before any NPC line carrying a protagonist-private specific' 'Runtime 0.2''s declared enforcement moment does not cover a line carrying a protagonist-private specific, so it still describes the trigger F-020 fell through while the resident layer describes the fixed one.'
Assert-Contains $runtime 'is Grounding applied to dialogue rather than a fifth invariant' 'The NPC channel row is not tied back to Invariant 1.'

# --- The fetched layers still exist and are advertised, not replaced --------
Assert-Contains $profile 'the NPC channel check' 'The Runtime Profile does not advertise the resident NPC channel guard, so a campaign boot need not load the layer that owns it.'
Assert-Contains $resident 'voice and independence discipline, rationalization table, and red flags: the `npc-knowledge` skill' 'The resident layer does not point at the fetched elaboration.'

# --- F-016: the channel test governs facts, and nothing governed manner -------
#
# An NPC can pass every assertion above and still be wrong. Two NPCs with
# explicitly different authored personalities produced structurally identical
# beats on back-to-back turns -- a flat correction, a one-clause reframe, a wry
# closing line -- in one register wearing two names.
#
# The independence half is the sharper one, because the obvious correction makes
# it worse. Told an NPC "doesn't need to agree with your narration," the easy
# repair is to have them disagree with the PLAYER instead; the NPC's position
# never moves and only its target does. So the rule is written on whose read the
# NPC carries, never on whom it agrees with -- and where no grounded basis for an
# opinion exists, the correct output is that the NPC holds none.
Assert-Contains $resident 'manner is what compression removes' 'The resident layer does not make an NPC voice a constraint to write against (F-016).'
Assert-Contains $resident 'two loaded NPCs are never interchangeable' 'The resident layer does not forbid one register wearing two names (F-016).'
Assert-Contains $resident 'An opinion is the NPC''s own' 'The resident layer does not source an NPC opinion to that NPC rather than to the Runtime (F-016).'
Assert-Contains $resident 'flipping agreement into disagreement is not independence' 'The resident layer does not close the polarity trap, which is the repair that made F-016 worse rather than better.'
Assert-Contains $skill 'whose read they are carrying' 'The skill does not state the independence test on whose read the NPC carries.'
Assert-Contains $skill 'the correct output is that it holds none' 'The skill does not permit an NPC to hold no opinion, which is the branch the Runtime skips.'
Assert-Contains $skill 'Read `personality` as a constraint to write against' 'The skill does not make the personality field a writing constraint.'
Assert-Contains $skill 'The channel test \(run it before every NPC line\)' 'The npc-knowledge skill no longer carries the full channel test it elaborates.'

# --- The fetched layer carries the same three rules (F-020, F-021) ----------
#
# The resident legs above own the trigger; the skill owns the worked examples,
# and the F-003 mechanism was precisely two layers disagreeing while only one was
# gated. So each new rule is pinned in both, and the mirror hash check at the end
# of this file carries it to the `.claude` copy.
Assert-Contains $skill 'Two lookups come first, because their answer never varies' 'The skill does not put the register and OOC lookups ahead of the channel judgment.'
Assert-Contains $skill 'Knowing a thing in outline is not a channel to its specifics' 'The skill does not carry F-020''s case: an outline fact licensing a specific name, date, or time.'
Assert-Contains $skill 'Is this commitment even theirs' 'The skill does not ask whose commitment a named plan belongs to, which is half of F-020''s defect.'
Assert-Contains $skill 'Check the line''s \*\*content\*\*, never its grammatical subject' 'The skill does not restate the content-keyed trigger, so the two layers can disagree on when the check fires.'

# --- The load contract ------------------------------------------------------
#
# The channel check above governs what an NPC may KNOW. It presupposes something
# nothing previously required: that the NPC's own record was read before the
# Runtime played it. It is not read by default -- `130_NPCS_AND_FACTIONS.md` is
# `available_on_demand` in every derived operation plan, and the Runtime Profile
# excludes NPC ledgers from readiness whole-file reads, both correctly: the
# Gatefall ledger alone is over eight times the whole readiness budget.
#
# That left the encounter case with no obligation at all. A Runtime could open a
# scene, play a recorded NPC from recollection for a dozen exchanges, and violate
# no stated rule -- while Decision 076 already established that recollection of a
# character decays to a role label, which is exactly the content at stake.
#
# So the rule is sited resident for the same reason the channel check is
# (Decision 055): the plan that names the read is fetched material, and a
# fetched-only guardrail does not fire.

Assert-Contains $resident '^## Load a Recorded NPC Before Playing It$' 'The NPC load obligation is not in the resident per-turn layer; the plan naming the read is fetched, and a fetched-only guardrail does not fire (Runtime 5.3, Decision 055).'
Assert-Contains $resident 'load the record before that NPC''s first line in a scene' 'The resident layer does not state when the NPC record must be loaded.'
Assert-Contains $resident 'Once per scene, not once per line' 'The load obligation is unbounded per line, which makes it too expensive to keep and it will be dropped.'
Assert-Contains $resident 'a line that happens to come out right was still ungrounded' 'The resident layer lets a correct-by-luck line stand in for a grounded one.'
Assert-Contains $resident 'Loading asks what the record says; the channel check asks what the character may know' 'The load obligation and the channel check are not distinguished, so satisfying one will be read as satisfying both.'

# The load is only affordable because readiness carries the rulings that must
# survive between scenes. Losing this selector restores the configuration where a
# player ruling was written to a file the next session never opens.
Assert-Contains $startup 'campaign_readiness_headings' 'The prototype campaign declares no bounded campaign readiness headings.'
Assert-Contains $startup 'heading: "Closed Channels"' 'Readiness no longer selects the NPC ledger''s Closed Channels table.'
Assert-Contains 'campaigns/gatefall_pendragon_001/130_NPCS_AND_FACTIONS.md' '^## Closed Channels$' 'The NPC ledger no longer carries the Closed Channels table the readiness selector names.'

# The obligation needs a read behind it. Without a declared dispatch the only
# handle on an NPC record is the whole 250 KB ledger, and the rule degrades into
# an instruction to go searching -- which is the cost that gets it dropped.
Assert-Contains $startup 'npc_present:' 'The prototype campaign declares no NPC-encounter dispatch, so the resident load obligation names no read.'
Assert-Contains $startup 'object_source: campaigns/gatefall_pendragon_001/135_CAST_IN_PLAY\.md' 'The NPC dispatch does not name the roster its subject identifiers come from.'
Assert-Contains $resident 'Take the fields the campaign''s declared entity dispatch names rather than the whole block' 'The resident layer does not bound the load to named fields; the largest live record is over 65 KB.'

# --- The write is immediate, and every layer must agree (F-003) -------------
#
# The resident rule above requires a closed-channel ruling to be recorded "so
# the ruling outlives the scene", and the Closed Channels table's own framing
# says to add a row "the moment a channel is ruled closed ... do not wait for a
# checkpoint". Both were correct. Two fetched skills said the opposite:
# npc-knowledge told the Runtime to "hold the closed channel as a pending ruling
# in conversation rather than writing it to the NPC ledger file mid-scene", and
# the save skill named an "NPC-knowledge ruling" among the deltas held until
# /save. Four documents, two of them pointing the wrong way, and only the
# resident leg was pinned -- so the conflict passed every gate.
#
# That is F-003's mechanism. A Runtime following the fetched skill holds the
# ruling in conversation, nothing durable exists two exchanges later, and the
# fact leaks again inside the same scene. The table's rows record it happening
# twice on one fact and three times on another, each after a correction.
#
# These legs pin the agreement rather than any single copy of it.
$npcSkillClaude = '.claude/skills/npc-knowledge/SKILL.md'
$saveSkill      = '.agents/skills/save/SKILL.md'
$saveSkillClaude = '.claude/skills/save/SKILL.md'

foreach ($s in @($skill, $npcSkillClaude)) {
    Assert-Contains $s 'Then write the row immediately' "The npc-knowledge skill does not require the closed-channel row to be written at once ($s)."
    Assert-NotContains $s 'rather than writing it to the NPC ledger file mid-scene' "The npc-knowledge skill still defers the closed-channel write, contradicting the resident rule and the table's own framing (F-003) ($s)."
}

foreach ($s in @($saveSkill, $saveSkillClaude)) {
    Assert-Contains $s 'One exception, and only one: a closed-channel ruling' "The save skill does not carve out the closed-channel write, so its mid-scene prohibition still swallows it (F-003) ($s)."
    Assert-NotContains $s 'or an NPC-knowledge ruling is now held as a pending delta' "The save skill still holds an NPC-knowledge ruling until /save, which is the write that evaporates (F-003) ($s)."
}

# The mirrors must stay byte-identical, or a fix lands in one and not the other.
#
# This checked npc-knowledge and save BY NAME, and the two skills it named were
# the two it was written for. Everything else was unchecked, and `flag` had gone
# missing from `.agents/` entirely -- so a runtime loading that tree had no
# `/flag` skill at all, while `/flag`'s own text insists "a flag that isn't in
# the repo didn't happen." Naming the subjects you already know about is the
# same defect this file catches elsewhere: it cannot report the case nobody
# thought of. So the check now enumerates the directories instead.
$agentsSkills = Join-Path $root '.agents/skills'
$claudeSkills = Join-Path $root '.claude/skills'
$names = @(
    @(Get-ChildItem -LiteralPath $agentsSkills -Directory | ForEach-Object { $_.Name }) +
    @(Get-ChildItem -LiteralPath $claudeSkills -Directory | ForEach-Object { $_.Name })
) | Select-Object -Unique | Sort-Object

if ($names.Count -lt 2) {
    throw "Refusing to pass on an empty skill enumeration: found $($names.Count) skill directories, so this check would be vacuous."
}

foreach ($name in $names) {
    $a = Join-Path $agentsSkills "$name/SKILL.md"
    $b = Join-Path $claudeSkills "$name/SKILL.md"
    $aExists = Test-Path -LiteralPath $a -PathType Leaf
    $bExists = Test-Path -LiteralPath $b -PathType Leaf
    if (-not $aExists) {
        throw "Skill '$name' exists under .claude/skills and not .agents/skills, so it is a rule in one runtime and absent from the other."
    }
    if (-not $bExists) {
        throw "Skill '$name' exists under .agents/skills and not .claude/skills, so it is a rule in one runtime and absent from the other."
    }
    if ((Get-FileHash $a -Algorithm SHA256).Hash -ne (Get-FileHash $b -Algorithm SHA256).Hash) {
        throw "Skill mirrors have diverged: .agents/skills/$name/SKILL.md and .claude/skills/$name/SKILL.md differ, so a rule can be fixed in one and left wrong in the other."
    }
}

# --- The implementing half of `flag` exists and carries its load ------------
#
# `flag` states that it "does not evaluate, implement, or resolve the flag --
# that's a separate, explicitly-requested piece of work". That separate work had
# no skill, and the obligations it owes are the ones actually missed while
# actioning F-020/F-021: a refinement landing against a released version must
# name the roadmap milestone that owns it, and a superseded finding must be told
# on its own page that it was superseded. Both are pinned here because both were
# discovered after the fact rather than before.
$engineChange = '.agents/skills/engine-change/SKILL.md'
Assert-Contains $engineChange 'must name the roadmap milestone that owns it' 'The engine-change skill does not carry the milestone-naming obligation for a refinement landing against a released version (Decision 069, DEVELOPMENT_WORKFLOW).'
Assert-Contains $engineChange 'State the argument, do not pronounce the verdict' 'The engine-change skill lets a change declare its own classification, which Decision 069 exists to prevent.'
Assert-Contains $engineChange 'write the notice on the superseded document' 'The engine-change skill does not require a superseded finding to say so on its own page, which is how a disproved claim keeps being read as current.'
Assert-Contains $engineChange 'Verify every new leg fails when its subject is removed' 'The engine-change skill does not require a new gate leg to be proven non-vacuous.'
Assert-Contains $engineChange 'campaign canon is play' 'The engine-change skill does not hold the line between world-side authoring and campaign canon, so an engine change may mint identifiers and write the chronicle.'

Write-Host 'NPC channel contract PASSED'
