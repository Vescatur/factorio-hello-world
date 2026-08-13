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
│   │   ├── recipes.lua     # Customer/coin economy (the core of the mod)
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

## Testing Changes

Always test with **only `base` and `tycoon` enabled**. The mod does not support other mods or the
Space Age expansion, so any issue that only reproduces with extra mods enabled is out of scope —
see [game-design.md](game-design.md#scope-and-non-goals).

1. Edit files in `src/`
2. Run `.\tools\run-headless.ps1` to validate mod loading (catches prototype errors without launching the GUI)
3. Run `.\tools\run-dev.ps1` to playtest in-game
4. For runtime/control stage changes (if added later), use `/c` console commands or restart the save

### Headless Validation

`tools/run-headless.ps1` starts Factorio as a headless server, waits for the map to load, then exits. It prints all Factorio output and returns:

- **Exit 0** — mod loaded successfully
- **Exit 1** — Factorio crashed or exited with an error (prototype/data error)
- **Exit 2** — timed out (60s) without finishing load
