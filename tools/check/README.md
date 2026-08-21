# check/

Four ways of asking "does it still work", cheapest first. The first two are the ones `CLAUDE.md`
requires after every change; the last two are for behaviour, which has no load-time signal.

- `prototypes.ps1` — does the data stage load. Headless, no behaviour tested.
- `translations.py` — any prototype whose name or description resolves to nothing.
- `probe.ps1` + `probe_client.py` — a headless server on a **copy** of a save, driven with
  arbitrary Lua over RCON. `probe-settings.json` is what keeps it ticking with nobody connected:
  `--no-auto-pause` is not a command-line flag, and without `auto_pause: false` a harness waits
  forever for items that cannot move.
- `player.ps1` — the same idea in the real client, for the two things headless cannot do:
  anything needing a player (`build_from_cursor`, cursor stack, reach) and anything needing
  pixels.

Two traps, both of which present as something else entirely:

- **A running `probe.ps1` holds Factorio's lock file.** `prototypes.ps1` then fails with
  "Couldn't create lock file", which reads exactly like a mod error. Always `-Action stop` when
  you are done.
- **`prototypes.ps1` validates the mods folder, not `src/`.** After a `release/zip.py` build that
  folder holds a zip instead of the junction, so the check passes for old code. Re-run
  `setup/dev-mode.ps1` first.

`.verify/rcon.json` carries the running server's port and password. All three scripts resolve it
relative to their own directory, so they have to stay in this folder together.
