# generate/

Both of these write files that are committed, and both are idempotent — a clean `git status`
after a run is how you know it worked.

- `icons.py` — `art/icons/*.svg` to `src/graphics/icons/*.png` at 64x64. The only script in
  `tools/` with a dependency; see `setup/requirements.txt`.
- `api_docs.py` — the official API dump to `factorio-docs/markdown/`. Stdlib only. Verifies its
  own output and fails on any broken internal link.
