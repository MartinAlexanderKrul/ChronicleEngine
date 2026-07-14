# Worlds and Campaigns

Intentionally invalid fixture. It reproduces the observed startup failure: a campaign exists on disk, complete enough to be live, and no row here names it — so the Engine Welcome Page would never list it and the player cannot reach it.

The world is listed. Only `campaigns/example/` is missing, so the campaign-coverage check is the failure under test.

# Worlds

| World | Version | Status | Live campaigns | Diegetic commands |
|-------|---------|--------|----------------|-------------------|
| `worlds/example_world/` | 0.1 | Fixture | 1 | none |

# Campaigns

| Campaign | World | Protagonist | Status | Latest checkpoint | Captured |
|----------|-------|-------------|--------|-------------------|----------|
