---
name: validate
description: Use when the player types /validate in a Chronicle Engine session to run repository validation on demand. Out-of-character, no campaign required.
---

# /validate — Repository Validation Gate

Thin dispatcher only — this skill exists so the harness recognizes `/validate` as a registered command; it does not reimplement the procedure.

Run the Repository Validation Gate on demand and report the real output, per `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`, section **"Repository Validation Gate"**:

```
powershell -ExecutionPolicy Bypass -File tools\validate_live.ps1
```

Never paraphrase or assume a pass — always run it and paste the actual output. Out-of-character; causes no canon change. Available with or without a loaded campaign.
