# release/

- `zip.py` — builds the reproducible zip into `export/` and installs it in the mods folder in
  place of the dev junction. `setup/dev-mode.ps1` is how you undo that.
- `publish.py` — the whole release in one command: bumps the version in `src/info.json`, calls
  `zip.py`, uploads. Reads its API key from `../.secrets/mod-portal-api-key`.

`publish.py` imports `zip.py` as a same-directory sibling, so the two cannot be separated. That
import must stay in the `from zip import ...` form — the module shadows the `zip()` builtin, and
a bare `import zip` would make it unreachable for the rest of the file.

Publish and upload are separate API key scopes. A key holding only one answers the other
endpoint with Forbidden rather than anything more specific.
