#!/usr/bin/env python3
"""Regenerate a campaign's derived asset ledgers from its canonical records.

Canon is the source; the ledger is a view. Every skill and item rendered comes
from `100_CHARACTER_SHEET.md`; every NPC from `130_NPCS_AND_FACTIONS.md` and the
world ledger the campaign's startup declares. The one thing the sheet does not carry -- and should
not, because it is presentation -- is the function grouping, which lives in the
campaign's own `assets/ledger_taxonomy.yaml`.

A skill present in the sheet with no taxonomy row is an ERROR, never a silent
omission: that is what stops a newly acquired skill from falling out of the
view unnoticed, which is the failure this generator exists to make impossible.
"""
import argparse, io, json, os, re, shutil, sys

try:
    import yaml
except ImportError:
    sys.stderr.write("PyYAML is required (pip install pyyaml)\n"); sys.exit(2)

# A skills_known row is a skill when it opens `Name [Rank]`. Everything else in
# that list is an annotation row -- consolidation notes, ratification batches,
# player corrections -- and is not a technique.
SKILL_ROW = re.compile(
    r"^([A-Z][^\[\]]{1,60}?) \[(S-Rank|A-Rank|B-Rank|C-Rank|D-Rank|E-Rank|"
    r"Riftwalker|Riftwalker evolution|Gate Walker)\]")
MASTERY   = re.compile(r"(★{1,5}☆{0,4}\s*\w+|Master|Novice|Adept|Competent|Practiced|Expert)")
MANA      = re.compile(r"Mana ([\d,]+(?:/scene|/exchange)?)")
PASSIVE   = re.compile(r"·\s*Passive")
TAUGHT    = re.compile(r"Taught route, ([A-Z]\w+)|Taught, ([A-Z]\w+)")
USES      = re.compile(r"Uses (\d+)|Successful uses (\d+)")


def load_sheet(path):
    text = io.open(path, encoding="utf-8").read()
    blocks = re.findall(r"```yaml\n(.*?)\n```", text, re.S)
    if not blocks:
        raise SystemExit("no fenced YAML block in %s" % path)
    doc = yaml.safe_load(max(blocks, key=len))
    return doc["canonical_state"]["system_state"]


def split_rows(rows):
    skills, notes = [], []
    for row in rows:
        (skills if SKILL_ROW.match(row) else notes).append(row)
    return skills, notes


def entity_names(path):
    """ENT id -> display name, read from the campaign's NPC ledger headings."""
    out = {}
    if not os.path.exists(path):
        return out
    for m in re.finditer(r"^### (ENT-\d{6}) — (.+)$", io.open(path, encoding="utf-8").read(), re.M):
        out[m.group(1)] = m.group(2).strip()
    return out


# Word boundaries are composed rather than escaped: an editing pipeline once
# turned every word-boundary escape in these patterns into a literal backspace
# them silently match nothing and cost 23 cards their figure box.
_B = "(?<![A-Za-z])"
_E = "(?![A-Za-z])"

# A sentence is METADATA when it records provenance, authorship or counters
# rather than what the technique does.
META_PAT = re.compile("|".join([
    "transmissible:", "^Succession" + _E, "^Taught" + _E, "^Merged:",
    "^Consolidated" + _E, "Authored `EVT", "Ratified `EVT", "Rune-ascended",
    "^Uses [0-9]", "Successful uses", "qualifying scenes", "mastery progress",
    "Full (?:list|detail|per-Event)", "History:", "Detail:",
]))

# ...and a FIGURE when it carries a magnitude: damage, mitigation, restoration,
# or a modifier-step/immunity effect. Everything else is description.
FIG_PAT = re.compile("|".join([
    "[" + chr(0x2248) + chr(0xD7) + "]", "[0-9]+%",
    _B + "damage" + _E, _B + "reduction" + _E, _B + "restores?" + _E,
    _B + "heals?" + _E, _B + "immune" + _E, _B + "immunit(?:y|ies)" + _E,
    _B + "restoration" + _E, "modifier steps?" + _E,
]), re.I)


def md(text):
    """Canon is Markdown; the card renders HTML. Emphasis is content, not noise,
    so it is converted rather than stripped -- and left alone when a delimiter is
    unpaired, so an odd marker can never swallow the rest of the card."""
    for mark, tag in (("**", "b"), ("`", "code")):
        parts = text.split(mark)
        if len(parts) > 1 and len(parts) % 2 == 1:
            text = "".join(p if i % 2 == 0 else "<%s>%s</%s>" % (tag, p, tag)
                           for i, p in enumerate(parts))
    return text

def split_sentences(text):
    """Split on sentence enders, but never inside parentheses, a `code span`, or
    a **bold span**. Canon writes both `160_CAMPAIGN_CHRONICLE.md` and
    **... `transmissible: true`.** -- in each the dot sits inside a delimiter
    pair, and splitting there strands the closing marker."""
    parts, buf, depth, tick, bold = [], "", 0, False, False
    i = 0
    while i < len(text):
        if text[i:i + 2] == "**":
            bold = not bold; buf += "**"; i += 2; continue
        ch = text[i]
        if ch == "`":
            tick = not tick
        elif ch == "(" and not tick:
            depth += 1
        elif ch == ")" and not tick:
            depth = max(0, depth - 1)
        buf += ch; i += 1
        if ch in ".;" and depth == 0 and not tick and not bold:
            parts.append(buf.strip()); buf = ""
    if buf.strip():
        parts.append(buf.strip())
    return [p for p in parts if p]

