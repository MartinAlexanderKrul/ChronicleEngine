# Institution Ledger — the Halden Glaziers' Guild

**Ledger:** single-object Canonical Record (`011` Section 8) holding one Institution entity.

---

## Record

```yaml
id: REC-000007
canonical_record: REC-000007
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000004
  event_time: "Year 250 RR"
  record_time: "2026-07-11T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000005
```

---

## The Halden Glaziers' Guild

```yaml
id: ENT-000005
canonical_record: REC-000007
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000004
  event_time: "Year 250 RR"
  record_time: "2026-07-11T00:00:00Z"
type: Institution
scope: local
lifecycle: active
aliases:
  - name: "the Halden Glaziers' Guild"
    quality: current
relationships:
  - REL-000014
  - REL-000015
  - REL-000001
canonical_state:
  governance_structure: "Guildmastership under Guildmaster Torv (ENT-000009), with a council of masters."
  doctrine_goals: "Preserve and profit from Halden's glass crafts; guard the tempering method."
  assets:
    - ENT-000016
  knowledge_stance: "Holds the Halden tempering method (ENT-000012) as a guarded monopoly: applied in practice, taught only by apprenticeship, its theory never published. The Guild's custody and monopoly are claims of control, not claims on objective truth."
```
