# Inventory and Ownership - Prototype Beta

**Campaign:** Prototype Beta - **World:** Verra
**Ledger:** Canonical Record (`011` Section 8) holding Kael's individually-tracked resources. Generic goods are noted as quantities without identifiers (`011` Section 11).

---

## Record

```yaml
id: REC-000020
canonical_record: REC-000020
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000014
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - ENT-000022
```

---

## Kael's Serviceable Sword

```yaml
id: ENT-000022
canonical_record: REC-000020
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000014
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
type: Resource
subtype: weapon
scope: personal
lifecycle: active
aliases:
  - name: "Kael's serviceable sword"
    quality: current
canonical_state:
  category: "Weapon; soldier's sword suited to Kael's established mastery."
  condition: Serviceable
  ownership: "ENT-000021 (legal/practical)"
  possession: "ENT-000021"
  location: ENT-000002
  provenance_chain: "Kael's own weapon, carried into Halden at campaign start."
```

---

## Generic Holdings

- Belt knife (ordinary tool/weapon; not individually tracked).
- Worn traveling clothes and cloak. Current shirt is contaminated from the fever-door incident and set aside for washing or disposal under Order direction; Kael is temporarily bare-chested while on post.
- Bedroll and small travel kit.
- Simple blade-maintenance tools.
- Coin enough for a few modest days of lodging and meals.
- No notable armor at campaign start.
- Order hospice badge-cloth / ember token for the night watch, to be returned at dawn.
- Peace-binding red cloth on Kael's sword while on Order duty; public promise, not a physical lock.