def parse_skill(row, ents):
    m = SKILL_ROW.match(row)
    name, rank_raw = m.group(1).strip(), m.group(2)
    rest = row[m.end():].lstrip(" ·")
    rank = rank_raw[0] if rank_raw.endswith("-Rank") else "—"

    segs = [x.strip() for x in rest.split(" · ")]
    mastery = ""
    if segs and re.match("^[" + chr(0x2605) + chr(0x2606) + "]{1,10}|""^(?:Master|Novice|Adept|Competent|Practiced|Expert)" + _E, segs[0]):
        mastery, segs = segs[0], segs[1:]
    mana = ""
    if segs and re.match("^(?:Mana|Passive)" + _E, segs[0]) and len(segs[0]) < 120:
        head = segs[0]; segs = segs[1:]
        mm = re.match(r"^Mana ([\d,]+(?:/scene|/exchange)?)", head)
        mana = mm.group(1) if mm else ("Passive — no Mana cost" if head.startswith("Passive") else head)
    body = " · ".join(segs)

    desc, dmg, meta = [], [], []
    for sent in split_sentences(body):
        plain = sent.replace("**", "")
        if META_PAT.search(plain):
            meta.append(sent)
        elif FIG_PAT.search(plain):
            dmg.append(sent)
        else:
            desc.append(sent)

    joined = " ".join(meta)
    tm = re.search(r"Taught(?: route)?, ([A-Z][\w']+)", joined) or re.search(r"Taught(?: route)?, ([A-Z][\w']+)", body)
    ent = re.search(r"(ENT-\d{6})", joined)
    if tm:
        prov, label = "taught", "Taught — %s" % tm.group(1)
    elif "Succession" in joined or "taken_from" in joined:
        who = ents.get(ent.group(1), "") if ent else ""
        label = "Succession — %s" % (who + " kill" if who else "taken in the field")
        prov = "succession"
    elif rank_raw in ("Riftwalker", "Riftwalker evolution", "Gate Walker") or "Class ability" in body:
        prov, label = "native", "Class — %s grant" % rank_raw
    else:
        prov, label = "native", "Native"

    rec = {"fn": None, "name": name, "rank": rank, "mastery": mastery or "—",
           "prov": prov, "provLabel": label, "mana": mana or "",
           "desc": md(" ".join(desc).strip()), "meta": md(" ".join(meta).strip())}
    if dmg:
        rec["dmg"] = md(" ".join(dmg).strip())
    # Nothing canon said may be dropped: every sentence lands in exactly one field.
    kept = len(re.sub(r"\s+", "", rec["desc"] + rec.get("dmg", "") + rec["meta"]))
    total = len(re.sub(r"\s+", "", body))
    rec["_loss"] = total - kept
    return rec


# Mastery (Profile Section 7.4): five levels, three qualifying scenes each. The
# structured tracked_counters are authoritative where a skill has them; the
# skill's own "mastery progress N/3" is read where it does not; a skill that
# states neither shows its level alone rather than an invented fraction.
MASTERY_LEVELS = ["Novice", "Practiced", "Adept", "Expert", "Master"]
PROGRESS_TEXT = re.compile(r"mastery progress\**\s*([0-2])\s*/\s*3", re.I)


def mastery_track(row, name, counters):
    slug = re.sub(r"[^a-z0-9]+", "_", name.lower()).strip("_")
    level = counters.get("skills.%s.mastery_level" % slug)
    if not isinstance(level, int):
        # The stars decide; the word beside them is not always the profile's own
        # ("Apprentice" sits beside two stars on taught skills).
        head = " · ".join(row.split(" · ")[:2])
        stars = re.search("([" + chr(0x2605) + "]+)[" + chr(0x2606) + "]*", head)
        word = re.search(_B + "(" + "|".join(MASTERY_LEVELS) + ")" + _E, head)
        level = (len(stars.group(1)) if stars else
                 MASTERY_LEVELS.index(word.group(1)) + 1 if word else None)
    if level is None:
        return {"lvl": 0}
    prog = counters.get("skills.%s.mastery_progress" % slug)
    if not isinstance(prog, int):
        m = PROGRESS_TEXT.search(row)
        prog = int(m.group(1)) if m else None
    out = {"lvl": level, "prog": 3 if level >= 5 else prog}
    for key, field in (("uses", "successful_uses"), ("scenes", "qualifying_scenes_total")):
        value = counters.get("skills.%s.%s" % (slug, field))
        if isinstance(value, int):
            out[key] = value
    return out


# ---------------------------------------------------------------- inventory --
# Canon files items under six storage lists (keys, consumables, special, gear,
# custody, materials). The view splits `gear` into Weapon/Armor/Accessory/Tool,
# which canon does not carry and should not -- that mapping is taxonomy, exactly
# as the skill function grouping is.
SLOT_LABEL = {"main_hand": "Main Hand", "off_hand": "Off Hand", "head": "Head",
              "torso": "Torso", "legs": "Legs", "feet": "Feet", "hands": "Hands",
              "ring": "Ring", "neck": "Neck", "back": "Back", "waist": "Waist",
              "accessory": "Accessory"}
GROUP_CAT = {"keys": "Key", "consumables": "Consumable", "special": "Special",
             "custody": "Custody", "materials": "Material"}
QTY = re.compile("(?:" + chr(0xD7) + "|x)\s?([0-9][0-9,]*)", re.I)
RANKED = re.compile(r"\[([SABCDE])-Rank\]")


def strip_bold_name(row):
    """An item row opens with its name, usually bolded, then an em/double dash."""
    text = row.strip()
    if text.startswith("**"):
        end = text.find("**", 2)
        if end > 0:
            return text[2:end].strip(), text[end + 2:].lstrip(" " + chr(0x2014) + "-").strip()
    for sep in (" " + chr(0x2014) + " ", " -- "):
        if sep in text:
            head, tail = text.split(sep, 1)
            return head.strip().strip("*"), tail.strip()
    return text.strip().strip("*"), ""


