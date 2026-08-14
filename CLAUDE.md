# Tycoon — Factorio 2.1 Total Overhaul Mod

A constraint-based overhaul mod inspired by [Ultracube](https://mods.factorio.com/mod/Ultracube). Instead of mining and expanding, players serve customers to earn money — the only way to acquire resources. The goal: what can we do with existing Factorio mechanics that requires a completely new factory design?

## Design Philosophy

- **No ores, no electricity** — all resource generation and electric infrastructure are removed
- **Customers are the economy** — they arrive as spoiling items, request goods, pay in currency
- **Money is science** — the science packs are re-skinned into currency denominations, so research is literally what you spend profit on
- **Optimize, don't expand** — the money bottleneck and customer spoilage reward efficiency over scale
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
  - `services/recipes.lua` — Core: customer types, delivery recipes, the payout economy
  - `services/currency.lua` — Re-skins the seven science packs into currency denominations; also the module the rest of the mod asks for currency item names
  - `services/remove_ore.lua` — Strips all ore/resource generation
  - `services/remove_electricity.lua` — Removes electric infrastructure, converts energy sources to void
  - `graphics/icons/` — Custom sprites. **Generated from `art/icons/` — edit the SVG, not the PNG.**
  - `locale/en/` — Translations
- `art/icons/` — Editable SVG sources for the custom sprites. Kept out of `src/` so only shipped assets are symlinked into the mods folder
- `tools/` — Dev scripts: `creat-link.ps1` (symlink), `run-dev.ps1` (launch), `run-headless.ps1` (headless validation), `find-missing-locale.py` (untranslated prototypes), `factorio-docs-to-md.py` (API docs → markdown), `svg-to-png.py` (icon SVG → PNG)
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
- `cost` — guaranteed payout, in Pennies
- `reward` / `reward_percentage` — optional bonus Pennies with probability
- `spoils_into` — optional bare item name of what this one decays into when its timer runs out (asserted at load). Either another customer type, or a **terminal token** from the `terminal_tokens` set — currently just `ghost`, which is not a customer and gets no delivery recipe
- `new_customers` — list of `{item, chance}` pairs. **Chances must sum to exactly 1.0** (asserted at load)

The loop at the bottom auto-generates the customer item, delivery recipe, and icons. It does **not**
generate locale, so add `item-name.customer_<item>` and `recipe-name.customer_<item>_deliver` to
`src/locale/en/hello-world.cfg` and run `python tools/find-missing-locale.py` to confirm nothing else
is untranslated.

### Adding or Editing an Icon

Edit the SVG in `art/icons/`, then run `python tools/svg-to-png.py --all` to regenerate
`src/graphics/icons/`. Needs `pip install -r tools/requirements.txt` once. Never hand-edit the PNGs —
they are build output and get overwritten.

### Adding a Purchasable Resource

Add an entry to the `resources` table in `services/recipes.lua` with `item`, `amount`, `price`, and
`currency` (a field from the `currency` module, e.g. `currency.penny`).

### Currency

Money is not a separate item set: `services/currency.lua` **re-skins the seven vanilla science packs
in place** into a denomination ladder, so every technology's existing `unit.ingredients` becomes its
price and the lab is where profit is spent.

| Prototype | Denomination |
| --- | --- |
| `automation-science-pack` | Penny (replaced the base game `coin`) |
| `logistic-science-pack` | Silver Coin |
| `military-science-pack` | War Chest |
| `chemical-science-pack` | Banknote |
| `production-science-pack` | Bond |
| `utility-science-pack` | Gold Bar |
| `space-science-pack` | Diamond |

Never spell those prototype names out elsewhere — `require("services.currency")` returns a
`{ penny = "automation-science-pack", ... }` map, and everything else asks it by denomination.

## Rules

- **Never modify `factorio-data/`** — it's base game reference data
- **Never re-add ores or electricity** — the entire mod design depends on their absence
- **Customer spawn probabilities must sum to 1.0** — there's a runtime assertion; breaking it crashes the game
- **Only one Entrance may exist** — it's the sole source of customers, so its count is what bounds the whole economy. `src/control.lua` refuses extra placements. Retune throughput via `energy_required` on `customer-new` or the Entrance's `crafting_speed`, never by allowing more buildings
- **Money is earned, never crafted** — the science pack recipes are deleted, not hidden, because red and green are craftable from purchased plates and would let the factory print its own money. Never restore a recipe that produces a currency item, and never add an exchange recipe between denominations: what a customer pays is what gates the tier of research you can afford
- **Ghosts are a permanent dead end** — `customer_ghost` has no spoil timer and no recipe, on purpose. It piles up forever, and one spoiling inside a machine's ingredient slot jams that machine for good. That hazard is the challenge; never add a spoil timer, disposal recipe, or any other way to get rid of ghosts
- **Mod internal name is `tycoon`** — referenced in paths, icon prefixes (`__tycoon__`), and the symlink
- **Target Factorio version: 2.1** — uses features not available in earlier versions
- **Never depend on Space Age** — base game only; don't reference Space Age prototypes or add it to `dependencies`
- **Never add mod-compatibility code** — no soft dependencies, no `if mods["..."]` branches, no shims for other mods
- **Always validate after changes** — run `.\tools\run-headless.ps1` after any mod file change to catch prototype errors before committing, and `python tools\find-missing-locale.py` after adding or renaming any prototype
- **Leave the locale report empty** — `find-missing-locale.py` must print only its `OK:` line, advisories included. Clear every entry one of two ways: write the description in `src/locale/en/hello-world.cfg`, or, when the name already says everything, paste the reported line into `INTENTIONALLY_UNDESCRIBED` in `tools/find-missing-locale.py` under the comment group that explains why (`*` globs, for prototypes generated in a loop). Never suppress a missing *name* — those render as `Unknown key` in game. See [docs/dev-setup.md](docs/dev-setup.md#the-report-must-come-back-empty)
- **Leave the VSCode Problems panel empty** — zero entries, so the next one that appears is worth reading. Fix the code, or, when the bundled Factorio type definitions are wrong (they mark optional fields required — check `factorio-docs/markdown/types/` and vanilla's own usage before believing a warning), suppress that one line with `---@diagnostic disable-next-line: <code>` and a comment saying why. Never disable a rule file-wide or workspace-wide. See [docs/dev-setup.md](docs/dev-setup.md#the-problems-panel-must-stay-empty)

## Dev Setup

See [docs/dev-setup.md](docs/dev-setup.md). Quick start:
1. `.\tools\creat-link.ps1` — symlink `src/` into Factorio mods
2. `.\tools\run-dev.ps1` — launch Factorio with dev save

## Further Reading

- [docs/game-design.md](docs/game-design.md) — Vision, Ultracube inspiration, design principles
- [docs/customer-system.md](docs/customer-system.md) — Full customer/currency economy spec with probability trees
- [docs/dev-setup.md](docs/dev-setup.md) — Environment setup, project structure, testing workflow
