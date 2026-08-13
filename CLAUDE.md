# Tycoon — Factorio 2.1 Total Overhaul Mod

A constraint-based overhaul mod inspired by [Ultracube](https://mods.factorio.com/mod/Ultracube). Instead of mining and expanding, players serve customers to earn coins — the only way to acquire resources. The goal: what can we do with existing Factorio mechanics that requires a completely new factory design?

## Design Philosophy

- **No ores, no electricity** — all resource generation and electric infrastructure are removed
- **Customers are the economy** — they arrive as spoiling items, request goods, pay in coins
- **Optimize, don't expand** — the coin bottleneck and customer spoilage (10s) reward efficiency over scale
- **Vanilla mechanics only** — uses Factorio 2.1's spoilage, `shared_probability`, and `independent_probability` features
- **Restaurant-tycoon mechanics, not theme** — we borrow the serve-customers-under-pressure loop, not the restaurant setting

## Scope

- **Base game only — no Space Age** — the mod targets vanilla Factorio 2.1 and does not use, depend on, or support the Space Age expansion. No Space Age prototypes, items, planets, or quality mechanics. `src/info.json` depends on `base` only.
- **No mod compatibility** — the mod is not intended to work alongside other mods and makes no effort to support them. It removes ores and electricity wholesale, so most other mods will break; that is expected and acceptable. Never add compatibility shims, soft dependencies, or conditional handling for other mods.

See [docs/game-design.md](docs/game-design.md) for full design rationale and Ultracube comparison.

## Project Structure

- `src/` — The mod source (symlinked into Factorio mods folder)
  - `data.lua` — Entry point, requires all services
  - `control.lua` — Runtime: enforces the single-Entrance limit (the mod's only control-stage code)
  - `services/recipes.lua` — Core: customer types, delivery recipes, coin economy
  - `services/remove_ore.lua` — Strips all ore/resource generation
  - `services/remove_electricity.lua` — Removes electric infrastructure, converts energy sources to void
  - `graphics/icons/` — Custom sprites
  - `locale/en/` — Translations
- `tools/` — Dev scripts: `creat-link.ps1` (symlink), `run-dev.ps1` (launch), `run-headless.ps1` (headless validation), `factorio-docs-to-md.py` (API docs → markdown)
- `factorio-data/` — Base game prototype data. **Read-only reference. Do not modify.**
- `factorio-docs/markdown/` — Factorio 2.1.14 API reference in markdown. **Generated. Do not edit by hand.**
- `docs/` — Detailed documentation

## API Reference

`factorio-docs/markdown/` holds the full Factorio 2.1.14 API (1880 files, ~9 MB), generated from the
official API dump by `tools/factorio-docs-to-md.py`.

**It is far too large to read in full — navigate it, never load it:**

1. If you know the exact name, open the file directly: `factorio-docs/markdown/prototypes/SegmentedUnitPrototype.md`.
2. Otherwise grep the relevant `index.md`, then open the single file you need.

| Looking for | Go to |
| --- | --- |
| A prototype definition (data stage) | `prototypes/index.md` |
| A property type (`Sound`, `IconData`, ...) | `types/index.md` |
| A runtime `Lua*` class (control stage) | `classes/index.md` |
| Runtime concepts / events | `concepts/index.md`, `events/index.md` |
| `defines.*` enums | `defines/defines.md` |
| Prose guides (data lifecycle, mod structure, migrations) | `auxiliary/` |

To regenerate (e.g. after a Factorio update), re-download the docs bundle into `factorio-docs/html/`
(gitignored) and run `python tools/factorio-docs-to-md.py --clean`. It verifies its own output and
fails on any broken internal link.

## Key Conventions

### Adding a New Customer Type

Add an entry to the `customers` table in `services/recipes.lua`. Each entry needs:
- `item_to_deliver` — vanilla item name the customer wants
- `amount` — how many items to deliver
- `cost` — guaranteed coin reward
- `reward` / `reward_percentage` — optional bonus coins with probability
- `new_customers` — list of `{item, chance}` pairs. **Chances must sum to exactly 1.0** (asserted at load)

The loop at the bottom auto-generates the customer item, delivery recipe, and icons.

### Adding a Coin-Purchasable Resource

Add an entry to the `resources` table in `services/recipes.lua` with `item`, `price`, and `type`.

## Rules

- **Never modify `factorio-data/`** — it's base game reference data
- **Never re-add ores or electricity** — the entire mod design depends on their absence
- **Customer spawn probabilities must sum to 1.0** — there's a runtime assertion; breaking it crashes the game
- **Only one Entrance may exist** — it's the sole source of customers, so its count is what bounds the whole economy. `src/control.lua` refuses extra placements. Retune throughput via `energy_required` on `customer-new` or the Entrance's `crafting_speed`, never by allowing more buildings
- **Mod internal name is `tycoon`** — referenced in paths, icon prefixes (`__tycoon__`), and the symlink
- **Target Factorio version: 2.1** — uses features not available in earlier versions
- **Never depend on Space Age** — base game only; don't reference Space Age prototypes or add it to `dependencies`
- **Never add mod-compatibility code** — no soft dependencies, no `if mods["..."]` branches, no shims for other mods
- **Always validate after changes** — run `.\tools\run-headless.ps1` after any mod file change to catch prototype errors before committing

## Dev Setup

See [docs/dev-setup.md](docs/dev-setup.md). Quick start:
1. `.\tools\creat-link.ps1` — symlink `src/` into Factorio mods
2. `.\tools\run-dev.ps1` — launch Factorio with dev save

## Further Reading

- [docs/game-design.md](docs/game-design.md) — Vision, Ultracube inspiration, design principles
- [docs/customer-system.md](docs/customer-system.md) — Full customer/coin economy spec with probability trees
- [docs/dev-setup.md](docs/dev-setup.md) — Environment setup, project structure, testing workflow