def parse_item(row, group, cat_of):
    name, body = strip_bold_name(row)
    rank_m = RANKED.search(name)
    rank = rank_m.group(1) if rank_m else ""
    qty_m = QTY.search(name)
    qty = qty_m.group(1) if qty_m else ""
    clean = QTY.sub("", name).replace("**", "").strip(" " + chr(0x2014) + ",")

    cat = GROUP_CAT.get(group)
    missing = None
    if cat is None:                      # gear: needs a taxonomy row
        cat = cat_of.get(clean)
        if cat is None:
            missing = clean

    stats, desc = [], []
    for sent in split_sentences(body):
        (stats if FIG_PAT.search(sent.replace("**", "")) and not stats else desc).append(sent)
    low = body.lower()
    tag = ("equipped" if "equipped" in low and "unequipped" not in low else
           "custody" if group == "custody" or "held by" in low else
           "earmarked" if "earmark" in low else
           "banked" if "banked" in low or "unequipped" in low else "")

    rec = {"cat": cat, "name": clean + ((" " + chr(0xD7) + " " + qty) if qty else ""),
           "rank": rank, "stats": md(" ".join(stats).strip()),
           "desc": md(" ".join(desc).strip()), "tag": tag}
    kept = len(re.sub(r"\s+", "", rec["stats"] + rec["desc"]))
    total = len(re.sub(r"\s+", "", body))
    rec["_loss"] = total - kept
    rec["_missing"] = missing
    return rec


def build_inventory(state, assets, taxonomy, campaign):
    cat_of = taxonomy.get("items", {}) or {}
    inv = state.get("inventory", {}) or {}
    items, missing = [], []
    for group, rows in inv.items():
        for row in (rows if isinstance(rows, list) else []):
            rec = parse_item(row, group, cat_of)
            if rec["_missing"]:
                missing.append(rec["_missing"])
            items.append(rec)
    if missing:
        print("Ledger generation FAILED: %d gear item(s) have no ledger_taxonomy.yaml "
              "row, so they would silently vanish from the view:" % len(missing), file=sys.stderr)
        for n in missing:
            print("  - " + n, file=sys.stderr)
        return None, None, missing, ""

    equipped = []
    equip = dict(state.get("equipment", {}) or {})
    total_reduction = equip.pop("total_physical_reduction", "")
    for slot, text in equip.items():
        nm, body = strip_bold_name(text)
        rm = RANKED.search(nm)
        stats, desc = [], []
        for sent in split_sentences(body):
            (stats if FIG_PAT.search(sent.replace("**", "")) and not stats else desc).append(sent)
        equipped.append({"slot": SLOT_LABEL.get(slot, slot.replace("_", " ").title()),
                         "name": RANKED.sub("", nm).replace("**", "").strip(" ,"),
                         "rank": rm.group(1) if rm else "",
                         "stats": md(" ".join(stats).strip()),
                         "desc": md(" ".join(desc).strip())})
    return items, equipped, [], md(strip_bold_name(total_reduction)[0] + " " + strip_bold_name(total_reduction)[1]).strip()


# The NPC ledger reads every Character record in the campaign's NPC ledger and
# in the world ledger its startup declares. Fields that carry what the player
# has not been told -- an NPC's secret, its off-screen agenda, the knowledge
# boundary the channel check reads -- stay out of a page meant to be browsed.
NPC_HIDDEN = {"secret", "prior_secret", "agenda", "agenda_at_death", "knowledge",
              "beliefs", "open_questions", "moved_by_events",
              "portrait", "portrait_guild", "portrait_full", "portrait_mundane"}
NPC_ORDER = ["affiliation", "home", "age", "role", "rank", "pools", "pool_variance", "location", "condition",
             "situation", "appearance", "personality", "voice", "capabilities",
             "signature_ability", "want", "fear"]
NPC_RANK = re.compile(r"(?<![A-Za-z])([SABCDE])-Rank")
PROTAGONIST = "ENT-000125"

# Every page this generator writes, keyed. Templates never spell a filename:
# they write {{ledger:<key>}} where they link to one, and <!--{{ledger-nav}}-->
# where the switcher goes, and both are filled from here as relative links --
# so the pages work from any folder or host, and a rename is one line.
LEDGERS = {
    "index": ("index.html", "All ledgers"),
    "inventory": ("alexander_pendragon_inventory_ledger.html", "Inventory"),
    "skills": ("alexander_pendragon_skill_ledger.html", "Skills"),
    "npc": ("alexander_pendragon_npc_ledger.html", "NPCs"),
    "guild": ("alexander_pendragon_guild_ledger.html", "Guild"),
}


def link_ledgers(page, current):
    nav = "\n".join('      <a href="%s"%s>%s</a>' % (f, ' aria-current="page"' if k == current else "", label)
                    for k, (f, label) in LEDGERS.items())
    page = page.replace("<!--{{ledger-nav}}-->", "\n" + nav + "\n    ")
    page = re.sub(r"\{\{ledger:(\w+)\}\}", lambda m: LEDGERS[m.group(1)][0] if m.group(1) in LEDGERS else m.group(0), page)
    left = re.findall(r"\{\{ledger[^}]*\}\}", page)
    if left:
        raise SystemExit("unresolved ledger link(s) in the %s template: %s" % (current, ", ".join(left)))
    return page


def fenced_records(path):
    text = io.open(path, encoding="utf-8").read()
    docs = []
    for block in re.findall(r"```yaml\n(.*?)\n```", text, re.S):
        doc = yaml.safe_load(block)
        if isinstance(doc, dict):
            docs.append(doc)
    return text, docs


