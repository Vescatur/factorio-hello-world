# setup/

Run once per machine — plus `dev-mode.ps1` again after every release build.

- `dev-mode.ps1` — junctions `src/` into the Factorio mods folder. Also deletes any zip
  `release/zip.py` left there: a folder and a zip of the same mod are two installs under one
  name, the folder wins, and the release build you meant to test is silently ignored.
- `requirements.txt` — the single pip dependency. Only `generate/icons.py` needs it; every other
  script in `tools/` is stdlib-only, which is why this is one line rather than a lockfile.
