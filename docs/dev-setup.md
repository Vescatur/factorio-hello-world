# Development Setup

## Prerequisites

- **Factorio 2.1** installed via Steam — base game only; the Space Age expansion is **not** used or required
- **Steam** at `C:\Program Files (x86)\Steam\steam.exe`
- **VSCode** with [Factorio Mod Debug](https://marketplace.visualstudio.com/items?itemName=justarandomgeek.factoriomod-debug) extension (provides Lua intellisense for Factorio API)

## Initial Setup

### 1. Create Symlink

Run `tools/creat-link.ps1` to create a junction from the Factorio mods folder to `src/`:

```powershell
.\tools\creat-link.ps1
```

This creates: `%APPDATA%\Factorio\mods\profitorio_1.0.0` → `./src`

Changes in `src/` are immediately visible to Factorio — no copy step needed.

It also deletes any `profitorio_*.zip` that `create_zip.py` left in the mods folder. The two scripts
are a toggle: `create_zip.py` removes the junction and leaves the zip, this script removes the zip
and puts the junction back. Only one copy of the mod is ever installed, and a folder and a zip of the
same mod are two copies under one name — with both present the folder wins and the zip is ignored,
which silently makes a release build untested.

### 2. Launch for Development

Run `tools/run-dev.ps1` to start Factorio via Steam with the dev save:

```powershell
.\tools\run-dev.ps1
```

This launches Factorio with:
- `--load-game dev.zip` (the dev save file)
- `--disable-audio` (faster startup)

## Project Structure

```
factorio-hello-world/
├── src/                    # The mod (deployed via symlink)
│   ├── info.json           # Mod metadata (name: "profitorio", version, dependencies)
│   ├── data.lua            # Entry point — requires all services
│   ├── control.lua         # Runtime — single-Entrance limit, starter inventory
│   ├── services/
│   │   ├── customers.lua   # Customer tiers, their items and spoil chain (the core)
│   │   ├── currency.lua    # Re-skins six science packs into currency denominations
│   │   ├── item_groups.lua # The Profitorio tab and its subgroups
│   │   ├── entrance.lua    # The building customers arrive from + customer-new
│   │   ├── import.lua      # Buy goods with currency + the buy_* price list
│   │   ├── export.lua      # Deliver to a customer for currency + the payouts
│   │   ├── remove_ore.lua  # Strips all ore generation from the map
│   │   ├── remove_electricity.lua  # Removes electric infrastructure
│   │   ├── remove_enemies.lua      # Stops enemies generating, hides them
│   │   └── remove_military.lua     # Deletes combat recipes and technologies
│   ├── graphics/icons/     # Custom sprites (generated from art/icons/)
│   └── locale/en/          # English translations
├── tools/                  # Dev scripts (PowerShell)
├── factorio-data/          # Base game data (read-only reference, do NOT modify)
├── .vscode/settings.json   # Lua workspace config for Factorio API intellisense
└── docs/                   # Project documentation
```

## VSCode Configuration

The `.vscode/settings.json` configures the Lua language server to:
- Include Factorio's data directory for API autocompletion
- Load the Factorio Mod Debug third-party definitions
- Ignore `factorio-data/` and `factorio-docs/` so only our code is analysed

### The Problems panel must stay empty

**VSCode's Problems panel should show zero entries.** It is a real signal — a typo'd field name or an
undefined global shows up there long before `run-headless.ps1` gets a chance to fail — but only while
it is empty. One permanently-red panel and nobody reads it again.

Keeping it empty means every entry is either fixed or deliberately silenced:

- **Fix it** — the default. Unused locals, trailing whitespace, undefined globals, genuinely wrong
  field names.
- **Silence it, narrowly** — when the warning is wrong. The Factorio type definitions ship by
  [Factorio Mod Debug](https://marketplace.visualstudio.com/items?itemName=justarandomgeek.factoriomod-debug)
  are generated and imperfect: they mark optional fields required, so correct code gets flagged.
  Verify against `factorio-docs/markdown/types/` and the base game's own usage in `factorio-data/`
  first, then suppress at the exact line with a comment saying why:

  ```lua
  -- text_color is optional in the real API (and vanilla omits it), but the
  -- bundled type definitions mark it required.
  ---@diagnostic disable-next-line: missing-fields
  item.color_hint = { text = denomination.hint }
  ```

  Line-scoped `disable-next-line`, never a file-wide or workspace-wide disable of the rule — a rule
  that is wrong once is still worth running everywhere else.

`factorio-data/` and `factorio-docs/` are excluded wholesale via `Lua.workspace.ignoreDir`, plus
`Lua.diagnostics.ignoredFiles` and `Lua.diagnostics.libraryFiles` set to `"Disable"` (without those
two, the warnings come straight back the moment you open one of those files). Base game reference
data is not ours to fix, and it alone produced ~1900 warnings.

Settings changes need **`Lua: Restart Server`** from the command palette before the panel reflects them.

## Testing Changes

Always test with **only `base` and `profitorio` enabled**. The mod does not support other mods or the
Space Age expansion, so any issue that only reproduces with extra mods enabled is out of scope —
see [game-design.md](game-design.md#scope-and-non-goals).

1. Edit files in `src/`
2. Check the Problems panel is still empty (see [above](#the-problems-panel-must-stay-empty))
3. Run `.\tools\run-headless.ps1` to validate mod loading (catches prototype errors without launching the GUI)
4. Run `python tools\find-missing-locale.py` to catch prototypes with no translation — it must come back empty (see [below](#the-report-must-come-back-empty))
5. Run `.\tools\run-dev.ps1` to playtest in-game
6. For runtime/control-stage behaviour, drive the real engine — see [Verifying behaviour](#verifying-behaviour)

### Verifying behaviour

Steps 3 and 4 prove the mod *loads*. They say nothing about whether it *works*, and
`src/control.lua` and `src/runtime/` are behaviour with no load-time signal at all.

The `verify-in-engine` skill (`.claude/skills/verify-in-engine/`) covers that, with two
harnesses behind it:

- `tools/rcon-server.ps1` + `tools/factorio_rcon.py` — a headless server on a **copy** of
  a save, driven with arbitrary Lua over RCON. Fastest way to probe state, run a
  simulation, count items, or inspect a save a bug was reported against.
- `tools/run-scenario.ps1` — the same idea in the real client, for the two things headless
  cannot do: anything needing a player (`build_from_cursor`, cursor stack, reach) and
  anything needing pixels (screenshots).

The rule the skill exists to enforce: **assert the observable effect, not the API
readback.** Loaders once shipped past a suite scoring 10/10 on `loader_type` while moving
zero items. Count what arrives.

Optional, not a gate — steps 2 to 4 are the required ones.

### Headless Validation

`tools/run-headless.ps1` starts Factorio as a headless server, waits for the map to load, then exits. It prints all Factorio output and returns:

- **Exit 0** — mod loaded successfully
- **Exit 1** — Factorio crashed or exited with an error (prototype/data error)
- **Exit 2** — timed out (60s) without finishing load

### Locale Validation

`tools/find-missing-locale.py` asks Factorio for both halves of the problem — `--dump-data` lists every
prototype that exists, `--dump-prototype-locale` lists every prototype whose name and description
resolve to real text. Anything in the first dump but not the second renders as `Unknown key` in game.
The customer items and delivery recipes are generated in a loop, so this is the only reliable way to
notice when a new one ships without a translation.

It also dumps a base-only baseline, so base game internals that have no locale on purpose (projectiles,
explosions, stickers) stay out of the report, and runs three static checks over `src/locale/`: stale
keys naming a prototype that no longer exists, `{"profitorio.foo"}` strings in Lua that no `.cfg` defines,
and keys the reference language has but another language is missing.

#### The report must come back empty

**A clean run prints one line and nothing else** — no `MISSING`, `STALE`, `UNTRANSLATED` or
`UNUSED SUPPRESSIONS` block above it:

```
OK: no missing translations (14 description(s) intentionally left out).
```

(The count is whatever the suppression list currently covers.)

Same rule as the [Problems panel](#the-problems-panel-must-stay-empty), for the same reason: a report
that always lists something is a report nobody reads. Advisories are not "just advisories" — every
line in the output is either fixed or deliberately silenced, and there are only two ways to clear one:

- **Write the description** — the default. If a player would wonder what the thing does, it needs a
  sentence in `src/locale/en/hello-world.cfg`.
- **Suppress it, deliberately** — when the name already says everything, as with a building called
  Import. Paste the reported line into `INTENTIONALLY_UNDESCRIBED` at the top of
  `tools/find-missing-locale.py`, under the comment group that explains why, and add a new group if
  none fits. Use `*` for prototypes generated in a loop, so future ones are covered too:
  `recipe-description.customer_*_deliver`.

Never silence a whole category, and never suppress a missing *name* — those render as
`Unknown key: ...` in game and are always a bug.

The suppression list cannot rot: an entry that stops matching anything is reported as an unused
suppression, so a rename leaves the report dirty until the entry is deleted.

```powershell
python tools\find-missing-locale.py             # full check (runs Factorio three times, ~5s)
python tools\find-missing-locale.py --skip-dump # reuse the cached dumps
python tools\find-missing-locale.py --all       # include the base game's own gaps
python tools\find-missing-locale.py --show-suppressed  # list the intentional description gaps
python tools\find-missing-locale.py --strict    # also fail on missing descriptions, stale keys and unused suppressions
```

- **Exit 0** — every prototype and runtime key is translated
- **Exit 1** — missing translations found (listed as ready-to-paste `.cfg` lines)
- **Exit 2** — the check could not run (Factorio or the API docs not found)

Stdlib only, no `pip install` needed. Override the executable with `--factorio` or `FACTORIO_EXE`.

## Releasing

`tools/publish_mod.py update` is the whole release: it bumps the version in `src/info.json`, builds
the zip through `create_zip.py`, and uploads it to the portal.

```powershell
python tools\publish_mod.py update                 # patch bump, build, upload
python tools\publish_mod.py update --bump minor     # or major, or none to re-use this version
python tools\publish_mod.py update --version 2.0.0  # set the version outright
python tools\publish_mod.py update --zip export\profitorio_1.4.2.zip   # upload as-is
```

`publish` creates the mod page and is run once, ever; it builds the zip too but never bumps, since
there is no earlier release to move past. Without `--yes` it prints what it would do and builds
nothing.

Two consequences worth knowing:

- **The bump is a working-tree edit.** `src/info.json` is left at the new version — commit and tag it
  yourself. A failed upload keeps the bump rather than rolling it back, because a failure after the
  portal accepted the release is indistinguishable from one before it; retry with `--bump none`.
- **Building uninstalls the dev junction** (see [Create Symlink](#1-create-symlink)). Run
  `.\tools\creat-link.ps1` to get back to dev mode.