ITALIC = re.compile(r"(?<![*\w])\*(?![*\s])([^*\n]+?)(?<![*\s])\*(?![*\w])")


def mdi(text):
    """md() plus single-star italics. The NPC and guild views need it -- canon
    quotes speech as *this* -- and the skill and inventory views keep md() alone
    so their output does not move."""
    return ITALIC.sub(r"<i>\1</i>", md(text))


def escape(text):
    return text.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;")


def npc_value(value):
    if isinstance(value, dict):
        return "<br>".join("<b>%s</b>: %s" % (escape(str(k)), npc_value(v)) for k, v in value.items())
    if isinstance(value, list):
        return "<br>".join(npc_value(v) for v in value)
    return mdi(escape(str(value).strip())).replace("\n", "<br>")


def affiliation_orgs(value):
    """`affiliation` reads "Org — detail; Org — detail". The organisation is what
    precedes the last dash of each part, so a name that itself carries one
    ("Horizon Guild — Europe — Prague branch chief") keeps it."""
    orgs = []
    for part in str(value or "").split(";"):
        part = part.strip()
        if not part:
            continue
        org = part.rsplit(" " + chr(0x2014) + " ", 1)[0].strip() if (" " + chr(0x2014) + " ") in part else part
        if org and org not in orgs:
            orgs.append(org)
    return orgs


def summary_line(value, limit=240):
    if not isinstance(value, str) or not value.strip():
        return ""
    first = (split_sentences(value.strip()) or [value.strip()])[0].rstrip(";")
    if len(first) > limit:
        first = first[:limit].rsplit(" ", 1)[0] + chr(0x2026)
    return mdi(escape(first))


# A published ledger is the `assets/` folder on its own, so a world figure's
# portrait -- which lives with the world, not the campaign -- is mirrored into
# this folder. The generator owns it outright: a copy nothing references is
# removed, and --check reports a stale or missing one as drift.
WORLD_PORTRAITS = os.path.join("portraits", "world")


def build_npcs(root, camp, assets):
    startup = io.open(os.path.join(camp, "090_CAMPAIGN_STARTUP.md"), encoding="utf-8").read()
    world_m = re.search(r"^\s*world_ledger:\s*(\S+)", startup, re.M)
    sources = [("campaign", os.path.join(camp, "130_NPCS_AND_FACTIONS.md"))]
    if world_m:
        sources.append(("world", os.path.join(root, world_m.group(1))))

    npcs, rels, failures, mirror = {}, {}, [], {}
    for scope, path in sources:
        text, docs = fenced_records(path)
        declared = len(re.findall(r"^type: Character\s*$", text, re.M))
        chars = [d for d in docs if d.get("type") == "Character"]
        if len(chars) != declared:
            failures.append("%s declares %d Character records but %d parsed"
                            % (os.path.relpath(path, root), declared, len(chars)))
        for d in docs:
            ends = d.get("endpoints") or []
            if str(d.get("id", "")).startswith("REL-") and PROTAGONIST in ends:
                for other in ends:
                    if other != PROTAGONIST:
                        rels.setdefault(other, []).append(d)
        base = os.path.dirname(path)
        headings = entity_names(path)
        for d in chars:
            ent = d.get("id")
            if ent == PROTAGONIST or ent in npcs:
                continue
            names = [a.get("name") for a in d.get("aliases") or [] if isinstance(a, dict)]
            current = [a.get("name") for a in d.get("aliases") or []
                       if isinstance(a, dict) and a.get("quality") == "current"]
            name = (current or names or [headings.get(ent)])[0]
            if not name:
                failures.append("%s has no name" % ent)
                continue
            state = d.get("canonical_state") or {}
            pics = {}
            for key in ("portrait", "portrait_guild"):
                if state.get(key):
                    disk = os.path.join(base, state[key])
                    if not os.path.exists(disk):
                        failures.append("%s (%s) %s points at a missing file: %s"
                                        % (name, ent, key, state[key]))
                    if scope == "world":
                        dest = os.path.join(WORLD_PORTRAITS, os.path.basename(disk))
                        mirror[dest] = disk
                    else:
                        dest = os.path.relpath(disk, assets)
                    pics[key] = dest.replace(os.sep, "/")
            # The Rank line decides. Only a record with no Rank line at all falls
            # back to a hunter's subtype ("guild hunter -- A-Rank striker") -- a
            # role that merely mentions a Rank ("S-Rank Liaison") is about other
            # people, and an unawakened fixer's condition is about a dungeon.
            subtype = str(d.get("subtype", ""))
            rank_m = (NPC_RANK.search(str(state["rank"])) if "rank" in state else
                      NPC_RANK.search(subtype) if re.search("hunter", subtype, re.I) else None)
            keys = [k for k in NPC_ORDER if k in state] + \
                   [k for k in state if k not in NPC_ORDER and k not in NPC_HIDDEN]
            npcs[ent] = {
                "id": ent, "name": escape(str(name)), "rank": rank_m.group(1) if rank_m else "",
                "role": mdi(escape(str(d.get("subtype") or state.get("role") or ""))),
                "status": d.get("lifecycle") or d.get("status") or "active",
                "source": scope,
                "portrait": pics.get("portrait", ""), "portraitGuild": pics.get("portrait_guild", ""),
                "aff": mdi(escape(str(state.get("affiliation") or ""))),
                "orgs": affiliation_orgs(state.get("affiliation")),
                "home": mdi(escape(str(state.get("home") or ""))),
                "loc": summary_line(state.get("location")),
                "cond": summary_line(state.get("condition")),
                "fields": [[k.replace("_", " "), npc_value(state[k])] for k in keys
                           if state[k] not in (None, "")],
            }
    for ent, rec in npcs.items():
        rec["rels"] = [{"type": str(r.get("type", "")).replace("-", " "),
                        "text": npc_value(r.get("qualities", ""))} for r in rels.get(ent, [])]
    return sorted(npcs.values(), key=lambda r: r["name"].lower()), failures, mirror


