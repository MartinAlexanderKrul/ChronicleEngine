# Chronicle Engine

## Engine Changelog

**File:** `030_ENGINE_CHANGELOG.md`  
**Status:** Active  
**Format:** Reverse-chronological index. Entries point to decisions, rules sections, and files affected by a unit of work; they do not restate content. See Decision 040 for format rationale.

---

# Version 0.1.1 (Foundation Hardening)

## 2026-07-11 — Runtime Model

**Decisions:** Added Decision 041 (Runtime Model); Decision 042 (Durable Canon and Promotion Obligation), refining Decision 004 and Decision 032
**Rules:** Clarified Section 2.1 (canon hierarchy is a precedence order, not a durability order); tightened Section 2.8 (mandatory Canon Promotion; transcript is a precedence tier, not a durability tier)
**Files:** Created `012_ENGINE_RUNTIME.md`
**Manifest:** Added `012_ENGINE_RUNTIME.md` and reserved `011_ENGINE_DATA_MODEL.md` to Engine Components and the repository tree; described the Rules / Data Model / Runtime separation and Runtime Profiles; Engine Version set to 0.1.1
**Glossary:** Added Runtime, Runtime Profile, Interpreter, Session, Context, Working Set, Canon, Mutation, Persistence, Durable Canon, Pending Canon, Canon Promotion, Canon-Determinism, Substrate; disambiguated Promotion
**Docs:** Reframed `docs/AI_SESSION_TEMPLATE.md` as the large-language-model Runtime Profile; added `012` to mandatory reading order in README, INDEX, DEVELOPMENT_WORKFLOW, AI_SESSION_TEMPLATE
**Roadmap:** Opened the Foundation Hardening milestone; Runtime Model complete; Data Model reserved as the next task

---

# Version 0.1.0 (Workshop Draft)

## 2026-07-11 — Engine Changelog

**Decisions:** Added Decision 040 (Engine Changelog Format)  
**Files:** Created `030_ENGINE_CHANGELOG.md`  
**Roadmap:** Engine Changelog complete. Version 0.1 — Engine Foundation fully complete.

---

## 2026-07-11 — Save State Architecture

**Decisions:** Added Decision 039 (Save State Architecture), superseding P006  
**Rules:** Added Section 13 — Save State Architecture; cross-referenced Section 2.8  
**Manifest:** Corrected `saves/` placement to `campaigns/<campaign>/saves/`; Save Format version set to 0.1.0  
**Glossary:** Added Save Checkpoint, Save Manifest; updated Machine-Readable Save  
**Docs:** Added "Resuming an Existing Campaign" to `docs/AI_SESSION_TEMPLATE.md`  
**Roadmap:** Save State Architecture complete; Version 0.6 rescoped

---

## 2026-07-11 — Historical Persistence

**Decisions:** Added Decision 038 (Historical Persistence), superseding P005  
**Rules:** Added Section 12 — Historical Persistence; cross-referenced Section 9.13  
**Manifest:** Corrected `historical/` placement to `worlds/<world>/historical/`  
**Glossary:** Added Promotion  
**Roadmap:** Historical Persistence complete; Version 0.5 rescoped

---

## 2026-07-11 — Magic & Supernatural Phenomena

**Decisions:** Added Decision 037 (Magic as World Extension), superseding P004  
**Rules:** Added Section 11 — Magic & Supernatural Phenomena; cross-referenced Section 6.18  
**Glossary:** Added Supernatural Phenomenon  
**Roadmap:** Magic Framework complete; Version 0.4 rescoped

---

## 2026-07-11 — Politics & Governance

**Decisions:** Added Decision 036 (Political Entities and Governance Scope)  
**Rules:** Added Section 10 — Politics & Governance  
**Glossary:** Added Diplomacy, Governance, Kingdom, Law, Legitimacy, Settlement, Treaty  
**Roadmap:** Politics & Governance complete

---

## 2026-07-11 — Institutions & Organizations

**Decisions:** Added Decision 034 (Institution Typing and Ledger Scope); Decision 035 (Institution Lifecycle Model), superseding P002  
**Rules:** Added Section 9 — Institutions & Organizations  
**Manifest:** Added `worlds/<world>/institutions/` sub-path  
**Glossary:** Added Founding, Governance Structure, Internal Drift, Legacy, Military Institution; updated Institution  
**Roadmap:** Institutions & Organizations complete

---

## 2026-07-11 — Persistent Entity Abstraction

**Decisions:** Added Decision 033 (Persistent Entity Abstraction), superseding P001  
**Rules:** Added Section 3.10 — Persistent Entities  
**Roadmap:** Persistent Entity Abstraction complete

---

## 2026-07-11 — Project Documentation

**Files:** Added `docs/` (README, INDEX, PROJECT_CONTEXT, AI_SESSION_TEMPLATE, CONTRIBUTING, DEVELOPMENT_WORKFLOW, Case Study 401 — The Mictian Campaign)

---

## 2026-07-11 — Canonical Record Architecture

**Decisions:** Added Decision 032 (Canonical Record Architecture), superseding P007  
**Rules:** Added Section 2.8 — Canonical Record Architecture  
**Roadmap:** Canonical Record Architecture complete

---

## 2026-07-11 — Engine Foundation

**Decisions:** Added Decisions 001–031, including Decision 031 (Research and Knowledge Evolve Through Lifecycle), superseding P003  
**Rules:** Added Sections 0–8 (Engine Laws through Research & Knowledge)  
**Files:** Added `000_ENGINE_MANIFEST.md`, `001_ENGINE_DECISIONS.md`, `002_ENGINE_ROADMAP.md`, `010_ENGINE_RULES.md`, `020_ENGINE_GLOSSARY.md`, `worlds/asterra/200_WORLD_BIBLE.md`  
**Roadmap:** Version 0.1 — Engine Foundation milestone established

---

## 2026-07-11 — Initial Structure

**Files:** Repository scaffolding established
