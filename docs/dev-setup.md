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

This creates: `%APPDATA%\Factorio\mods\tycoon_1.0.0` → `./src`

Changes in `src/` are immediately visible to Factorio — no copy step needed.

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
│   ├── info.json           # Mod metadata (name: "tycoon", version, dependencies)
│   ├── data.lua            # Entry point — requires all services
│   ├── services/
│   │   ├── recipes.lua     # Customer economy (the core of the mod)
│   │   ├── currency.lua    # Re-skins the science packs into currency denominations
│   │   ├── remove_ore.lua  # Strips all ore generation from the map
│   │   └── remove_electricity.lua  # Removes electric infrastructure
│   ├── graphics/icons/     # Custom sprites (customer.png)
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

Always test with **only `base` and `tycoon` enabled**. The mod does not support other mods or the
Space Age expansion, so any issue that only reproduces with extra mods enabled is out of scope —
see [game-design.md](game-design.md#scope-and-non-goals).

1. Edit files in `src/`
2. Check the Problems panel is still empty (see [above](#the-problems-panel-must-stay-empty))
3. Run `.\tools\run-headless.ps1` to validate mod loading (catches prototype errors without launching the GUI)
4. Run `python tools\find-missing-locale.py` to catch prototypes with no translation
5. Run `.\tools\run-dev.ps1` to playtest in-game
6. For runtime/control stage changes (if added later), use `/c` console commands or restart the save

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
keys naming a prototype that no longer exists, `{"tycoon.foo"}` strings in Lua that no `.cfg` defines,
and keys the reference language has but another language is missing.

```powershell
python tools\find-missing-locale.py             # full check (runs Factorio three times, ~5s)
python tools\find-missing-locale.py --skip-dump # reuse the cached dumps
python tools\find-missing-locale.py --all       # include the base game's own gaps
python tools\find-missing-locale.py --strict    # also fail on missing descriptions and stale keys
```

- **Exit 0** — every prototype and runtime key is translated
- **Exit 1** — missing translations found (listed as ready-to-paste `.cfg` lines)
- **Exit 2** — the check could not run (Factorio or the API docs not found)

Stdlib only, no `pip install` needed. Override the executable with `--factorio` or `FACTORIO_EXE`.
