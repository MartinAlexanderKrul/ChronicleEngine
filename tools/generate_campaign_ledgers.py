#!/usr/bin/env python3
"""Regenerate a campaign's derived asset ledgers from its character sheet.

Canon is the source; the ledger is a view. Every fact rendered comes from
`100_CHARACTER_SHEET.md`. The one thing the sheet does not carry -- and should
not, because it is presentation -- is the function grouping, which lives in the
campaign's own `assets/ledger_taxonomy.yaml`.

A skill present in the sheet with no taxonomy row is an ERROR, never a silent
omission: that is what stops a newly acquired skill from falling out of the
view unnoticed, which is the failure this generator exists to make impossible.
"""
import argparse, io, json, os, re, sys

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
    parsed, missing = [], []
    for row in skills_rows:
        rec = parse_skill(row, ents)
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

    def emit(name, template, replacements):
        tpl_file = os.path.join(assets, "templates", template)
        page = io.open(tpl_file, encoding="utf-8", newline="").read()
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

    ok = emit("alexander_pendragon_skill_ledger.html", "skill_ledger.template.html",
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
    ok = emit("alexander_pendragon_inventory_ledger.html", "inventory_ledger.template.html",
              {"EQUIPPED_DATA": "[" + chr(10) + edata + chr(10) + "]",
               "ITEMS_DATA": "[" + chr(10) + idata + chr(10) + "]",
               "TOTAL_REDUCTION": json.dumps(total_reduction, ensure_ascii=False)}) and ok

    for name, size in written:
        print("wrote %s (%d bytes)" % (name, size))
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())