def sync_portraits(assets, mirror, check):
    """Mirror the world portraits the NPC ledger links. Returns (ok, copied, removed)."""
    folder = os.path.join(assets, WORLD_PORTRAITS)
    have = set(os.listdir(folder)) if os.path.isdir(folder) else set()
    want = {os.path.basename(d): s for d, s in mirror.items()}
    stale = [n for n, src in want.items()
             if n not in have or io.open(os.path.join(folder, n), "rb").read() != io.open(src, "rb").read()]
    extra = sorted(have - set(want))
    if check:
        for n in stale:
            print("DRIFT: portraits/world/%s is missing or out of date." % n, file=sys.stderr)
        for n in extra:
            print("DRIFT: portraits/world/%s is no longer referenced." % n, file=sys.stderr)
        return not (stale or extra), 0, 0
    os.makedirs(folder, exist_ok=True)
    for n in stale:
        shutil.copyfile(want[n], os.path.join(folder, n))
    for n in extra:
        os.remove(os.path.join(folder, n))
    return True, len(stale), len(extra)


# ---------------------------------------------------------------- guild --
# The guild has no record of its own. Its offices come from the hunter
# population model, its people from each NPC's `affiliation`, its mark from the
# identity note in the NPC ledger, and its Gate history from the operational
# clearance log -- which is not canon, and the page says so.
GUILD = "Pendragon Guild"
DASH = " " + chr(0x2014) + " "


def md_tables(text, heading):
    """Rows of every pipe table under `## heading`, as dicts, plus the prose
    paragraphs between them."""
    m = re.search(r"^## %s\s*$(.*?)(?=^## |\Z)" % re.escape(heading), text, re.M | re.S)
    if not m:
        return None, []
    rows, notes, head = [], [], None
    for block in re.split(r"\n\s*\n", m.group(1).strip()):
        lines = [l for l in block.strip().split("\n") if l.strip()]
        if lines and lines[0].startswith("|"):
            head = [c.strip() for c in lines[0].strip("|").split("|")]
            for line in lines[2:]:
                cells = [c.strip() for c in line.strip().strip("|").split("|")]
                rows.append(dict(zip(head, cells)))
        elif lines and not lines[0].startswith("---"):
            notes.append(" ".join(lines))
    return rows, notes


def plain_int(cell):
    digits = re.sub(r"[^0-9]", "", cell.split("(")[0])
    return int(digits) if digits else 0


def build_guild(camp, npcs, protagonist):
    failures = []
    model = io.open(os.path.join(camp, "151_HUNTER_POPULATION_MODEL.md"), encoding="utf-8").read()
    table, _ = md_tables(model, "3. Canonical office table (supersedes OBJ-60's per-office splits)")
    if not table:
        return None, ["151_HUNTER_POPULATION_MODEL.md has no canonical office table"]
    total = next((r for r in table if "Total" in r.get("Office", "")), None)
    offices = []
    for r in table:
        if r is total:
            continue
        name = r["Office"].replace("**", "").strip()
        ranks = {k: plain_int(r.get(k, "")) for k in "EDCBAS"}
        s_names = re.findall(r"\(([^)]+)\)", r.get("S", ""))
        offices.append({"name": name, "ranks": ranks, "sNames": s_names,
                        "members": plain_int(r["Guild Members"]),
                        "cityPop": r.get("City Pop.", ""), "metroPop": r.get("Metro Pop.", ""),
                        "est": r.get("Est. Licensed Hunters", ""), "capture": r.get("Capture %", ""),
                        "staff": []})
    summed = sum(o["members"] for o in offices)
    stated = plain_int(total["Guild Members"]) if total else summed
    if summed != stated:
        failures.append("151's office table sums to %d members but states a total of %d" % (summed, stated))

    by_office = {o["name"]: o for o in offices}
    by_name = {re.sub(r"<[^>]+>", "", n["name"]): n for n in npcs}
    for o in offices:
        o["sNames"] = [{"name": s, "id": by_name[s]["id"] if s in by_name else ""} for s in o["sNames"]]
    groups = {k: [] for k in ("leadership", "board", "hq", "pool", "advisers", "artificers", "founding", "members")}
    groups["leadership"].append(dict(protagonist, post="Founder"))
    groups["board"].append(dict(protagonist, post="Founder's seat"))
    roster = 0
    for n in npcs:
        if GUILD not in n["orgs"]:
            continue
        roster += 1
        raw = [p.strip() for p in re.sub(r"<[^>]+>", "", n["aff"]).split(";")]
        detail = next((p.split(DASH, 1)[1] for p in raw if p.startswith(GUILD + DASH)), "")
        who = {"id": n["id"], "name": n["name"], "rank": n["rank"], "portrait": n["portrait"], "post": detail}
        office = re.match(r"(?:member, )?(.+?) (?:office|dispatch crew)\b,? ?(.*)", detail)
        low = detail.lower()
        # A board seat sits beside a person's role rather than replacing it:
        # the second in command also holds one.
        lead = "second in command" in low or "senior combat lead" in low
        if "board seat" in low:
            groups["board"].append(dict(who, post="board seat") if lead else who)
        if lead:
            groups["leadership"].append(dict(who, post=re.sub(r",? ?board seat", "", detail).strip(", ")))
        elif "board seat" in low:
            pass
        elif low.startswith("hq"):
            groups["hq"].append(dict(who, post=detail.split(",", 1)[-1].strip()))
        elif office and office.group(1) in by_office:
            by_office[office.group(1)]["staff"].append(dict(who, post=office.group(2) or "member"))
        elif "response pool" in low:
            groups["pool"].append(dict(who, post=detail.split(",", 1)[-1].strip()))
        elif "consultant" in low:
            groups["advisers"].append(who)
        elif "artificer" in low:
            groups["artificers"].append(who)
        elif "pre-guild crew" in low:
            groups["founding"].append(who)
        else:
            groups["members"].append(who)

    log = io.open(os.path.join(camp, "096_GUILD_CLEARANCE_LOG.md"), encoding="utf-8").read()
    cleared, cleared_notes = md_tables(log, "Clearances")
    open_, open_notes = md_tables(log, "Open and assigned, not yet cleared")
    rules_m = re.search(r"^## Standing rules this log records\s*$(.*?)(?=^## |\Z)", log, re.M | re.S)
    rules = [mdi(escape(x.strip())) for x in re.findall(r"^\d+\.\s+(.*)$", rules_m.group(1), re.M)] if rules_m else []
    cell = lambda rows: [{k: mdi(escape(v)) for k, v in r.items()} for r in rows or []]

    identity = io.open(os.path.join(camp, "130_NPCS_AND_FACTIONS.md"), encoding="utf-8").read()
    idm = re.search(r"^## The Pendragon Guild " + chr(0x2014) + r" Visual Identity\s*$(.*?)(?=^## )", identity, re.M | re.S)
    design = re.search(r"^\*\*Design:\*\*\s*(.+)$", idm.group(1), re.M) if idm else None
    logo = re.search(r'^\s*logo:\s*"assets/(.+?)"', idm.group(1), re.M) if idm else None
    logo_rev = re.search(r'^\s*logo_reversed:\s*"assets/(.+?)"', idm.group(1), re.M) if idm else None

    return {
        "offices": offices, "total": stated, "estTotal": total.get("Est. Licensed Hunters", "").replace("**", "") if total else "",
        "captureTotal": total.get("Capture %", "").replace("**", "") if total else "",
        "roster": roster, "groups": groups,
        "cleared": cell(cleared), "clearedNotes": [mdi(escape(x)) for x in cleared_notes],
        "open": cell(open_), "rules": rules,
        "logo": logo.group(1) if logo else "", "logoReversed": logo_rev.group(1) if logo_rev else "",
        "design": mdi(escape(design.group(1))) if design else "",
    }, failures


