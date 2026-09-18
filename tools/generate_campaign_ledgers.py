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

    out = os.path.join(assets, "alexander_pendragon_skill_ledger.html")
    print("skills_known rows: %d  ->  techniques: %d, annotation rows: %d"
          % (len(state.get("skills_known", [])), len(parsed), len(notes)))
    if args.check:
        current = io.open(out, encoding="utf-8", newline="").read() if os.path.exists(out) else ""
        if current != html:
            sys.stderr.write("DRIFT: %s is not what canon regenerates.\n" % out); return 1
        print("check: ledger matches canon"); return 0
    io.open(out, "w", encoding="utf-8", newline="").write(html)
    print("wrote %s (%d bytes)" % (out, len(html.encode("utf-8"))))
    return 0


if __name__ == "__main__":
    sys.exit(main())
