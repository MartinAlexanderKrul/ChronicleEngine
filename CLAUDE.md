# Repository Instructions

## Git commit authorship

Every commit in this repository — every session, not just the current one — must be authored and committed as **Martin Alexander Krul <m.alexander.krul@gmail.com>**, never as Claude/the repo's default git identity (`Claude <noreply@anthropic.com>`).

- Do not add a `Co-Authored-By: Claude` trailer or any other AI/model/tool attribution to any commit in this repository, under any circumstances.
- Do not change the repository's git config to achieve this (`git config user.name`/`user.email` stay untouched). Instead, pass author/committer identity explicitly on every commit, e.g.:

  ```
  GIT_AUTHOR_NAME="Martin Alexander Krul" GIT_AUTHOR_EMAIL="m.alexander.krul@gmail.com" \
  GIT_COMMITTER_NAME="Martin Alexander Krul" GIT_COMMITTER_EMAIL="m.alexander.krul@gmail.com" \
  git commit -m "..."
  ```

  or `git commit --author="Martin Alexander Krul <m.alexander.krul@gmail.com>"` (note: `--author` alone only sets the author, not the committer — set `GIT_COMMITTER_NAME`/`GIT_COMMITTER_EMAIL` too, or the committer field falls back to the local git config identity).

This applies to ordinary per-turn commits and to `/save` checkpoint commits alike — the checkpoint-commit convention of omitting AI attribution already matches this, but the author/committer identity itself needs to be set explicitly every time regardless of commit type.