# ---------------------------------------------------------------- wealth --
# Funds come from 120's `current_funds` block, which the repository validator
# holds to the ledger's own provenance on every save. Its prose notes are not
# YAML-safe as a whole, so the four figures are read by name. Properties are the
# Place records in the NPC ledger that carry an `ownership` field.
FUND_FIELDS = {"cash": "cash_usd", "gold": "gold", "pending": "pending_payouts_usd",
               "pendingCount": "pending_payout_count"}


def build_wealth(camp, assets):
    failures = []
    ledger = io.open(os.path.join(camp, "120_INVENTORY_AND_OWNERSHIP.md"), encoding="utf-8").read()
    block = re.search(r"^## Current Funds\s*$.*?```yaml\ncurrent_funds:\n(.*?)\n```", ledger, re.M | re.S)
    funds = {}
    if not block:
        failures.append("120_INVENTORY_AND_OWNERSHIP.md has no Current Funds block")
    else:
        for key, field in FUND_FIELDS.items():
            m = re.search(r"^  %s:\s*([0-9.]+)\s*$" % field, block.group(1), re.M)
            if not m:
                failures.append("current_funds has no %s" % field)
                continue
            funds[key] = float(m.group(1)) if "." in m.group(1) else int(m.group(1))
        asof = re.search(r'^  as_of_game_date:\s*"?([^"\n]+)"?', block.group(1), re.M)
        funds["asOf"] = asof.group(1)[:10] if asof else ""

    properties = []
    text = io.open(os.path.join(camp, "130_NPCS_AND_FACTIONS.md"), encoding="utf-8").read()
    for raw in re.findall(r"```yaml\n(.*?)\n```", text, re.S):
        if "\n  ownership:" not in raw:
            continue
        d = yaml.safe_load(raw)
        state = d.get("canonical_state") or {}
        if d.get("type") != "Place" or not state.get("ownership"):
            continue
        own = str(state["ownership"])
        # photo, photo_alt, then any `gallery` entries: each a path, or a
        # {path, caption} mapping. A caption not given is read off the
        # filename -- what sets it apart from the first photo's name.
        entries = [(state.get(k), None) for k in ("photo", "photo_alt") if state.get(k)]
        for g in state.get("gallery") or []:
            entries.append((g.get("path"), g.get("caption")) if isinstance(g, dict) else (g, None))
        photos, first = [], None
        for path, caption in entries:
            disk = os.path.join(camp, str(path))
            if not os.path.exists(disk):
                failures.append("%s photo points at a missing file: %s" % (d["id"], path))
            stem = re.sub(r"_?ENT-\d{6}", "", os.path.splitext(os.path.basename(str(path)))[0])
            first = first if first is not None else stem
            if caption is None:
                a, b = first.split("_"), stem.split("_")
                n = 0
                while n < min(len(a), len(b)) and a[n] == b[n]:
                    n += 1
                tail = " ".join(b[n:]) if stem != first else ""
                caption = tail.capitalize() if tail else "Main view"
            photos.append({"src": os.path.relpath(disk, assets).replace(os.sep, "/"), "caption": escape(str(caption))})
        price = re.search(r"\$[0-9]{1,3}(?:,[0-9]{3})*(?:\.[0-9]+)?", own)
        properties.append({
            "id": d["id"], "name": escape(str((d.get("aliases") or [{}])[0].get("name") or d["id"])),
            "kind": escape(str(d.get("subtype") or "")), "status": d.get("lifecycle") or "",
            "tenure": "Leased" if re.search(r"(?i)\blease", own) else "Owned",
            "price": price.group(0) if price else "",
            "location": mdi(escape(str(state.get("location") or ""))),
            "ownership": mdi(escape(own)),
            "summary": summary_line(state.get("condition"), 320),
            "details": [[k.replace("_", " "), npc_value(state[k])] for k in
                        ("condition", "layout", "furnishing", "contents", "situation", "note") if state.get(k)],
            "photos": photos,
        })
    properties.sort(key=lambda p: (p["tenure"] != "Owned", -float(p["price"].strip("$").replace(",", "") or 0)))
    return dict(funds, properties=properties), failures


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--campaign", required=True)
    ap.add_argument("--repository-root", default=".")
    ap.add_argument("--check", action="store_true",
                    help="regenerate and diff without writing; non-zero on drift")
    args = ap.parse_args()

    root = os.path.abspath(args.repository_root)
    camp = os.path.join(root, "campaigns", args.campaign)
    assets = os.path.join(camp, "assets")
    state = load_sheet(os.path.join(camp, "100_CHARACTER_SHEET.md"))
    taxonomy = yaml.safe_load(io.open(os.path.join(assets, "ledger_taxonomy.yaml"),
                                      encoding="utf-8").read())
    fn_of = taxonomy.get("skills", {}) or {}

    ents = entity_names(os.path.join(camp, "130_NPCS_AND_FACTIONS.md"))
    skills_rows, notes = split_rows(state.get("skills_known", []))
    counters = {c["path"]: c.get("current_value") for c in state.get("tracked_counters", []) or []
                if isinstance(c, dict) and "path" in c}
    parsed, missing = [], []
    for row in skills_rows:
        rec = parse_skill(row, ents)
        rec.update(mastery_track(row, rec["name"], counters))
        fn = fn_of.get(rec["name"])
        if fn is None:
            missing.append(rec["name"]); continue
        rec["fn"] = fn
        parsed.append(rec)

    if missing:
        sys.stderr.write(
            "Ledger generation FAILED: %d skill(s) in the character sheet have no "
            "ledger_taxonomy.yaml row, so they would silently vanish from the view:\n"
            % len(missing))
        for n in missing:
            sys.stderr.write("  - %s\n" % n)
        sys.stderr.write("Add each to campaigns/%s/assets/ledger_taxonomy.yaml.\n" % args.campaign)
        return 1

    order = taxonomy.get("groups", [])
    parsed.sort(key=lambda r: (order.index(r["fn"]) if r["fn"] in order else 99, r["name"]))
    lost = [(r["name"], r.pop("_loss")) for r in parsed]
    dropped = [(n, c) for n, c in lost if c > 0]
    if dropped:
        print("Ledger generation FAILED: canon text was dropped for %d skill(s):" % len(dropped), file=sys.stderr)
        for n, c in dropped[:20]:
            print("  - %s (%d characters unaccounted for)" % (n, c), file=sys.stderr)
        return 1
    print("text coverage: every sentence of all %d entries placed, none dropped" % len(parsed))
    print("figure boxes: %d   teacher/kill named: %d"
          % (sum(1 for r in parsed if r.get("dmg")),
             sum(1 for r in parsed if chr(0x2014) in r["provLabel"])))
    data = ",\n".join(json.dumps(r, ensure_ascii=False) for r in parsed)

    tpl_path = os.path.join(assets, "templates", "skill_ledger.template.html")
    tpl = io.open(tpl_path, encoding="utf-8", newline="").read()
    html = re.sub(r"/\*__SKILLS_DATA__\*/.*?/\*__END__\*/",
                  lambda _: "/*__SKILLS_DATA__*/[\n%s\n]/*__END__*/" % data, tpl, flags=re.S)

    written = []

    def emit(key, template, replacements):
        name = LEDGERS[key][0]
        tpl_file = os.path.join(assets, "templates", template)
        page = link_ledgers(io.open(tpl_file, encoding="utf-8", newline="").read(), key)
        for marker, payload in replacements.items():
            token = "/*__%s__*/" % marker
            head, _, rest = page.partition(token)
            _, _, rest = rest.partition("/*__END__*/")
            page = head + token + payload + "/*__END__*/" + rest
        target = os.path.join(assets, name)
        if args.check:
            have = io.open(target, encoding="utf-8", newline="").read() if os.path.exists(target) else ""
            if have != page:
                print("DRIFT: %s is not what canon regenerates." % target, file=sys.stderr)
                return False
            print("check: %s matches canon" % name)
            return True
        io.open(target, "w", encoding="utf-8", newline="").write(page)
        written.append((name, len(page.encode("utf-8"))))
        return True

    ok = emit("skills", "skill_ledger.template.html",
              {"SKILLS_DATA": "[" + chr(10) + data + chr(10) + "]"})

    items, equipped, missing, total_reduction = build_inventory(state, assets, taxonomy, args.campaign)
    if missing:
        return 1
    lost_items = [(r["name"], r.pop("_loss")) for r in items]
    for r in items:
        r.pop("_missing", None)
    dropped_items = [(n, c) for n, c in lost_items if c > 0]
    if dropped_items:
        print("Ledger generation FAILED: canon text was dropped for %d item(s):" % len(dropped_items), file=sys.stderr)
        for n, c in dropped_items[:20]:
            print("  - %s (%d characters unaccounted for)" % (n, c), file=sys.stderr)
        return 1
    order = taxonomy.get("item_groups", [])
    items.sort(key=lambda r: (order.index(r["cat"]) if r["cat"] in order else 99, r["name"]))
    print("inventory: %d items across %d storage lists, %d equipped slots, none dropped"
          % (len(items), len(state.get("inventory", {}) or {}), len(equipped)))
    idata = ("," + chr(10)).join(json.dumps(r, ensure_ascii=False) for r in items)
    edata = ("," + chr(10)).join(json.dumps(r, ensure_ascii=False) for r in equipped)
    ok = emit("inventory", "inventory_ledger.template.html",
              {"EQUIPPED_DATA": "[" + chr(10) + edata + chr(10) + "]",
               "ITEMS_DATA": "[" + chr(10) + idata + chr(10) + "]",
               "TOTAL_REDUCTION": json.dumps(total_reduction, ensure_ascii=False)}) and ok

    npcs, failures, mirror = build_npcs(root, camp, assets)
    if failures:
        print("Ledger generation FAILED: %d NPC record(s) cannot be rendered faithfully:"
              % len(failures), file=sys.stderr)
        for f in failures:
            print("  - " + f, file=sys.stderr)
        return 1
    unplaced = [r["name"] for r in npcs if not r["aff"] or not r["home"]]
    if unplaced:
        print("warning: %d NPC(s) have no `affiliation` or `home`, so their cards show a dash "
              "and no affiliation filter finds them: %s" % (len(unplaced), ", ".join(unplaced)), file=sys.stderr)
    print("npcs: %d characters, %d with a portrait, %d tied to the protagonist"
          % (len(npcs), sum(1 for r in npcs if r["portrait"]), sum(1 for r in npcs if r["rels"])))
    ndata = ("," + chr(10)).join(json.dumps(r, ensure_ascii=False).replace("</", "<\\/") for r in npcs)
    ok = emit("npc", "npc_ledger.template.html",
              {"NPC_DATA": "[" + chr(10) + ndata + chr(10) + "]"}) and ok
    sheet_text = io.open(os.path.join(camp, "100_CHARACTER_SHEET.md"), encoding="utf-8").read()
    founder_pic = re.search(r'^\s*portrait:\s*"assets/(.+?)"', sheet_text, re.M)
    guild, failures = build_guild(camp, npcs, {"id": PROTAGONIST, "name": "Alexander Pendragon", "rank": "S",
                                                "portrait": founder_pic.group(1) if founder_pic else ""})
    if failures:
        print("Ledger generation FAILED: the guild ledger cannot be rendered faithfully:", file=sys.stderr)
        for f in failures:
            print("  - " + f, file=sys.stderr)
        return 1
    print("guild: %d members across %d offices, %d named people, %d clearances"
          % (guild["total"], len(guild["offices"]), guild["roster"] + 1, len(guild["cleared"])))
    ok = emit("guild", "guild_ledger.template.html",
              {"GUILD_DATA": json.dumps(guild, ensure_ascii=False).replace("</", "<\\/")}) and ok

    # The index opens on the bearer's medallion, read from the same sheet, so
    # the one page that introduces the ledgers carries no hand-typed figure.
    doc = yaml.safe_load(max(re.findall(r"```yaml\n(.*?)\n```", sheet_text, re.S), key=len))
    bearer, sysst = doc["canonical_state"], doc["canonical_state"]["system_state"]
    pool = lambda v: " / ".join("{:,}".format(int(x)) for x in str(v).split("/")) if v else ""
    pics = {}
    for key, field in (("portrait", "portrait"), ("full", "portrait_full"), ("mundane", "portrait_mundane")):
        if bearer.get(field):
            disk = os.path.join(camp, bearer[field])
            if not os.path.exists(disk):
                print("Ledger generation FAILED: the protagonist's %s points at a missing file: %s"
                      % (field, bearer[field]), file=sys.stderr)
                return 1
            pics[key] = os.path.relpath(disk, assets).replace(os.sep, "/")
    wealth, failures = build_wealth(camp, assets)
    if failures:
        print("Ledger generation FAILED: the medallion's wealth cannot be rendered faithfully:", file=sys.stderr)
        for f in failures:
            print("  - " + f, file=sys.stderr)
        return 1
    print("wealth: $%s cash, %s gold, %d properties"
          % ("{:,.2f}".format(wealth["cash"]), "{:,}".format(wealth["gold"]), len(wealth["properties"])))
    titles = sysst.get("title") or []
    profile = {
        "name": (doc.get("aliases") or [{}])[0].get("name", "Alexander Pendragon"),
        "rank": sysst.get("system_rank", ""), "cls": sysst.get("class", ""),
        "level": sysst.get("level", ""), "age": bearer.get("age", ""),
        "health": pool(sysst.get("health")), "mana": pool(sysst.get("mana")), "xp": pool(sysst.get("xp")),
        "role": "Founder, " + GUILD, "portraits": pics,
        "titles": [mdi(escape(str(x))) for x in (titles if isinstance(titles, list) else [titles])],
        "now": summary_line(bearer.get("location")), "appearance": summary_line(bearer.get("appearance")),
        "personality": summary_line(bearer.get("personality")), "aspiration": summary_line(bearer.get("aspiration")),
        "wealth": wealth,
    }
    ok = emit("index", "index.template.html",
              {"PROFILE_DATA": json.dumps(profile, ensure_ascii=False).replace("</", "<\\/")}) and ok

    synced, copied, removed = sync_portraits(assets, mirror, args.check)
    ok = synced and ok
    if args.check and synced:
        print("check: portraits/world holds the %d world portraits the NPC ledger links" % len(mirror))
    elif not args.check:
        print("portraits/world: %d linked, %d copied, %d removed" % (len(mirror), copied, removed))

    for name, size in written:
        print("wrote %s (%d bytes)" % (name, size))
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())
