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

$rules = 'engine/010_ENGINE_RULES.md'
$dataModel = 'engine/011_ENGINE_DATA_MODEL.md'
$runtime = 'engine/012_ENGINE_RUNTIME.md'
$decisions = 'engine/001_ENGINE_DECISIONS.md'
$resident = 'docs/AI_GAMEPLAY_RESIDENT_CORE.md'

# Decision 083. Design flag F-001: four established contractors generated zero
# work across five elapsed in-fiction days, in a world declaring ~35 weekly
# metro detections and 3-6 standing postings as ordinary state. The declines
# were individually well reasoned; the defect was upstream, in a supply model
# that did not exist, so "nothing available" was the only answer the fiction
# could structurally return.
#
# Patterns stay ASCII-only and single-line: Select-String is line-based, and a
# non-ASCII literal is an encoding coin-flip under Windows PowerShell 5.1.

Assert-Contains $decisions '^## Decision 083 .+Opportunity Supply Advances on the World' 'Decision 083 is missing.'

# The engine-general obligation. This is the foundational element.
Assert-Contains $rules '^### 3\.4\.1 Opportunity Supply$' 'Rules Section 3.4.1 is missing; supply has no engine-general obligation.'
Assert-Contains $rules 'not at the moment a character asks' 'Supply can still be understood as generated on demand.'
Assert-Contains $rules 'An empty advance is a settled result and is recorded as such' 'An unsettled source is still indistinguishable from a settled-empty one.'
Assert-Contains $rules 'never solely to reward the player' 'The generation bound is not restated where the mechanism is authored.'
Assert-Contains $rules 'Permanent scarcity produced by never advancing supply is not scarcity' 'Nothing names the failure mode the decision exists to prevent.'

# The structure, and the field that makes read and advance different operations.
Assert-Contains $dataModel '^## 7\.5 Supply Source$' 'The supply-source construct is missing.'
Assert-Contains $dataModel 'Advanced     the campaign-clock anchor through which supply has been settled' 'The supply anchor field is missing or renamed.'
Assert-Contains $dataModel 'these are different operations and only the first may create anything' 'Read and advance are not structurally separated; repeated inquiry could draw again.'
Assert-Contains $dataModel 'distinguishes \*nothing qualified\* from \*nobody looked\*' 'The Decision 080 negative-assertion rationale is not carried onto supply.'

# Settlement rides the existing clock boundary rather than inventing one.
Assert-Contains $runtime 'Opportunity supply settles at the same boundary' 'Canonical Time Settlement does not advance supply.'
Assert-Contains $runtime 'never advances it' 'A player inquiry may still advance supply.'
Assert-Contains $runtime 'settles it forward from that anchor before answering' 'A lagging supply anchor need not be settled before the inquiry is answered.'
Assert-Contains $runtime 'Two inquiries inside one unadvanced span return' 'Nothing forecloses drawing twice by asking twice.'

# Resident per-turn settlement, folded into the step that already settles time.
Assert-Contains $resident 'advance every established opportunity source through the span' 'Turn-State Settlement does not advance supply.'
Assert-Contains $resident 'an inquiry reads settled supply rather than generating it' 'The resident layer does not forbid generating supply at the point of asking.'

# Decision 083 point 6 keeps supply off the schema, as Decision 082 did for
# commitments. If that ever changes, the Data Model version must move with it.
Assert-Contains $dataModel '^\*\*Data Model Version:\*\* 0\.1\.5$' 'Data Model version moved; Decisions 082 and 083 both assert 0.1.5 stands because no Persistent Object structure changes.'

# Decision 084. Decisions 082 and 083 placed two world-side obligations on the
# clock boundary, but the Section 2.5 trigger manifest's settlement vocabulary
# was closed around quests and progression candidates -- every member describes
# something presented to or resolved for the player. Gatefall's Section 9.10
# board fits none of them, so F-001's Recommendation R4 was not merely undone
# but inexpressible.

Assert-Contains $decisions '^## Decision 084 .+World-State Settlement as a Declarable Trigger Domain$' 'Decision 084 is missing.'
Assert-Contains $runtime 'world_state_settlement' 'The Runtime does not document the world-state settlement kind.'
Assert-Contains $runtime 'A profile may not invent a fifth' 'The settlement vocabulary is not declared closed.'
Assert-Contains $runtime 'writes no .progression_audits. result' 'A world-state settlement may still be read as owing a progression audit.'
Assert-Contains $runtime 'never substitutes a player prompt for a settlement the world owes itself' 'The dispatcher may still discharge a world obligation by prompting the player.'

# The vocabulary is enforced in the validator, not merely described. These two
# assertions are the ones that would fail if the member were documented and not
# admitted, or admitted and not constrained.
$validator = 'tools/validate_runtime_configuration.py'
Assert-Contains $validator '"world_state_settlement",' 'The validator does not admit the world-state settlement kind.'
Assert-Contains $validator 'must not declare a capacity-notice policy' 'A world-state settlement domain may still declare a capacity-notice policy it has no surface for.'
Assert-Contains $validator 'must settle at the declared boundary' 'A world-state settlement domain may still declare a timing other than the declared boundary.'

# Gatefall is the first consumer (Profile 1.44, Recommendation R4). The domain
# must dispatch Section 9.10 and must not be readable as a System notification,
# which Section 14.4's information boundary forbids.
$gatefall = 'worlds/gatefall/206_WORLD_RULE_PROFILE.md'
Assert-Contains $gatefall '^  gatefall\.board\.deadline:$' 'Gatefall does not declare the board deadline domain.'
Assert-Contains $gatefall '^    eligibility_heading: "9\.10 The Tracked Board"$' 'The board domain does not dispatch Section 9.10.'
Assert-Contains $gatefall '^    settlement: world_state_settlement$' 'The board domain does not use the world-state settlement kind.'
Assert-Contains $gatefall '^      - outreach\.initiated$' 'An outreach inquiry does not settle the board.'
Assert-Contains $gatefall 'is not a System trigger, and the tiers below do not reach it' 'The board domain could be read as a System notification, which Section 14.4 forbids.'
Assert-Contains $gatefall 'settles the board \*\*before\*\* the answer' 'Nothing states that an inquiry settles the board before it is answered.'

Write-Host 'Opportunity supply contract PASSED'
